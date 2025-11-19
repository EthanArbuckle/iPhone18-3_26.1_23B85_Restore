__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ActionEventData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for ActionEventData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void type metadata completion function for ActionDefinition(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  type metadata accessor for ActionEventDefinition();
  type metadata accessor for Array();
  type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v4 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for OpaquePointer?);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ActionDefinition(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if (v6 > 0x7FFFFFFE)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      if ((v19 + 1) >= 2)
      {
        return v19;
      }

      else
      {
        return 0;
      }
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for ActionDefinition(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 > 0x7FFFFFFE)
  {
    v19 = ((a1 + v10 + 8) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 8) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *a1 = a2;
  }
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t getEnumTagSinglePayload for AnyActionAnimation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 144);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnyActionAnimation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 specialized ActionEventData.init(eventID:coreData:typeName:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5), (v14 & 1) != 0))
  {
    v15 = *(v12 + 56) + 56 * v13;
    v20 = *(v15 + 16);
    v21 = *v15;
    v16 = *(v15 + 32);
    v17 = *(v15 + 40);
    v18 = *(v15 + 48);
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v20 = 0u;
    v21 = 0u;
  }

  swift_endAccess();
  *a6 = a1;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  result = v21;
  *(a6 + 40) = v20;
  *(a6 + 24) = v21;
  *(a6 + 56) = v16;
  *(a6 + 64) = v17;
  *(a6 + 72) = v18;
  return result;
}

uint64_t partial apply for creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  return creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 32), *(v9 + 40), a7, a8, a9);
}

uint64_t _s10RealityKit27AnimationPlaybackControllerC0A10Foundation15ActionEventDataVSbS2dAA8__EngineCSVAA6EntityCSgAD0G15HandlerProtocol_pSgIeggyyyygygr_AcFSbS2dAHSVAkMIegnnnnnnnnr_TRTA_0(uint64_t *a1, _OWORD *a2, unsigned __int8 *a3, double *a4, double *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  v11 = *a1;
  v12 = a2[3];
  v15[2] = a2[2];
  v15[3] = v12;
  v15[4] = a2[4];
  v13 = a2[1];
  v15[0] = *a2;
  v15[1] = v13;
  return v9(v11, v15, *a3, *a6, *a7, *a8, *a4, *a5);
}

uint64_t outlined init with copy of ActionHandlerProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ActionHandlerProtocol?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized static __RKVisibilityHidePopAnimation.createVisibilityHidePopAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:)(float32x4_t *a1, double a2, float a3, float32x4_t a4, uint64_t a5, _BYTE *a6, char a7)
{
  v59 = a1[1];
  if (*a6)
  {
    if (*a6 == 1)
    {
      v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 73, 0, MEMORY[0x1E69E7CC0]);
      v9 = &outlined read-only object #1 of static __RKVisibilityHidePopAnimation.createVisibilityHidePopAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }

    else
    {
      v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 117, 0, MEMORY[0x1E69E7CC0]);
      v9 = &outlined read-only object #2 of static __RKVisibilityHidePopAnimation.createVisibilityHidePopAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }
  }

  else
  {
    v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 151, 0, MEMORY[0x1E69E7CC0]);
    v9 = &outlined read-only object #0 of static __RKVisibilityHidePopAnimation.createVisibilityHidePopAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
  }

  __makeXfos(_:_:)(v9, &v61);
  rawValue = v61._rawValue;
  if (!*(v61._rawValue + 2))
  {

    return MEMORY[0x1E69E7CC0];
  }

  RESampledAnimationDefaultParameters();
  v11 = rawValue[1].u64[0];
  if (v11)
  {
    v12 = &rawValue[3 * v11];
    v57 = *v12;
    v58 = *(v12 - 1);
    v56 = v12[1];
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

  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 + 1, 1, rawValue);
LABEL_9:
  a7 &= 1u;
  v11 = rawValue[1].u64[0];
  v14 = rawValue[1].u64[1];
  v15 = v11 + 1;
  if (v11 >= v14 >> 1)
  {
    v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v11 + 1, 1, rawValue);
    v15 = v11 + 1;
    rawValue = v55;
  }

  rawValue[1].i64[0] = v15;
  f32 = rawValue[3 * v11 + 2].f32;
  *f32 = v58;
  f32[1] = v57;
  f32[2] = v56;
  v61._rawValue = rawValue;
  v17 = 0.0;
  v18 = 4;
  v19 = v15;
  do
  {
    v20 = rawValue[v18];
    v21 = fabsf(v20.f32[0]);
    if ((LODWORD(v21) & 0x7FFFFF) != 0)
    {
      v22 = v17;
    }

    else
    {
      v22 = v21;
    }

    if ((~LODWORD(v21) & 0x7F800000) != 0)
    {
      v22 = v21;
    }

    if (v21 >= v17)
    {
      v17 = v22;
    }

    v23 = fabsf(v20.f32[1]);
    if (v23 >= v17)
    {
      if ((LODWORD(v23) & 0x7FFFFF) == 0)
      {
        v17 = v23;
      }

      if ((~LODWORD(v23) & 0x7F800000) != 0)
      {
        v17 = v23;
      }
    }

    v24 = fabsf(v20.f32[2]);
    if (v24 >= v17)
    {
      if ((~LODWORD(v24) & 0x7F800000) != 0)
      {
        v17 = v24;
      }

      else if ((LODWORD(v24) & 0x7FFFFF) == 0)
      {
        v17 = v24;
      }
    }

    v18 += 3;
    --v19;
  }

  while (v19);
  v25 = 0;
  v26 = a3 / v17;
  v27 = v17 <= 0.0;
  v28 = 1.0;
  if (!v27)
  {
    v28 = v26;
  }

  v29 = vmulq_f32(v59, v59);
  *v29.i8 = vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
  v29.i32[0] = vadd_f32(*v29.i8, vdup_lane_s32(*v29.i8, 1)).u32[0];
  v30 = vrecpe_f32(v29.u32[0]);
  v31 = vmul_f32(v30, vrecps_f32(v29.u32[0], v30));
  v32 = vmulq_n_f32(vmulq_f32(v59, xmmword_1C1899C90), vmul_f32(v31, vrecps_f32(v29.u32[0], v31)).f32[0]);
  v33 = vnegq_f32(a4);
  v34 = vtrn2q_s32(a4, vtrn1q_s32(a4, v33));
  v35 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a4, v33, 8uLL), *v32.f32, 1), vextq_s8(v34, v34, 8uLL), v32.f32[0]);
  v36 = vrev64q_s32(a4);
  v36.i32[0] = v33.i32[1];
  v36.i32[3] = v33.i32[2];
  v37 = vaddq_f32(v35, vmlaq_laneq_f32(vmulq_laneq_f32(a4, v32, 3), v36, v32, 2));
  v38 = vmulq_f32(v37, xmmword_1C1899C90);
  v39 = vnegq_f32(v38);
  v40 = vtrn2q_s32(v38, vtrn1q_s32(v38, v39));
  v41 = vextq_s8(v40, v40, 8uLL);
  v42 = vextq_s8(v38, v39, 8uLL);
  v43 = vrev64q_s32(v38);
  v43.i32[0] = v39.i32[1];
  v43.i32[3] = v39.i32[2];
  v44 = vdupq_lane_s32(*v37.f32, 0);
  v45 = vdupq_laneq_s32(v37, 2);
  v46 = 4;
  do
  {
    if (v25 > v11)
    {
      __break(1u);
      goto LABEL_40;
    }

    v47 = vsubq_f32(rawValue[v46], rawValue[4]);
    v48 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v42, vmuls_lane_f32(v28, *v47.f32, 1)), v41, v28 * v47.f32[0]), v43, vmuls_lane_f32(v28, v47, 2));
    v49 = vnegq_f32(v48);
    v50 = vtrn2q_s32(v48, vtrn1q_s32(v48, v49));
    v51 = vrev64q_s32(v48);
    v51.i32[0] = v49.i32[1];
    v51.i32[3] = v49.i32[2];
    v52 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v48, v37, 3), v51, v45), vmlaq_f32(vmulq_lane_f32(vextq_s8(v48, v49, 8uLL), *v37.f32, 1), vextq_s8(v50, v50, 8uLL), v44));
    v52.i32[3] = v13;
    ++v25;
    rawValue[v46] = v52;
    v46 += 3;
  }

  while (v11 + 1 != v25);
  result = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
  if (result)
  {
    v54 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1887600;
    *(result + 32) = v54;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AudioMixGroup.init(_name:id:gain:speed:isMuted:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v12 = result;
  if (a4)
  {
    result = REAudioMixGroupsComponentCreateMixGroupID();
    a3 = result;
  }

  *a6 = a3;
  *(a6 + 8) = 0;
  *(a6 + 16) = 1;
  *(a6 + 24) = 0;
  *(a6 + 32) = 1;
  *(a6 + 40) = v12;
  *(a6 + 48) = a2;
  *(a6 + 56) = a7;
  *(a6 + 64) = a8;
  *(a6 + 72) = a5 & 1;
  return result;
}

uint64_t AudioMixGroup.name.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t AudioMixGroup.gain.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*result + 33) = 1;
  }

  return result;
}

double AudioMixGroup.init(name:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = REAudioMixGroupsComponentCreateMixGroupID();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;
  result = 0.0;
  *(a3 + 56) = xmmword_1C18B1340;
  *(a3 + 72) = 0;
  return result;
}

Swift::Void __swiftcall AudioMixGroup.fade(to:duration:)(Swift::Double to, Swift::Double duration)
{
  *(v2 + 8) = to;
  *(v2 + 16) = 0;
  *(v2 + 24) = duration;
  *(v2 + 32) = 0;
}

uint64_t static AudioMixGroup.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  v4 = *(a1 + 72);
  v6 = *(a2 + 56);
  v5 = *(a2 + 64);
  v7 = *(a2 + 72);
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    if (v3 != v6 || v2 != v5)
    {
      return 0;
    }

    return v4 ^ v7 ^ 1u;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v9 & 1) != 0 && v3 == v6 && v2 == v5)
  {
    return v4 ^ v7 ^ 1u;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AudioMixGroup(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  v4 = *(a1 + 72);
  v6 = *(a2 + 56);
  v5 = *(a2 + 64);
  v7 = *(a2 + 72);
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    if (v3 != v6 || v2 != v5)
    {
      return 0;
    }

    return v4 ^ v7 ^ 1u;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v9 & 1) != 0 && v3 == v6 && v2 == v5)
  {
    return v4 ^ v7 ^ 1u;
  }

  return result;
}

void AudioMixGroup.hash(into:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  String.hash(into:)();
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1C68F4C50](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x1C68F4C50](*&v7);
  Hasher._combine(_:)(v5);
}

Swift::Int AudioMixGroup.hashValue.getter()
{
  Hasher.init(_seed:)();
  AudioMixGroup.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AudioMixGroup()
{
  Hasher.init(_seed:)();
  AudioMixGroup.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioMixGroup()
{
  Hasher.init(_seed:)();
  AudioMixGroup.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AudioMixGroup.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21[-v8];
  v10 = v0[1];
  v11 = v0[3];
  v27 = v0[2];
  *v28 = v11;
  *&v28[9] = *(v0 + 57);
  v12 = v0[1];
  v26[0] = *v0;
  v26[1] = v12;
  v13 = v0[3];
  v24 = v27;
  v25[0] = v13;
  *(v25 + 9) = *(v0 + 57);
  v22 = v26[0];
  v23 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C189FFC0;
  v15 = *&v28[16];
  *(v14 + 96) = *&v28[8];
  *(v14 + 32) = 1701667182;
  *(v14 + 40) = 0xE400000000000000;
  v16 = *v28;
  v17 = MEMORY[0x1E69E6158];
  *(v14 + 48) = *(&v27 + 1);
  *(v14 + 56) = v16;
  *(v14 + 72) = v17;
  *(v14 + 80) = 1852399975;
  *(v14 + 88) = 0xE400000000000000;
  v18 = MEMORY[0x1E69E63B0];
  *(v14 + 120) = MEMORY[0x1E69E63B0];
  *(v14 + 128) = 0x6465657073;
  *(v14 + 136) = 0xE500000000000000;
  *(v14 + 144) = v15;
  *(v14 + 168) = v18;
  *(v14 + 176) = 0x646574754D7369;
  *(v14 + 184) = 0xE700000000000000;
  LOBYTE(v18) = v28[24];
  *(v14 + 216) = MEMORY[0x1E69E6370];
  *(v14 + 192) = v18;
  v19 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);
  outlined init with copy of AudioMixGroup(v26, v21);
  outlined init with copy of AudioMixGroup(v26, v21);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

unint64_t lazy protocol witness table accessor for type AudioMixGroup and conformance AudioMixGroup()
{
  result = lazy protocol witness table cache variable for type AudioMixGroup and conformance AudioMixGroup;
  if (!lazy protocol witness table cache variable for type AudioMixGroup and conformance AudioMixGroup)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioMixGroup and conformance AudioMixGroup);
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

uint64_t getEnumTagSinglePayload for AudioMixGroup(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioMixGroup(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double DockingRegionComponent.width.setter(float32_t a1)
{
  v1[2].f32[0] = a1;
  REAABBInit();
  *v1 = v2;
  v1[1] = v3;
  *&result = vsubq_f32(v3, v2).u64[0];
  v1[2].i32[0] = LODWORD(result);
  return result;
}

double DockingRegionComponent.setBounds()()
{
  v1 = v0[2].f32[0] * 0.5;
  REAABBInit();
  *v0 = v2;
  v0[1] = v3;
  *&result = vsubq_f32(v3, v2).u64[0];
  v0[2].i32[0] = LODWORD(result);
  return result;
}

uint64_t (*DockingRegionComponent.width.modify(uint64_t a1))(_DWORD *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32);
  return DockingRegionComponent.width.modify;
}

uint64_t DockingRegionComponent.width.modify(_DWORD *a1)
{
  v1 = *a1;
  *(*a1 + 32) = a1[2];
  result = REAABBInit();
  *v1 = v3;
  v1[1] = v4;
  v1[2].i32[0] = vsubq_f32(v4, v3).u32[0];
  return result;
}

uint64_t DockingRegionComponent.init()@<X0>(uint64_t a1@<X8>)
{
  result = REAABBEmpty();
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = 0;
  return result;
}

uint64_t protocol witness for static Component.__fromCore(_:) in conformance DockingRegionComponent@<X0>(uint64_t *a1@<X0>, float32x4_t *a2@<X8>)
{
  v3 = *a1;
  REAABBEmpty();
  result = REDockingRegionComponentGetBounds();
  *a2 = v5;
  a2[1] = v6;
  a2[2].i32[0] = vsubq_f32(v6, v5).u32[0];
  return result;
}

uint64_t static DockingRegionComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, float32x4_t *a2@<X8>)
{
  v3 = *a1;
  REAABBEmpty();
  result = REDockingRegionComponentGetBounds();
  *a2 = v5;
  a2[1] = v6;
  a2[2].i32[0] = vsubq_f32(v6, v5).u32[0];
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance DockingRegionComponent(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v1[1];
  REDockingRegionComponentSetBounds();

  return RENetworkMarkComponentDirty();
}

uint64_t DockingRegionComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v1[1];
  REDockingRegionComponentSetBounds();

  return RENetworkMarkComponentDirty();
}

uint64_t DockingRegionComponent.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v15 - v8;
  v10 = *(v0 + 16);
  v11 = *(v0 + 32);
  v15[0] = *v0;
  v15[1] = v10;
  v16 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C1887600;
  *(v12 + 32) = 0x6874646977;
  *(v12 + 40) = 0xE500000000000000;
  *(v12 + 72) = MEMORY[0x1E69E6448];
  *(v12 + 48) = v11;
  v13 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance DockingRegionComponent()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v15 - v8;
  v10 = *(v0 + 16);
  v11 = *(v0 + 32);
  v15[0] = *v0;
  v15[1] = v10;
  v16 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C1887600;
  *(v12 + 32) = 0x6874646977;
  *(v12 + 40) = 0xE500000000000000;
  *(v12 + 72) = MEMORY[0x1E69E6448];
  *(v12 + 48) = v11;
  v13 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

__n128 __swift_memcpy36_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DockingRegionComponent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 36))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DockingRegionComponent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 36) = v3;
  return result;
}

uint64_t __RKEntityGlobalTapTrigger.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 18) = 0;
  return result;
}

uint64_t __RKEntityGlobalTapTrigger.matches(with:)()
{
  type metadata accessor for __RKEntityGlobalTapTrigger();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  type metadata accessor for __RKEntityTriggerGroup();
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  swift_beginAccess();
  v3 = *(v2 + 24);
  if (v3 >> 62)
  {
LABEL_20:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v0 = v4 != v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1C68F41F0](v5, v3);
      if (__OFADD__(v5, 1))
      {
LABEL_15:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_20;
      }

      v6 = *(v3 + 8 * v5 + 32);

      if (__OFADD__(v5, 1))
      {
        goto LABEL_15;
      }
    }

    v7 = __RKEntityGlobalTapTrigger.matches(with:)(v6);

    ++v5;
  }

  while ((v7 & 1) == 0);

  return v0;
}

uint64_t __RKEntityTapPointTrigger.matches(with:)()
{
  type metadata accessor for __RKEntityTapPointTrigger();
  v1 = swift_dynamicCastClass();
  if (v1 && vabdd_f64(*(v1 + 24), v0[3]) <= v0[5] && vabdd_f64(*(v1 + 32), v0[4]) <= v0[6])
  {
    return 1;
  }

  type metadata accessor for __RKEntityTriggerGroup();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  if (v4 >> 62)
  {
LABEL_22:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v5 != v6;
    if (v5 == v6)
    {
      break;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C68F41F0](v6, v4);
      if (__OFADD__(v6, 1))
      {
LABEL_16:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

      v8 = *(v4 + 8 * v6 + 32);

      if (__OFADD__(v6, 1))
      {
        goto LABEL_16;
      }
    }

    v9 = __RKEntityTapPointTrigger.matches(with:)(v8);

    ++v6;
  }

  while ((v9 & 1) == 0);

  return v7;
}

__n128 __RKEntityTapPointTrigger.copy(with:)@<Q0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for __RKEntityTapPointTrigger();
  v4 = swift_allocObject();
  result = *(v1 + 24);
  *(v4 + 40) = *(v1 + 40);
  *(v4 + 24) = result;
  *(v4 + 16) = 0;
  *(v4 + 18) = 0;
  a1[3] = v3;
  *a1 = v4;
  return result;
}

uint64_t __RKEntityTapTrigger.targetEntity.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t __RKEntityTapTrigger.__allocating_init(targetEntity:reversible:)(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_beginAccess();
  *(v5 + 24) = a1;
  *(v5 + 16) = 0;
  *(v5 + 18) = 0;
  if (v4 != 2)
  {
    swift_beginAccess();
    *(v5 + 16) = a2 & 1;
  }

  return v5;
}

uint64_t __RKEntityTapTrigger.init(targetEntity:reversible:)(uint64_t a1, unsigned __int8 a2)
{
  v5 = a2;
  *(v2 + 24) = 0;
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 16) = 0;
  *(v2 + 18) = 0;
  if (v5 != 2)
  {
    swift_beginAccess();
    *(v2 + 16) = a2 & 1;
  }

  return v2;
}

uint64_t __RKEntityTapTrigger.matches(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v60 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v56 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v56 - v18;
  v63 = v1;
  v66 = 91;
  v67 = 0xE100000000000000;
  v64 = 0;
  v65 = 0xE000000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](v64, v65);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v19 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v19);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v20 = v66;
  v21 = v67;
  type metadata accessor for __RKEntityTapTrigger();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    v66 = v20;
    v67 = v21;
    v30 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v30, &v66);
    goto LABEL_16;
  }

  v23 = v22;
  v66 = v20;
  v67 = v21;

  v24 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v24, &v66);
  v66 = v20;
  v67 = v21;
  v25 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v25, &v66, partial apply for implicit closure #2 in __RKEntityTapTrigger.matches(with:), v2);
  v66 = v20;
  v67 = v21;
  v26 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v26, &v66, partial apply for implicit closure #4 in __RKEntityTapTrigger.matches(with:), v2);
  v66 = v20;
  v67 = v21;
  v27 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v27, &v66, partial apply for implicit closure #6 in __RKEntityTapTrigger.matches(with:), v23);
  v58 = v20;
  v66 = v20;
  v67 = v21;
  v28 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v28, &v66, partial apply for implicit closure #8 in __RKEntityTapTrigger.matches(with:), v23);
  swift_beginAccess();
  if (*(v2 + 24))
  {
    v29 = *(v2 + 24);

    Entity.__interactionIdentifier.getter(v62);
  }

  else
  {
    (*(v5 + 56))(v62, 1, 1, v4);
  }

  v57 = v21;
  swift_beginAccess();
  v31 = *(v23 + 24);
  v59 = a1;
  v32 = v11;
  if (v31)
  {

    v33 = v61;
    Entity.__interactionIdentifier.getter(v61);

    v34 = v4;
  }

  else
  {
    v33 = v61;
    v34 = v4;
    (*(v5 + 56))(v61, 1, 1, v4);
  }

  v35 = *(v8 + 48);
  v36 = v62;
  outlined init with copy of UUID?(v62, v32);
  outlined init with copy of UUID?(v33, v32 + v35);
  v37 = *(v5 + 48);
  if (v37(v32, 1, v34) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v33, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of BodyTrackingComponent?(v36, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v37(v32 + v35, 1, v34) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v32, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v20 = v58;
      goto LABEL_31;
    }
  }

  else
  {
    v38 = v5;
    v39 = v60;
    outlined init with copy of UUID?(v32, v60);
    if (v37(v32 + v35, 1, v34) != 1)
    {
      v49 = *(v38 + 32);
      v50 = v32 + v35;
      v51 = v38;
      v52 = v56;
      v49(v56, v50, v34);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v53 = dispatch thunk of static Equatable.== infix(_:_:)();
      v54 = *(v51 + 8);
      v54(v52, v34);
      outlined destroy of BodyTrackingComponent?(v61, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of BodyTrackingComponent?(v62, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v54(v39, v34);
      outlined destroy of BodyTrackingComponent?(v32, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v20 = v58;
      if (v53)
      {
LABEL_31:
        v66 = v20;
        v67 = v57;
        v55 = static os_log_type_t.info.getter();
        specialized InteractionsLogger.log(_:_:)(v55, &v66);

        return 1;
      }

      goto LABEL_15;
    }

    outlined destroy of BodyTrackingComponent?(v61, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of BodyTrackingComponent?(v62, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v38 + 8))(v39, v34);
  }

  outlined destroy of BodyTrackingComponent?(v32, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v20 = v58;
LABEL_15:
  v21 = v57;
  v66 = v20;
  v67 = v57;
  v40 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v40, &v66);

LABEL_16:
  v66 = v20;
  v67 = v21;
  v41 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v41, &v66);

  type metadata accessor for __RKEntityTriggerGroup();
  result = swift_dynamicCastClass();
  if (result)
  {
    v43 = result;
    swift_beginAccess();
    v44 = *(v43 + 24);
    if (v44 >> 62)
    {
LABEL_35:
      v45 = __CocoaSet.count.getter();
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v45 != i; ++i)
    {
      if ((v44 & 0xC000000000000001) != 0)
      {
        v47 = MEMORY[0x1C68F41F0](i, v44);
        if (__OFADD__(i, 1))
        {
LABEL_28:
          __break(1u);
          break;
        }
      }

      else
      {
        if (i >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_35;
        }

        v47 = *(v44 + 8 * i + 32);

        if (__OFADD__(i, 1))
        {
          goto LABEL_28;
        }
      }

      v48 = __RKEntityTapTrigger.matches(with:)(v47);

      if (v48)
      {

        return 1;
      }
    }

    return 0;
  }

  return result;
}

unint64_t implicit closure #2 in __RKEntityTapTrigger.matches(with:)(uint64_t a1)
{
  _StringGuts.grow(_:)(22);

  swift_beginAccess();
  if (*(a1 + 24))
  {
    _print_unlocked<A, B>(_:_:)();
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x1C68F3410](v2, v3);

  return 0xD000000000000014;
}

unint64_t implicit closure #4 in __RKEntityTapTrigger.matches(with:)(uint64_t a1)
{
  v2 = 7104878;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  v20[1] = 0;
  v20[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v21 = 0xD00000000000001DLL;
  v22 = 0x80000001C18E6970;
  swift_beginAccess();
  if (*(a1 + 24))
  {
    v15 = *(a1 + 24);

    Entity.__interactionIdentifier.getter(v14);

    outlined init with copy of UUID?(v14, v11);
    if ((*(v4 + 48))(v11, 1, v3) == 1)
    {
      v16 = 0xE300000000000000;
    }

    else
    {
      v17 = (*(v4 + 32))(v7, v11, v3);
      v2 = MEMORY[0x1C68F24B0](v17);
      v16 = v18;
      (*(v4 + 8))(v7, v3);
    }

    outlined destroy of BodyTrackingComponent?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v16 = 0xE300000000000000;
  }

  MEMORY[0x1C68F3410](v2, v16);

  return v21;
}

unint64_t implicit closure #6 in __RKEntityTapTrigger.matches(with:)(uint64_t a1)
{
  _StringGuts.grow(_:)(24);

  swift_beginAccess();
  if (*(a1 + 24))
  {
    _print_unlocked<A, B>(_:_:)();
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x1C68F3410](v2, v3);

  return 0xD000000000000016;
}

unint64_t implicit closure #8 in __RKEntityTapTrigger.matches(with:)(uint64_t a1)
{
  v2 = 7104878;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  v20[1] = 0;
  v20[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v21 = 0xD00000000000001FLL;
  v22 = 0x80000001C18E6930;
  swift_beginAccess();
  if (*(a1 + 24))
  {
    v15 = *(a1 + 24);

    Entity.__interactionIdentifier.getter(v14);

    outlined init with copy of UUID?(v14, v11);
    if ((*(v4 + 48))(v11, 1, v3) == 1)
    {
      v16 = 0xE300000000000000;
    }

    else
    {
      v17 = (*(v4 + 32))(v7, v11, v3);
      v2 = MEMORY[0x1C68F24B0](v17);
      v16 = v18;
      (*(v4 + 8))(v7, v3);
    }

    outlined destroy of BodyTrackingComponent?(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v16 = 0xE300000000000000;
  }

  MEMORY[0x1C68F3410](v2, v16);

  return v21;
}

uint64_t __RKEntityTapTrigger.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = type metadata accessor for __RKEntityTapTrigger();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_beginAccess();
  *(v6 + 24) = v3;
  *(v6 + 16) = 0;
  *(v6 + 18) = 0;
  swift_beginAccess();
  *(v6 + 16) = v4;
  a1[3] = v5;
  *a1 = v6;
}

uint64_t __RKEntityTapTrigger.clone(matching:newEntity:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (!v5 || *(v5 + 16) != *(a1 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v7 = *(v2 + 16);
  type metadata accessor for __RKEntityTapTrigger();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  swift_beginAccess();
  *(v8 + 24) = a2;
  *(v8 + 16) = 0;
  *(v8 + 18) = 0;
  swift_beginAccess();
  *(v8 + 16) = v7;

  return v8;
}

uint64_t __RKEntityTapTrigger.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t __RKEntityTapTrigger.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t specialized HasTransform.position.setter(__n128 a1)
{
  v2 = v1;
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v1, v10);
  if ((v11 & 1) == 0)
  {
    v3 = v10[0];
    v4 = v10[1];
    v5 = v10[2];
    v6 = v10[3];
    goto LABEL_5;
  }

  if (one-time initialization token for identity != -1)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v4 = *(&static Transform.identity + 1);
    v3 = static Transform.identity;
    v6 = *(&xmmword_1EBEB2BB0 + 1);
    v5 = xmmword_1EBEB2BB0;
LABEL_5:
    v12[0] = v3;
    v12[1] = v4;
    v12[2] = v5;
    v12[3] = v6;
    v13 = a1;
    v14 = 0;

    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA9TransformV_Tt0g5(v12);
    v7 = *(v2 + 16);

    if (v7 == *(v2 + 16))
    {
      break;
    }

    __break(1u);
LABEL_7:
    swift_once();
  }

  return result;
}

uint64_t __RKEntityOrbitEntityAction.__allocating_init(targetEntity:pivotEntity:duration:rotations:orbitalAxis:orientToPath:spinDirection:respectPhysics:physicsAngularCoefficient:physicsLinearCoefficient:loop:)(uint64_t a1, uint64_t a2, char a3, char *a4, char a5, char a6, float a7, float a8, __n128 a9, float a10, float a11)
{
  v21 = swift_allocObject();
  v22 = *a4;
  *(v21 + 160) = 0u;
  *(v21 + 176) = 0u;
  *(v21 + 192) = 0u;
  *(v21 + 208) = 0u;
  *(v21 + 224) = 0u;
  *(v21 + 240) = 0u;
  *(v21 + 256) = 0u;
  *(v21 + 272) = 0u;
  *(v21 + 288) = 1;
  *(v21 + 296) = 0;
  *(v21 + 304) = 0;
  *(v21 + 320) = 0u;
  *(v21 + 336) = 0u;
  *(v21 + 352) = 1;
  *(v21 + 112) = a2;
  *(v21 + 120) = a7;
  *(v21 + 124) = a8;
  *(v21 + 128) = a9;
  *(v21 + 144) = a3;
  *(v21 + 145) = v22;
  *(v21 + 148) = a10;
  *(v21 + 152) = a11;
  *(v21 + 146) = a5;
  *(v21 + 354) = a6;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityOrbitEntityAction.init(targetEntity:pivotEntity:duration:rotations:orbitalAxis:orientToPath:spinDirection:respectPhysics:physicsAngularCoefficient:physicsLinearCoefficient:loop:)(uint64_t a1, uint64_t a2, char a3, char *a4, char a5, char a6, float a7, float a8, __n128 a9, float a10, float a11)
{
  v12 = *a4;
  *(v11 + 160) = 0u;
  *(v11 + 176) = 0u;
  *(v11 + 192) = 0u;
  *(v11 + 208) = 0u;
  *(v11 + 224) = 0u;
  *(v11 + 240) = 0u;
  *(v11 + 256) = 0u;
  *(v11 + 272) = 0u;
  *(v11 + 288) = 1;
  *(v11 + 296) = 0;
  *(v11 + 304) = 0;
  *(v11 + 320) = 0u;
  *(v11 + 336) = 0u;
  *(v11 + 352) = 1;
  *(v11 + 112) = a2;
  *(v11 + 120) = a7;
  *(v11 + 124) = a8;
  *(v11 + 128) = a9;
  *(v11 + 144) = a3;
  *(v11 + 145) = v12;
  *(v11 + 148) = a10;
  *(v11 + 152) = a11;
  *(v11 + 146) = a5;
  *(v11 + 354) = a6;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityOrbitEntityAction.perform(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v134 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v149 = *(v9 - 8);
  v150 = v9;
  v10 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v134 - v11;
  v151 = *(a1 + 8);
  swift_beginAccess();
  v13 = *(v2 + 16);
  v158 = 91;
  v159 = 0xE100000000000000;
  if (v13)
  {
    v170 = 0;
    v171 = 0xE000000000000000;
    v167[0] = v13;

    _print_unlocked<A, B>(_:_:)();
    v14 = v170;
    v15 = v171;
  }

  else
  {
    v15 = 0xE300000000000000;
    v14 = 7104878;
  }

  MEMORY[0x1C68F3410](v14, v15);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v16 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v16);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v17 = v159;
  v18 = *(v2 + 16);
  if (!v18)
  {
    v20 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v20, &v158);

    return 0;
  }

  v19 = *(v2 + 112);
  if (!v19)
  {

    v23 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v23, &v158);

LABEL_33:

    return 0;
  }

  v148 = v158;
  swift_beginAccess();
  if (*(v2 + 104) == 1 && *(v2 + 96) == 1)
  {
    swift_beginAccess();
    if (*(v2 + 105) == 1)
    {

LABEL_17:
      v158 = v148;
      v159 = v17;
      v24 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v24, &v158);

LABEL_32:

      goto LABEL_33;
    }
  }

  v21 = *(v151 + 16);

  if (!RESceneGetECSManagerNullable())
  {
    goto LABEL_17;
  }

  v145 = v8;
  v146 = v4;
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v18, v167);
  if (v169)
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v22 = xmmword_1EBEB2BC0;
  }

  else
  {
    v22 = v168;
  }

  v147 = v22;
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v19, &v170);
  if (v173)
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v25 = xmmword_1EBEB2BC0;
  }

  else
  {
    v25 = v172;
  }

  v26 = vmovn_s32(vceqq_f32(v147, v25));
  if ((v26.i8[0] & 1) != 0 && (v26.i16[1] & v26.i16[2] & 1) != 0 || *(v2 + 120) <= 0.0)
  {

    v35 = *(v2 + 96);
    v36 = *(v2 + 104);
    *(v2 + 96) = 4;
    *(v2 + 104) = 1;
    v158 = v35;
    LOBYTE(v159) = v36;
    __RKEntityAction.state.didset(&v158);
    goto LABEL_32;
  }

  v158 = v148;
  v159 = v17;
  v27 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v27, &v158);
  v28 = *(v2 + 96);
  v29 = *(v2 + 104);
  *(v2 + 96) = 1;
  *(v2 + 104) = 1;
  v158 = v28;
  LOBYTE(v159) = v29;
  __RKEntityAction.state.didset(&v158);
  v30 = *(v18 + 16);
  RETransformComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    goto LABEL_47;
  }

  *&v147 = v5;
  RETransformComponentGetLocalPose();
  *(v2 + 320) = v31;
  *(v2 + 336) = v32;
  *(v2 + 352) = 0;
  RERigidBodyComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass)
  {
    MotionType = RERigidBodyComponentGetMotionType();
    if (MotionType != 1)
    {
      RERigidBodyComponentSetMotionType();
      RENetworkMarkComponentDirty();
    }
  }

  else
  {
    MotionType = 0;
  }

  if (!REEntityGetSceneNullable() || !RESceneGetECSManagerNullable() || (ServiceLocator = REECSManagerGetServiceLocator(), (v144 = MEMORY[0x1C68FE1F0](ServiceLocator)) == 0) || (v140 = ComponentByClass, LODWORD(v141) = MotionType, REAnimationComponentGetComponentType(), v139 = REEntityGetOrAddComponentByClass(), (v39 = Entity.rcSceneEntity.getter()) == 0))
  {
LABEL_47:

    goto LABEL_33;
  }

  v40 = v39;
  v138 = v30;
  v143 = type metadata accessor for Entity();
  swift_allocObject();
  v41 = Entity.init()();
  v42 = *(v2 + 304);
  *(v2 + 304) = v41;

  specialized HasHierarchy.setParent(_:preservingWorldTransform:)(v43, 1);

  if (*(v2 + 304))
  {
    v44 = *(v2 + 304);

    *v45.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v19, v40);
    *v49.i64 = simd_float4x4.transform(position:)(0, v45, v46, v47, v48);
    v142 = v49;

    specialized HasTransform.position.setter(v142);

    v50 = specialized HasHierarchy.parent.getter();
    v51 = *(v2 + 296);
    *(v2 + 296) = v50;

    RETransformComponentGetWorldUnanimatedMatrix4x4F();
    v142 = v52;
    v136 = v54;
    v137 = v53;
    v135 = v55;
    RETransformComponentGetWorldMatrix4x4F();
    v134[2] = v57;
    v134[3] = v56;
    v134[0] = v59;
    v134[1] = v58;
    v60 = *(v2 + 304);

    specialized HasHierarchy.setParent(_:preservingWorldTransform:)(v61, 0);

    RETransformComponentSetWorldMatrix4x4F();
    RETransformComponentSetWorldAnimatedMatrix4x4F();
    RENetworkMarkComponentDirty();
    v142 = *(v2 + 128);
    *v62.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v40, 0);
    v65 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v62, v142.f32[0]), v63, *v142.f32, 1), v64, v142, 2);
    v66 = vmulq_f32(v65, v65);
    v64.f32[0] = v66.f32[2] + vaddv_f32(*v66.f32);
    *v66.f32 = vrsqrte_f32(v64.u32[0]);
    *v66.f32 = vmul_f32(*v66.f32, vrsqrts_f32(v64.u32[0], vmul_f32(*v66.f32, *v66.f32)));
    v142 = vmulq_n_f32(v65, vmul_f32(*v66.f32, vrsqrts_f32(v64.u32[0], vmul_f32(*v66.f32, *v66.f32))).f32[0]);
    *v67.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v19, 0);
    *v71.i64 = simd_float4x4.transform(position:)(0, v67, v68, v69, v70);
    v137 = v71;
    *v72.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v18, 0);
    *v76.i64 = simd_float4x4.transform(position:)(0, v72, v73, v74, v75);
    v77 = vsubq_f32(v137, v76);
    v78 = vmulq_f32(v77, v77);
    *&v79 = v78.f32[2] + vaddv_f32(*v78.f32);
    *v78.f32 = vrsqrte_f32(v79);
    *v78.f32 = vmul_f32(*v78.f32, vrsqrts_f32(v79, vmul_f32(*v78.f32, *v78.f32)));
    v80 = vmulq_n_f32(v77, vmul_f32(*v78.f32, vrsqrts_f32(v79, vmul_f32(*v78.f32, *v78.f32))).f32[0]);
    v81 = vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL);
    v82 = vmlaq_f32(vmulq_f32(v81, vnegq_f32(v142)), v80, vextq_s8(vuzp1q_s32(v142, v142), v142, 0xCuLL));
    v83 = vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL);
    v84 = vmulq_f32(v82, v82);
    *&v85 = v84.f32[1] + (v84.f32[2] + v84.f32[0]);
    *v84.f32 = vrsqrte_f32(v85);
    *v84.f32 = vmul_f32(*v84.f32, vrsqrts_f32(v85, vmul_f32(*v84.f32, *v84.f32)));
    v86 = vmulq_n_f32(v83, vmul_f32(*v84.f32, vrsqrts_f32(v85, vmul_f32(*v84.f32, *v84.f32))).f32[0]);
    v87 = vmlaq_f32(vmulq_f32(v81, vnegq_f32(v86)), v80, vextq_s8(vuzp1q_s32(v86, v86), v86, 0xCuLL));
    v88 = vextq_s8(vuzp1q_s32(v87, v87), v87, 0xCuLL);
    v89 = vmulq_f32(v87, v87);
    v84.f32[0] = v89.f32[1] + (v89.f32[2] + v89.f32[0]);
    *v89.f32 = vrsqrte_f32(v84.u32[0]);
    *v89.f32 = vmul_f32(*v89.f32, vrsqrts_f32(v84.u32[0], vmul_f32(*v89.f32, *v89.f32)));
    v142 = vmulq_n_f32(v88, vmul_f32(*v89.f32, vrsqrts_f32(v84.u32[0], vmul_f32(*v89.f32, *v89.f32))).f32[0]);
    RETransformComponentGetLocalUnanimatedSRT();
    v136 = v90;
    v137 = v91;
    v135 = v92;
    v94 = *(v2 + 120);
    v93 = *(v2 + 124);
    if (*(v2 + 145))
    {
      v95 = 0x80000001C18DDB90;
    }

    else
    {
      v95 = 0xE900000000000065;
    }

    if ((*(v2 + 145) & 1) != 0 || v95 != 0xE900000000000065)
    {
      *(v2 + 145);
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v96 = *(v2 + 144);
    v142.i64[0] = REAssetManagerTimelineAssetCreateOrbitAnimation();
    REAnimationClipDefaultParametersEx();
    v165 = v160;
    v166 = v161;
    if (*(v2 + 354))
    {
      v97 = v162;
      v98 = 1;
    }

    else
    {
      v98 = v163;
      v97 = *(v2 + 120);
    }

    v137.i64[0] = v40;
    v159 = "Transform.transform";
    v160 = v165;
    v161 = v166;
    v162 = v97;
    v163 = v98;
    v164 = 1;
    if (REAssetManagerTimelineAssetCreateSRTAnimationClipEx())
    {
      v158 = 4;
      LODWORD(v159) = 4096;
      *&v160 = "ORBIT";
      BYTE8(v160) = 0;
      *(v2 + 280) = REAnimationComponentPlay();
      *(v2 + 288) = 0;
      RERelease();
    }

    v99 = v140 == 0;
    v100 = swift_allocObject();
    swift_weakInit();
    v101 = swift_allocObject();
    v102 = v138;
    *(v101 + 16) = v100;
    *(v101 + 24) = v102;
    *(v101 + 32) = v141;
    *(v101 + 36) = v99;
    v103 = *(v2 + 32);
    v104 = *(v2 + 40);
    *(v2 + 32) = partial apply for specialized closure #1 in __RKEntityOrbitEntityAction.perform(with:);
    *(v2 + 40) = v101;

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v103);

    v157 = 0;
    v155 = 0u;
    v156 = 0u;
    v105 = swift_allocObject();
    swift_weakInit();
    _s10RealityKit5SceneC9subscribe2to2on_7Combine11Cancellable_pxm_AA11EventSource_pSgyxctAA0I0RzlFAA0C6EventsO6UpdateV_Tt0g5(&v155, partial apply for closure #2 in __RKEntityOrbitEntityAction.perform(with:), v105, &v158);

    outlined destroy of BodyTrackingComponent?(&v155, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v158, v2 + 160);
    swift_endAccess();
    *(&v156 + 1) = v143;
    v157 = &protocol witness table for Entity;
    *&v155 = v18;
    v141 = swift_allocObject();
    swift_weakInit();

    Scene.eventService.getter(&v158);
    v106 = *(&v160 + 1);
    v107 = v161;
    __swift_project_boxed_opaque_existential_1(&v158, *(&v160 + 1));
    type metadata accessor for REAnimationHasCompletedEvent(0);
    EventService.publisher<A>(for:on:)(v108, &v155, v106, v108, v107);
    v109 = v152;
    v110 = v153;
    v111 = v154;
    __swift_destroy_boxed_opaque_existential_1(&v158);
    *(swift_allocObject() + 16) = 0;
    v158 = v109;
    v159 = v110;
    *&v160 = v111;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR);
    v144 = &protocol conformance descriptor for Scene.CorePublisher<A>;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasCompletedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR);
    Publisher.compactMap<A>(_:)();

    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
    v113 = *(v112 + 48);
    v114 = *(v112 + 52);
    v115 = swift_allocObject();
    (*(v149 + 32))(&v115[*(*v115 + *MEMORY[0x1E695BEE8] + 16)], v12, v150);
    v158 = v115;
    v116 = swift_allocObject();
    v117 = v141;
    *(v116 + 16) = partial apply for closure #3 in __RKEntityOrbitEntityAction.perform(with:);
    *(v116 + 24) = v117;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR);
    v150 = &protocol conformance descriptor for Scene.Publisher<A>;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackCompleted> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR);
    v118 = Publisher<>.sink(receiveValue:)();

    v149 = type metadata accessor for AnyCancellable();
    *(&v160 + 1) = v149;
    *&v161 = MEMORY[0x1E695BF08];

    v158 = v118;
    outlined destroy of BodyTrackingComponent?(&v155, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v158, v2 + 200);
    swift_endAccess();
    *(&v156 + 1) = v143;
    v157 = &protocol witness table for Entity;
    *&v155 = v18;
    v119 = swift_allocObject();
    swift_weakInit();

    Scene.eventService.getter(&v158);
    v120 = *(&v160 + 1);
    v121 = v161;
    __swift_project_boxed_opaque_existential_1(&v158, *(&v160 + 1));
    type metadata accessor for REAnimationHasTerminatedEvent(0);
    EventService.publisher<A>(for:on:)(v122, &v155, v120, v122, v121);
    v123 = v152;
    v124 = v153;
    v125 = v154;
    __swift_destroy_boxed_opaque_existential_1(&v158);
    *(swift_allocObject() + 16) = 0;
    v158 = v123;
    v159 = v124;
    *&v160 = v125;

    v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasTerminatedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR);
    v126 = v145;
    Publisher.compactMap<A>(_:)();

    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
    v128 = *(v127 + 48);
    v129 = *(v127 + 52);
    v130 = swift_allocObject();
    (*(v147 + 32))(&v130[*(*v130 + *MEMORY[0x1E695BEE8] + 16)], v126, v146);
    v158 = v130;
    v131 = swift_allocObject();
    *(v131 + 16) = partial apply for closure #4 in __RKEntityOrbitEntityAction.perform(with:);
    *(v131 + 24) = v119;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackTerminated> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR);
    v132 = Publisher<>.sink(receiveValue:)();

    *(&v160 + 1) = v149;
    *&v161 = MEMORY[0x1E695BF08];

    v158 = v132;
    outlined destroy of BodyTrackingComponent?(&v155, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v158, v2 + 240);
    swift_endAccess();
    v158 = v148;
    v159 = v17;
    v133 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v133, &v158);

    RERelease();

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in __RKEntityOrbitEntityAction.perform(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v5 = result;
  swift_beginAccess();
  outlined init with copy of Cancellable?(v5 + 160, &v19);
  if (*(&v20 + 1))
  {
    outlined init with copy of __REAssetService(&v19, v17);
    outlined destroy of BodyTrackingComponent?(&v19, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    __swift_project_boxed_opaque_existential_1(v17, v18);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v19, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  swift_beginAccess();
  outlined assign with take of Cancellable?(&v19, v5 + 160);
  swift_endAccess();
  swift_beginAccess();
  outlined init with copy of Cancellable?(v5 + 200, &v19);
  if (*(&v20 + 1))
  {
    outlined init with copy of __REAssetService(&v19, v17);
    outlined destroy of BodyTrackingComponent?(&v19, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    __swift_project_boxed_opaque_existential_1(v17, v18);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v19, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  swift_beginAccess();
  outlined assign with take of Cancellable?(&v19, v5 + 200);
  swift_endAccess();
  swift_beginAccess();
  outlined init with copy of Cancellable?(v5 + 240, &v19);
  if (*(&v20 + 1))
  {
    outlined init with copy of __REAssetService(&v19, v17);
    outlined destroy of BodyTrackingComponent?(&v19, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    __swift_project_boxed_opaque_existential_1(v17, v18);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v19, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  swift_beginAccess();
  outlined assign with take of Cancellable?(&v19, v5 + 240);
  swift_endAccess();
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v6 + 16);
    v8 = *(v5 + 16);

    REAnimationComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      if (REAnimationComponentHasRunningAnimations())
      {
        if ((REAnimationComponentAllAnimationsCompleted() & 1) != 0 || (swift_beginAccess(), *(v5 + 104) == 1) && *(v5 + 96) == 3)
        {
          REAnimationComponentStopAllAnimations();
          RENetworkMarkComponentDirty();
        }
      }
    }

    *(v5 + 280) = 0;
    *(v5 + 288) = 1;
  }

  else
  {
  }

  RERigidBodyComponentGetComponentType();
  if (REEntityGetComponentByClass() && (a3 & 0x100000000) == 0 && a3 != 1)
  {
    RERigidBodyComponentSetMotionType();
    RENetworkMarkComponentDirty();
  }

  v9 = *(v5 + 16);
  if (!v9)
  {
  }

  v10 = *(v9 + 16);
  v11 = *(v5 + 16);

  RETransformComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
  }

  RETransformComponentGetWorldUnanimatedMatrix4x4F();
  RETransformComponentGetWorldMatrix4x4F();
  v12 = *(v5 + 16);

  if (v12)
  {
    v13 = *(v5 + 296);

    specialized HasHierarchy.setParent(_:preservingWorldTransform:)(v14, 0);
  }

  RETransformComponentSetWorldMatrix4x4F();
  RETransformComponentSetWorldAnimatedMatrix4x4F();
  RENetworkMarkComponentDirty();
  if (*(v5 + 304))
  {
    v15 = *(v5 + 304);

    specialized HasHierarchy.removeFromParent(preservingWorldTransform:)(0);

    v16 = *(v5 + 304);
    *(v5 + 304) = 0;
  }
}

uint64_t closure #2 in __RKEntityOrbitEntityAction.perform(with:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 304))
    {
      v1 = *(result + 112);
      if (v1)
      {
        v2 = *(result + 112);

        v3 = Entity.rcSceneEntity.getter();
        if (v3)
        {
          *v4.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v1, v3);
          v8.n128_f64[0] = simd_float4x4.transform(position:)(0, v4, v5, v6, v7);
          specialized HasTransform.position.setter(v8);
        }
      }
    }
  }

  return result;
}

uint64_t closure #3 in __RKEntityOrbitEntityAction.perform(with:)(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if ((*(result + 288) & 1) != 0 || *(v1 + 16) != *(result + 280))
    {
    }

    else
    {
      swift_beginAccess();
      v4 = *(v3 + 96);
      v5 = *(v3 + 104);
      *(v3 + 96) = 2;
      *(v3 + 104) = 1;
      v6 = v4;
      v7 = v5;

      __RKEntityAction.state.didset(&v6);
    }
  }

  return result;
}

uint64_t __RKEntityOrbitEntityAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 112);
  v12 = *(v1 + 128);
  v5 = *(v1 + 144);
  v6 = *(v1 + 145);
  v7 = *(v1 + 146);
  v8 = type metadata accessor for __RKEntityOrbitEntityAction();
  v9 = swift_allocObject();
  *(v9 + 160) = 0u;
  *(v9 + 176) = 0u;
  *(v9 + 192) = 0u;
  *(v9 + 208) = 0u;
  *(v9 + 224) = 0u;
  *(v9 + 240) = 0u;
  *(v9 + 256) = 0u;
  *(v9 + 272) = 0u;
  *(v9 + 288) = 1;
  *(v9 + 296) = 0;
  *(v9 + 304) = 0;
  *(v9 + 320) = 0u;
  *(v9 + 336) = 0u;
  *(v9 + 352) = 1;
  *(v9 + 112) = v4;
  *(v9 + 120) = *(v1 + 120);
  *(v9 + 128) = v12;
  *(v9 + 144) = v5;
  *(v9 + 145) = v6;
  *(v9 + 148) = *(v1 + 148);
  *(v9 + 146) = v7;
  *(v9 + 354) = 0;

  result = __RKEntityAction.init(targetEntity:)(v10);
  a1[3] = v8;
  *a1 = result;
  return result;
}

uint64_t __RKEntityOrbitEntityAction.clone(matching:newEntity:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 && *(a1 + 16) == *(v3 + 16))
  {
    v5 = *(v1 + 112);
    v11 = *(v1 + 128);
    v6 = *(v1 + 144);
    v7 = *(v1 + 145);
    v8 = *(v1 + 146);
    type metadata accessor for __RKEntityOrbitEntityAction();
    v9 = swift_allocObject();
    *(v9 + 160) = 0u;
    *(v9 + 176) = 0u;
    *(v9 + 192) = 0u;
    *(v9 + 208) = 0u;
    *(v9 + 224) = 0u;
    *(v9 + 240) = 0u;
    *(v9 + 256) = 0u;
    *(v9 + 272) = 0u;
    *(v9 + 288) = 1;
    *(v9 + 296) = 0;
    *(v9 + 304) = 0;
    *(v9 + 320) = 0u;
    *(v9 + 336) = 0u;
    *(v9 + 352) = 1;
    *(v9 + 112) = v5;
    *(v9 + 120) = *(v1 + 120);
    *(v9 + 128) = v11;
    *(v9 + 144) = v6;
    *(v9 + 145) = v7;
    *(v9 + 148) = *(v1 + 148);
    *(v9 + 146) = v8;
    *(v9 + 354) = 0;

    return __RKEntityAction.init(targetEntity:)(v10);
  }

  else
  {
    __RKEntityOrbitEntityAction.copy(with:)(v13);
    type metadata accessor for __RKEntityAction();
    if (swift_dynamicCast())
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __RKEntityOrbitEntityAction.__ivar_destroyer()
{
  v1 = v0[14];

  outlined destroy of BodyTrackingComponent?((v0 + 20), &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?((v0 + 25), &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?((v0 + 30), &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  v2 = v0[37];

  v3 = v0[38];
}

uint64_t __RKEntityOrbitEntityAction.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32));
  v3 = *(v0 + 56);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48));
  v4 = *(v0 + 64);

  v5 = *(v0 + 80);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72));
  v6 = *(v0 + 112);

  outlined destroy of BodyTrackingComponent?(v0 + 160, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 200, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 240, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  v7 = *(v0 + 296);

  v8 = *(v0 + 304);

  return v0;
}

uint64_t __RKEntityOrbitEntityAction.__deallocating_deinit()
{
  __RKEntityOrbitEntityAction.deinit();

  return swift_deallocClassInstance();
}

__n128 SpatialAudioComponent.directivity.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 SpatialAudioComponent.directivity.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  return result;
}

uint64_t SpatialAudioComponent.init(gain:directLevel:reverbLevel:directivity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v5 = *(result + 16);
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = *result;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0x3FF0000000000000;
  *(a2 + 56) = a5;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = a4;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = a3;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  return result;
}

uint64_t SpatialAudioComponent.CodingKeys.stringValue.getter(char a1)
{
  result = 1852399975;
  switch(a1)
  {
    case 1:
      v3 = 0x746365726964;
      goto LABEL_7;
    case 2:
      v3 = 0x627265766572;
LABEL_7:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x654C000000000000;
      break;
    case 3:
      result = 0x7669746365726964;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
    case 8:
      result = 0xD000000000000012;
      break;
    case 6:
    case 9:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x477465677261745FLL;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x6E6964614673695FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SpatialAudioComponent.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SpatialAudioComponent.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpatialAudioComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SpatialAudioComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Entity.spatialAudio.setter(_OWORD *a1)
{
  v2 = a1[5];
  v6[4] = a1[4];
  v6[5] = v2;
  v7[0] = a1[6];
  *(v7 + 9) = *(a1 + 105);
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v4 = a1[3];
  v6[2] = a1[2];
  v6[3] = v4;
  return _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation012SpatialAudioD0V_TtB5Tf4ndn_n(v6, v1);
}

void (*Entity.spatialAudio.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x188uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 384) = v1;
  v5 = *(v1 + 16);
  Component = REEntityGetComponent();
  if (Component)
  {
    v9 = Component;
    static SpatialAudioComponent.__fromCore(_:)(&v9, v4 + 256);
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(v4 + 256, v7);
  }

  else
  {
    _s17RealityFoundation21SpatialAudioComponentVSgWOi0_(v4 + 256);
  }

  return Entity.spatialAudio.modify;
}

void Entity.spatialAudio.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 384);
  v4 = *a1 + 256;
  if (a2)
  {
    v5 = *a1;
  }

  else
  {
    v5 = (*a1 + 128);
  }

  v6 = v2[21];
  v5[4] = v2[20];
  v5[5] = v6;
  v5[6] = v2[22];
  *(v5 + 105) = *(v4 + 105);
  v7 = v2[17];
  *v5 = v2[16];
  v5[1] = v7;
  v8 = v2[19];
  v5[2] = v2[18];
  v5[3] = v8;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation012SpatialAudioD0V_TtB5Tf4ndn_n(v5, v3);

  free(v2);
}

double static SpatialAudioComponent.__fromCore(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  RESpatialAudioComponentGetDecibelGain();
  v5 = v4;
  RESpatialAudioComponentGetDirectSendLevel();
  v7 = v6;
  RESpatialAudioComponentGetReverbSendLevel();
  v9 = v8;
  SourceDirectivityMode = RESpatialAudioComponentGetSourceDirectivityMode();
  RESpatialAudioComponentGetRolloffFactor();
  v12 = v11;
  if (SourceDirectivityMode)
  {
    if (SourceDirectivityMode == 3)
    {
      RESpatialAudioComponentGetDirectivitySphericalCapDiameter();
      v18 = v17;
      RESpatialAudioComponentGetDirectivitySphericalCapOpeningAngle();
      v16 = v18;
      v13 = v19;
      v14 = 1;
    }

    else if (SourceDirectivityMode == 1)
    {
      RESpatialAudioComponentGetDirectivityFocus();
      v13 = 0.0;
      v14 = 0;
      v16 = v15;
    }

    else
    {
      v16 = 0.0;
      v13 = 0.0;
      v14 = 0;
    }
  }

  else
  {
    v16 = 0.0;
    v14 = 2;
    v13 = 0.0;
  }

  result = v12;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v16;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  *(a2 + 48) = v12;
  *(a2 + 56) = v9;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = v7;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = v5;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  return result;
}

uint64_t SpatialAudioComponent.init(gain:directLevel:reverbLevel:directivity:distanceAttenuation:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v6 = *(result + 16);
  v7 = *a2;
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = *result;
  *(a3 + 40) = v6;
  *(a3 + 48) = v7;
  *(a3 + 56) = a6;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = a5;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = a4;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  return result;
}

uint64_t SpatialAudioComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 40);
  v10 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v12 = *(v1 + 72);
  v14 = v1[10];
  v13 = v1[11];
  v15 = *(v1 + 96);
  v18 = v1[13];
  v19 = v1[14];
  v16 = *(v1 + 120);
  RESpatialAudioComponentSetDecibelGain();
  RESpatialAudioComponentSetDirectSendLevel();
  RESpatialAudioComponentSetReverbSendLevel();
  if (v8)
  {
    RESpatialAudioComponentSetSourceDirectivityMode();
    if (v8 == 1)
    {
      RESpatialAudioComponentSetDirectivitySphericalCap();
    }
  }

  else
  {
    RESpatialAudioComponentSetSourceDirectivityMode();
    RESpatialAudioComponentSetDirectivityFocus();
  }

  RESpatialAudioComponentSetRolloffFactor();
  if (v12)
  {
    RESpatialAudioComponentFadeComponentReverbLevel();
    if (!v15)
    {
LABEL_7:
      if (!v16)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (!v15)
  {
    goto LABEL_7;
  }

  RESpatialAudioComponentFadeComponentDirectLevel();
  if (v16)
  {
LABEL_8:
    RESpatialAudioComponentFadeComponentDecibelGain();
  }

LABEL_9:

  return RENetworkMarkComponentDirty();
}

uint64_t SpatialAudioComponent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation21SpatialAudioComponentV10CodingKeys33_6877805D86A1D7F09C4366522C4FF8EALLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation21SpatialAudioComponentV10CodingKeys33_6877805D86A1D7F09C4366522C4FF8EALLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v32 - v6;
  v9 = *v1;
  v8 = v1[1];
  v35 = v1[2];
  v36 = v8;
  v10 = v1[3];
  v33 = v1[4];
  v34 = v10;
  v42 = *(v1 + 40);
  v12 = v1[6];
  v11 = v1[7];
  v13 = v1[8];
  v14 = *(v1 + 72);
  v16 = v1[10];
  v15 = v1[11];
  v17 = *(v1 + 96);
  v19 = v1[13];
  v18 = v1[14];
  v20 = *(v1 + 120);
  v22 = a1[3];
  v21 = a1[4];
  v23 = a1;
  v25 = v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  lazy protocol witness table accessor for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v39) = 0;
  v38 = v7;
  v26 = v37;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v26)
  {
    return (*(v4 + 8))(v38, v25);
  }

  v29 = v33;
  v28 = v34;
  LOBYTE(v39) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v39) = 2;
  v37 = v25;
  KeyedEncodingContainer.encode(_:forKey:)();
  v39 = v28;
  v40 = v29;
  v41 = v42;
  v43 = 3;
  lazy protocol witness table accessor for type Audio.Directivity and conformance Audio.Directivity();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v39 = v12;
  v43 = 4;
  lazy protocol witness table accessor for type Audio.DistanceAttenuation and conformance Audio.DistanceAttenuation();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v39) = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v39) = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v39) = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v39) = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v39) = 9;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v39) = 10;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v39) = 11;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v39) = 12;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v39) = 13;
  v30 = v37;
  v31 = v38;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v31, v30);
}

void SpatialAudioComponent.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  v13 = *(v0 + 96);
  v24 = *(v0 + 104);
  v25 = *(v0 + 112);
  v14 = *(v0 + 120);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1C68F4C50](*&v1);
  if (v2 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v2;
  }

  MEMORY[0x1C68F4C50](*&v15);
  if (v3 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v3;
  }

  MEMORY[0x1C68F4C50](*&v16);
  Audio.Directivity.hash(into:)();
  MEMORY[0x1C68F4C10](0);
  if (v7 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v7;
  }

  MEMORY[0x1C68F4C50](*&v17);
  if (v8 == 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v8;
  }

  MEMORY[0x1C68F4C50](*&v18);
  if (v9 == 0.0)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v9;
  }

  MEMORY[0x1C68F4C50](*&v19);
  Hasher._combine(_:)(v10);
  if (v12 == 0.0)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v12;
  }

  MEMORY[0x1C68F4C50](*&v20);
  if (v11 == 0.0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v11;
  }

  MEMORY[0x1C68F4C50](*&v21);
  Hasher._combine(_:)(v13);
  v22 = v24;
  if (v24 == 0.0)
  {
    v22 = 0.0;
  }

  MEMORY[0x1C68F4C50](*&v22);
  v23 = v25;
  if (v25 == 0.0)
  {
    v23 = 0.0;
  }

  MEMORY[0x1C68F4C50](*&v23);
  Hasher._combine(_:)(v14);
}

Swift::Int SpatialAudioComponent.hashValue.getter()
{
  Hasher.init(_seed:)();
  SpatialAudioComponent.hash(into:)();
  return Hasher._finalize()();
}

uint64_t SpatialAudioComponent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation21SpatialAudioComponentV10CodingKeys33_6877805D86A1D7F09C4366522C4FF8EALLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation21SpatialAudioComponentV10CodingKeys33_6877805D86A1D7F09C4366522C4FF8EALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v38) = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    LOBYTE(v38) = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    LOBYTE(v38) = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v16;
    v42 = 3;
    lazy protocol witness table accessor for type Audio.Directivity and conformance Audio.Directivity();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v39;
    v37 = v38;
    v19 = v40;
    v42 = 4;
    lazy protocol witness table accessor for type Audio.DistanceAttenuation and conformance Audio.DistanceAttenuation();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36 = v18;
    v41 = v19;
    v20 = v38;
    LOBYTE(v38) = 5;
    KeyedDecodingContainer.decode(_:forKey:)();
    v22 = v21;
    LOBYTE(v38) = 6;
    KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v23;
    LOBYTE(v38) = 7;
    v35 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v38) = 8;
    KeyedDecodingContainer.decode(_:forKey:)();
    v26 = v25;
    LOBYTE(v38) = 9;
    KeyedDecodingContainer.decode(_:forKey:)();
    v28 = v27;
    LOBYTE(v38) = 10;
    LOBYTE(v19) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v38) = 11;
    KeyedDecodingContainer.decode(_:forKey:)();
    v34 = v29;
    LOBYTE(v38) = 12;
    KeyedDecodingContainer.decode(_:forKey:)();
    v33 = v30;
    LOBYTE(v38) = 13;
    LOBYTE(v18) = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v31 = v35 & 1;
    *a2 = v12;
    *(a2 + 8) = v15;
    *(a2 + 16) = v17;
    *(a2 + 24) = v37;
    *(a2 + 32) = v36;
    *(a2 + 40) = v41;
    *(a2 + 48) = v20;
    *(a2 + 56) = v22;
    *(a2 + 64) = v24;
    *(a2 + 72) = v31;
    *(a2 + 80) = v26;
    *(a2 + 88) = v28;
    *(a2 + 96) = v19 & 1;
    v32 = v33;
    *(a2 + 104) = v34;
    *(a2 + 112) = v32;
    *(a2 + 120) = v18 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpatialAudioComponent()
{
  Hasher.init(_seed:)();
  SpatialAudioComponent.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpatialAudioComponent()
{
  Hasher.init(_seed:)();
  SpatialAudioComponent.hash(into:)();
  return Hasher._finalize()();
}

double SpatialAudioComponent.distanceAttenuation.setter(double *a1)
{
  result = *a1;
  *(v1 + 48) = *a1;
  return result;
}

double SpatialAudioComponent.distanceAttenuation.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 48);
  *a1 = result;
  return result;
}

double (*SpatialAudioComponent.distanceAttenuation.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 48);
  return SpatialAudioComponent.distanceAttenuation.modify;
}

double SpatialAudioComponent.distanceAttenuation.modify(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 48) = *a1;
  return result;
}

uint64_t SpatialAudioComponent.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v22 - v8;
  v10 = *v0;
  v11 = v0[1];
  v12 = v0[2];
  v13 = v0[3];
  v14 = v0[4];
  v15 = *(v0 + 40);
  *v24 = *(v0 + 41);
  *&v24[3] = *(v0 + 11);
  v16 = v0[6];
  v17 = *(v0 + 11);
  v27 = *(v0 + 9);
  v28 = v17;
  v29 = *(v0 + 13);
  v30 = *(v0 + 120);
  v26 = *(v0 + 7);
  v22[1] = v10;
  v22[2] = v11;
  v22[3] = v12;
  v22[4] = v13;
  v22[5] = v14;
  v23 = v15;
  v25 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C1897F90;
  *(v18 + 32) = 1852399975;
  *(v18 + 40) = 0xE400000000000000;
  v19 = MEMORY[0x1E69E63B0];
  *(v18 + 48) = v10;
  *(v18 + 72) = v19;
  *(v18 + 80) = 0x654C746365726964;
  *(v18 + 88) = 0xEB000000006C6576;
  *(v18 + 96) = v11;
  *(v18 + 120) = v19;
  *(v18 + 128) = 0x654C627265766572;
  *(v18 + 136) = 0xEB000000006C6576;
  *(v18 + 144) = v12;
  *(v18 + 168) = v19;
  *(v18 + 176) = 0x7669746365726964;
  *(v18 + 184) = 0xEB00000000797469;
  *(v18 + 192) = v13;
  *(v18 + 200) = v14;
  *(v18 + 208) = v15;
  *(v18 + 216) = &type metadata for Audio.Directivity;
  *(v18 + 224) = 0xD000000000000013;
  *(v18 + 232) = 0x80000001C18E6B00;
  *(v18 + 264) = &type metadata for Audio.DistanceAttenuation;
  *(v18 + 240) = v16;
  v20 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

Swift::Void __swiftcall SpatialAudioComponent._proto_fadeComponentReverbLevel(to:duration:)(Swift::Double to, Swift::Double duration)
{
  *(v2 + 16) = to;
  *(v2 + 56) = to;
  *(v2 + 64) = duration;
  *(v2 + 72) = 1;
}

Swift::Void __swiftcall SpatialAudioComponent._proto_fadeComponentDirectLevel(to:duration:)(Swift::Double to, Swift::Double duration)
{
  *(v2 + 8) = to;
  *(v2 + 80) = to;
  *(v2 + 88) = duration;
  *(v2 + 96) = 1;
}

Swift::Void __swiftcall SpatialAudioComponent._proto_fadeComponentGain(to:duration:)(Swift::Double to, Swift::Double duration)
{
  *v2 = to;
  *(v2 + 104) = to;
  *(v2 + 112) = duration;
  *(v2 + 120) = 1;
}

uint64_t specialized static SpatialAudioComponent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 72);
    v8 = *(a1 + 80);
    v9 = *(a1 + 104);
    v10 = *(a2 + 24);
    v11 = *(a2 + 40);
    v12 = *(a2 + 48);
    v13 = *(a2 + 56);
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    v16 = *(a2 + 104);
    if (*(a1 + 40))
    {
      if (*(a1 + 40) == 1)
      {
        if (v11 == 1)
        {
          result = 0;
          if (v7 != v14)
          {
            return result;
          }

          v17 = vextq_s8(v6, v8, 8uLL);
          v18 = vdupq_lane_s64(*&v6.f64[0], 0);
          v18.f64[0] = *(a1 + 48);
          v19 = vdupq_lane_s64(*&v13.f64[0], 0);
          v19.f64[0] = *(a2 + 48);
          if (vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 24), v10), vceqq_f64(v18, v19)), vuzp1q_s32(vceqq_f64(v17, vextq_s8(v13, v15, 8uLL)), vceqq_f64(vextq_s8(v8, v9, 8uLL), vextq_s8(v15, v16, 8uLL)))), xmmword_1C18B15F0)) != 255 || (vmovn_s64(vceqq_f64(v9, v16)).i32[1] & 1) == 0)
          {
            return result;
          }

LABEL_24:
          if (((*(a1 + 96) ^ *(a2 + 96)) & 1) == 0)
          {
            return *(a1 + 120) ^ *(a2 + 120) ^ 1u;
          }

          return result;
        }

        return 0;
      }

      if (v11 != 2)
      {
        return 0;
      }

      result = 0;
      v22 = vdupq_lane_s64(*&v6.f64[0], 0);
      v22.f64[0] = *(a1 + 48);
      v23 = vextq_s8(v13, v15, 8uLL);
      v24 = vdupq_lane_s64(*&v13.f64[0], 0);
      v24.f64[0] = *(a2 + 48);
      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v22, v24), vceqq_f64(vextq_s8(v6, v8, 8uLL), v23)))) & 1) != 0 && (vmovn_s64(vceqq_f64(v8, v15)).i32[1])
      {
        v25 = vmovn_s64(vceqq_f64(v9, v16));
        if ((v25.i8[0] & 1) != 0 && (v25.i8[4] & 1) != 0 && !vorrq_s8(vdupq_laneq_s64(v10, 1), v10).u64[0] && ((v7 ^ v14) & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      result = 0;
      if (v7 == v14)
      {
        v20.f64[0] = *(a1 + 24);
        v20.f64[1] = *(a1 + 48);
        v10.f64[1] = *(a2 + 48);
        if (vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v20, v10), vceqq_f64(v6, v13)), vuzp1q_s32(vceqq_f64(v8, v15), vceqq_f64(v9, v16))), xmmword_1C18B15F0)) == 255 && v11 == 0)
        {
          goto LABEL_24;
        }
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Audio.Directivity and conformance Audio.Directivity()
{
  result = lazy protocol witness table cache variable for type Audio.Directivity and conformance Audio.Directivity;
  if (!lazy protocol witness table cache variable for type Audio.Directivity and conformance Audio.Directivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity and conformance Audio.Directivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity and conformance Audio.Directivity;
  if (!lazy protocol witness table cache variable for type Audio.Directivity and conformance Audio.Directivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity and conformance Audio.Directivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity and conformance Audio.Directivity;
  if (!lazy protocol witness table cache variable for type Audio.Directivity and conformance Audio.Directivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity and conformance Audio.Directivity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialAudioComponent and conformance SpatialAudioComponent()
{
  result = lazy protocol witness table cache variable for type SpatialAudioComponent and conformance SpatialAudioComponent;
  if (!lazy protocol witness table cache variable for type SpatialAudioComponent and conformance SpatialAudioComponent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialAudioComponent and conformance SpatialAudioComponent);
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SpatialAudioComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 121))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialAudioComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2 + 1;
    }
  }

  return result;
}

uint64_t specialized SpatialAudioComponent.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852399975 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654C746365726964 && a2 == 0xEB000000006C6576 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654C627265766572 && a2 == 0xEB000000006C6576 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7669746365726964 && a2 == 0xEB00000000797469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C18E6B20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C18E6B40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C18E6B60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C18E6B80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C18E6BA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C18E6BC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C18E6BE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x477465677261745FLL && a2 == 0xEB000000006E6961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C18E6C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E6964614673695FLL && a2 == 0xED00006E69614767)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10RealityKit9__REAssetC_Say0D10Foundation02__F10DescriptorCGs13OpaquePointerVtG_AH_AlI07RESceneH0CtsAE_pTg5(void (*a1)(__int128 *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v22 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v22;
    for (i = (a3 + 40); ; i = (i + 24))
    {
      v18 = *(i - 1);
      v19 = *i;

      a1(&v20, &v18, &v17);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v10 = v20;
      v11 = v21;
      v22 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        v16 = v20;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v10 = v16;
        v6 = v22;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 24 * v13;
      *(v14 + 32) = v10;
      *(v14 + 48) = v11;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy10RealityKit9__REAssetC0D10Foundation17RESceneDescriptorCG_AHs5NeverOTg504_s10d57Kit20__SceneResourceCacheC5EntryC06activeC6AssetsSayAA9__f28CGvgA2H3key_0A10Foundation17hI15C5valuet_tXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v21 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v26 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaDictionary.startIndex.getter();
    v23 = result;
    v24 = v4;
    v25 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v26 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = -1 << *(v1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = *(v1 + 36);
  v23 = result;
  v24 = v6;
  v25 = 0;
LABEL_7:
  v7 = 0;
  v20 = v2;
  while (v7 < v2)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_20;
    }

    v14 = v23;
    v15 = v24;
    v16 = v25;
    specialized Dictionary.subscript.getter(v22, v23, v24, v25, v1);
    v17 = v1;

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v18 = *(v26 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v21)
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      if (__CocoaDictionary.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD5IndexVy10RealityKit9__REAssetC0B10Foundation17RESceneDescriptorC_GMd, &_sSD5IndexVy10RealityKit9__REAssetC0B10Foundation17RESceneDescriptorC_GMR);
      v19 = Dictionary.Index._asCocoa.modify();
      __CocoaDictionary.formIndex(after:isUnique:)();
      result = v19(v22, 0);
    }

    else
    {
      v8 = specialized _NativeDictionary.index(after:)(v14, v15, v16, v1);
      v10 = v9;
      v12 = v11;
      result = outlined consume of [String : AudioResource].Index._Variant(v14, v15, v16);
      v23 = v8;
      v24 = v10;
      v25 = v12 & 1;
      v1 = v17;
      v2 = v20;
    }

    ++v7;
    if (v13 == v2)
    {
      outlined consume of [String : AudioResource].Index._Variant(v23, v24, v25);
      return v26;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay17RealityFoundation17RESceneDescriptorCG_AF23SceneResourceLoadResultVs5NeverOTg5(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v22)
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v6;
    }

    v7 = a3;
    v30 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v6 = v30;
    v9 = v7;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C68F41F0](v8, v9);
      }

      else
      {
        if (v8 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v11 = *(v9 + 8 * v8 + 32);
      }

      v26 = v11;
      a1(v27, &v26);
      if (v4)
      {
        goto LABEL_20;
      }

      v12 = v27[0];
      v13 = v27[1];
      v14 = v28;
      v15 = v29;
      v30 = v6;
      v17 = *(v6 + 16);
      v16 = *(v6 + 24);
      if (v17 >= v16 >> 1)
      {
        v24 = v28;
        v19 = v27[0];
        v23 = v29;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v15 = v23;
        v12 = v19;
        v14 = v24;
        v6 = v30;
      }

      *(v6 + 16) = v17 + 1;
      v18 = v6 + 40 * v17;
      *(v18 + 32) = v12;
      *(v18 + 40) = v13;
      *(v18 + 48) = v14;
      *(v18 + 64) = v15;
      ++v8;
      v4 = 0;
      v9 = v7;
      if (v10 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v21 = a3;
    v22 = __CocoaSet.count.getter();
    a3 = v21;
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay17RealityFoundation5Shape33_958D9063BE5145611DD1DCE0DF8621CFLLVyAF20PiecewiseBezierCurveAHLLVGG_AF08ExtrudedF10DescriptorVsAE_pTg5(void (*a1)(void *__return_ptr, __int128 *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v17;
    for (i = (a3 + 32); ; ++i)
    {
      v15 = *i;

      a1(__src, &v15, &v14);
      if (v4)
      {
        break;
      }

      v4 = 0;

      memcpy(__dst, __src, sizeof(__dst));
      v17 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v6 = v17;
      }

      *(v6 + 16) = v11 + 1;
      memcpy((v6 + 520 * v11 + 32), __dst, 0x208uLL);
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays13OpaquePointerVG_AGs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = v15;
  for (i = (a3 + 32); ; ++i)
  {
    v13 = *i;
    a1(&v14, &v13);
    if (v3)
    {
      break;
    }

    v9 = v14;
    v15 = v5;
    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    if (v11 >= v10 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      v5 = v15;
    }

    *(v5 + 16) = v11 + 1;
    *(v5 + 8 * v11 + 32) = v9;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void LoadTracer.beginLoad(loadType:logMsgTarget:)(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  Trace = type metadata accessor for LoadTrace(0);
  v11 = Trace - 8;
  v12 = *(*(Trace - 8) + 64);
  MEMORY[0x1EEE9AC00](Trace);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 16);
  RESignpostEmitREAssetEntityLoadStartedImpulse();
  v16 = *(v5 + 16);
  v17 = *(v11 + 44);

  static DispatchTime.now()();
  *a4 = v16;
  *(a4 + 4) = a1;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v18 = *(v5 + 16);
  v19 = __CFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v20;
    if (a1 == 1)
    {
      v21 = 0xEB0000000073756FLL;
      v22 = 0x6E6F7268636E7973;
    }

    else if (a1 == 2)
    {
      v21 = 0xEC00000073756F6ELL;
      v22 = 0x6F7268636E797361;
    }

    else
    {
      v22 = *(v5 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_unknownLoadTypeMsg);
      v21 = *(v5 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_unknownLoadTypeMsg + 8);
    }

    outlined init with copy of __SceneImportOperation.__ImportedScene(a4, v14, type metadata accessor for LoadTrace);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315650;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v5 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_logPrefix), *(v5 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_logPrefix + 8), &v32);
      *(v25 + 12) = 2080;
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v32);

      *(v25 + 14) = v27;
      *(v25 + 22) = 2080;
      v28 = *(v14 + 3);
      v29 = *(v14 + 4);

      outlined destroy of __SceneImportOperation.__ImportedScene(v14, type metadata accessor for LoadTrace);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v32);

      *(v25 + 24) = v30;
      _os_log_impl(&dword_1C1358000, v23, v24, "%sStarted loading %s %s", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v26, -1, -1);
      MEMORY[0x1C6902A30](v25, -1, -1);
    }

    else
    {

      outlined destroy of __SceneImportOperation.__ImportedScene(v14, type metadata accessor for LoadTrace);
    }
  }
}

unint64_t LoadTracer.endLoad(of:with:)(uint64_t a1, unsigned int *a2)
{
  v3 = v2;
  Trace = type metadata accessor for LoadTrace(0);
  v7 = Trace - 8;
  v8 = *(*(Trace - 8) + 64);
  MEMORY[0x1EEE9AC00](Trace);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchTime.now()();
  v16 = DispatchTime.uptimeNanoseconds.getter();
  (*(v12 + 8))(v15, v11);
  v17 = a2 + *(v7 + 44);
  result = DispatchTime.uptimeNanoseconds.getter();
  v19 = v16 - result;
  if (v16 < result)
  {
    __break(1u);
  }

  else
  {
    v20 = *(a2 + 4);
    if (v20 == 1)
    {
      v21 = 0xEB0000000073756FLL;
      v22 = 0x6E6F7268636E7973;
    }

    else if (v20 == 2)
    {
      v21 = 0xEC00000073756F6ELL;
      v22 = 0x6F7268636E797361;
    }

    else
    {
      v22 = *(v3 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_unknownLoadTypeMsg);
      v21 = *(v3 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_unknownLoadTypeMsg + 8);
    }

    outlined init with copy of __SceneImportOperation.__ImportedScene(a2, v10, type metadata accessor for LoadTrace);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v19 / 1000000000.0;
      v26 = swift_slowAlloc();
      v40[0] = a1;
      v27 = v26;
      v28 = swift_slowAlloc();
      v41[0] = v28;
      *v27 = 136315906;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v3 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_logPrefix), *(v3 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_logPrefix + 8), v41);
      *(v27 + 12) = 2080;
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, v41);

      *(v27 + 14) = v29;
      *(v27 + 22) = 2080;
      v30 = *(v10 + 3);
      v31 = *(v10 + 4);

      outlined destroy of __SceneImportOperation.__ImportedScene(v10, type metadata accessor for LoadTrace);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v41);

      *(v27 + 24) = v32;
      *(v27 + 32) = 2048;
      *(v27 + 34) = v25;
      _os_log_impl(&dword_1C1358000, v23, v24, "%sFinished loading %s %s in %fs", v27, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v28, -1, -1);
      v33 = v27;
      a1 = v40[0];
      MEMORY[0x1C6902A30](v33, -1, -1);
    }

    else
    {

      outlined destroy of __SceneImportOperation.__ImportedScene(v10, type metadata accessor for LoadTrace);
    }

    v34 = *(a2 + 16);
    RECreateLoadTraceTypeBitFieldSignpostArg();
    v35 = *a2;
    v36 = *(a1 + 16);
    REEntityGetLocalId();
    RESignpostEmitREAssetEntityLoadEndedImpulse();
    v37 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v37 + 120, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16__REAssetService_pMd, &_s10RealityKit16__REAssetService_pMR);
    type metadata accessor for __REAssetManager();
    result = swift_dynamicCast();
    if (result)
    {
      v38 = *(v40[1] + 88);
      if (_REAssetManagerIsFullLoadTracingEnabled())
      {
        v39 = *(a1 + 16);
        REEntityAddLoadTraceComponent();
      }
    }
  }

  return result;
}

void closure #1 in LoadTracer.subscribe<A>(to:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Trace = type metadata accessor for LoadTrace(0);
  v6 = Trace - 8;
  v7 = *(*(Trace - 8) + 64);
  MEMORY[0x1EEE9AC00](Trace);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchTime.now()();
  v15 = DispatchTime.uptimeNanoseconds.getter();
  (*(v11 + 8))(v14, v10);
  v16 = a2 + *(v6 + 44);
  v17 = DispatchTime.uptimeNanoseconds.getter();
  v18 = v15 >= v17;
  v19 = v15 - v17;
  if (v18)
  {
    v20 = *(a2 + 4);
    if (v20 == 1)
    {
      v21 = 0xEB0000000073756FLL;
      v22 = 0x6E6F7268636E7973;
    }

    else if (v20 == 2)
    {
      v21 = 0xEC00000073756F6ELL;
      v22 = 0x6F7268636E797361;
    }

    else
    {
      v22 = *(a3 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_unknownLoadTypeMsg);
      v21 = *(a3 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_unknownLoadTypeMsg + 8);
    }

    outlined init with copy of __SceneImportOperation.__ImportedScene(a2, v9, type metadata accessor for LoadTrace);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = v19 / 1000000000.0;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315906;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a3 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_logPrefix), *(a3 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_logPrefix + 8), &v33);
      *(v26 + 12) = 2080;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v33);

      *(v26 + 14) = v28;
      *(v26 + 22) = 2080;
      v29 = *(v9 + 3);
      v30 = *(v9 + 4);

      outlined destroy of __SceneImportOperation.__ImportedScene(v9, type metadata accessor for LoadTrace);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v33);

      *(v26 + 24) = v31;
      *(v26 + 32) = 2048;
      *(v26 + 34) = v25;
      _os_log_impl(&dword_1C1358000, v23, v24, "%sFinished loading %s %s in %fs", v26, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v27, -1, -1);
      MEMORY[0x1C6902A30](v26, -1, -1);
    }

    else
    {

      outlined destroy of __SceneImportOperation.__ImportedScene(v9, type metadata accessor for LoadTrace);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t LoadTracer.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC17RealityFoundation10LoadTracer_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC17RealityFoundation10LoadTracer_logPrefix + 8];

  v5 = *&v0[OBJC_IVAR____TtC17RealityFoundation10LoadTracer_unknownLoadTypeMsg + 8];

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t LoadManager.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t LoadManager.init()()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8098], v6);
  static DispatchQoS.unspecified.getter();
  v11 = MEMORY[0x1E69E7CC0];
  v21[1] = MEMORY[0x1E69E7CC0];
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  Tracer = type metadata accessor for LoadTracer(0);
  v13 = *(Tracer + 48);
  v14 = *(Tracer + 52);
  v15 = swift_allocObject();
  *(v15 + 16) = 1;
  *(v15 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt32V_17RealityFoundation9LoadTraceVTt0g5Tf4g_n(v11);
  Logger.init(subsystem:category:)();
  v16 = (v15 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_logPrefix);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v15 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_unknownLoadTypeMsg);
  *v17 = 0xD000000000000018;
  v17[1] = 0x80000001C18E6E50;
  *(v1 + 24) = v15;
  type metadata accessor for __SceneResourceCache();
  v18 = swift_allocObject();
  *(v18 + 16) = specialized __SceneResourceCache.CachedEntries.init()();
  *(v18 + 24) = v19;
  *(v1 + 32) = v18;
  return v1;
}

Swift::Void __swiftcall Entity.__setLoadContext(_:)(RealityKit::__SceneResourceLoadResultLoadContext_optional a1)
{
  if (*(a1.value.fileName._countAndFlagsBits + 8))
  {
    v3 = *a1.value.fileName._countAndFlagsBits;

    v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  }

  else
  {
    v2 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v1, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey, v2, 0x301);
  swift_endAccess();
  swift_unknownObjectRelease();
}

RealityKit::__SceneResourceLoadResultLoadContext_optional __swiftcall Entity.__fetchLoadContext()()
{
  v2 = v0;
  swift_beginAccess();
  v3 = objc_getAssociatedObject(v1, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey);
  swift_endAccess();
  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    v4 = swift_dynamicCast();
    if (v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = outlined destroy of BodyTrackingComponent?(v9, &_sypSgMd, &_sypSgMR);
  }

  *v2 = 0;
  v2[1] = 0;
LABEL_9:
  result.value.fileName._object = v5;
  result.value.fileName._countAndFlagsBits = v4;
  result.is_nil = v6;
  return result;
}

uint64_t Entity.__fetchSceneResourceCacheEntry()()
{
  if (objc_getAssociatedObject(v0, "RealityKit.SceneResourceCacheEntry"))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    type metadata accessor for __SceneResourceCache.Entry();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v5, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

Swift::Void __swiftcall Entity.setLoadContext(fileName:)(Swift::String fileName)
{
  swift_bridgeObjectRetain_n();
  v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  swift_beginAccess();
  objc_setAssociatedObject(v1, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey, v2, 0x301);
  swift_endAccess();

  swift_unknownObjectRelease();
}

uint64_t __SceneResourceCache.Entry.activeSceneAssets.getter()
{
  v1 = type metadata accessor for __SceneResourceCache.ImportedScene(0);
  v29 = *(v1 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  result = outlined init with copy of __SceneResourceCache.Entry.EntryHolder(v0 + 16, v34);
  if (v36)
  {
    v12 = *&v34[0];
    v13 = MEMORY[0x1E69E7CC0];
    v32 = *(*&v34[0] + 16);
    if (v32)
    {
      v14 = 0;
      v31 = v1;
      v15 = v29;
      v30 = v7;
      while (v14 < *(v12 + 16))
      {
        v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v17 = *(v15 + 72);
        outlined init with copy of __SceneImportOperation.__ImportedScene(v12 + v16 + v17 * v14, v10, type metadata accessor for __SceneResourceCache.ImportedScene);
        if (v10[*(v1 + 28)] == 1)
        {
          outlined init with take of __SceneResourceCache.ImportedScene(v10, v7);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v33[0] = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1);
            v15 = v29;
            v13 = *&v33[0];
          }

          v20 = *(v13 + 16);
          v19 = *(v13 + 24);
          if (v20 >= v19 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1);
            v15 = v29;
            v13 = *&v33[0];
          }

          *(v13 + 16) = v20 + 1;
          v21 = v13 + v16 + v20 * v17;
          v7 = v30;
          result = outlined init with take of __SceneResourceCache.ImportedScene(v30, v21);
          v1 = v31;
        }

        else
        {
          result = outlined destroy of __SceneImportOperation.__ImportedScene(v10, type metadata accessor for __SceneResourceCache.ImportedScene);
        }

        if (v32 == ++v14)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
      v15 = v29;
LABEL_15:

      v23 = *(v13 + 16);
      if (v23)
      {
        *&v33[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v24 = v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v25 = *(v15 + 72);
        do
        {
          outlined init with copy of __SceneImportOperation.__ImportedScene(v24, v4, type metadata accessor for __SceneResourceCache.ImportedScene);
          v26 = *&v4[*(v1 + 24)];

          outlined destroy of __SceneImportOperation.__ImportedScene(v4, type metadata accessor for __SceneResourceCache.ImportedScene);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v27 = *(*&v33[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v24 += v25;
          --v23;
        }

        while (v23);

        return *&v33[0];
      }

      else
      {

        return MEMORY[0x1E69E7CC0];
      }
    }
  }

  else
  {
    v33[0] = v34[0];
    v33[1] = v34[1];
    v33[2] = v34[2];
    v33[3] = v35;
    v22 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy10RealityKit9__REAssetC0D10Foundation17RESceneDescriptorCG_AHs5NeverOTg504_s10d57Kit20__SceneResourceCacheC5EntryC06activeC6AssetsSayAA9__f28CGvgA2H3key_0A10Foundation17hI15C5valuet_tXEfU_Tf1cn_n(*(&v35 + 1));
    outlined destroy of __REAssetBundle(v33);
    return v22;
  }

  return result;
}

uint64_t __SceneResourceCache.Entry.registerWithSceneLookupTable()()
{
  v1 = type metadata accessor for __SceneResourceCache.ImportedScene(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v42 - v8;
  v10 = type metadata accessor for UUID();
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v42 - v15;
  if (one-time initialization token for shared != -1)
  {
LABEL_26:
    swift_once();
  }

  v16 = static __RKSceneAssetLookupTable.shared;
  v17 = outlined init with copy of __SceneResourceCache.Entry.EntryHolder(v0 + 16, v52);
  if (v53)
  {
    v18 = *(*&v52[0] + 16);
    if (v18)
    {
      v49 = *(v1 + 24);
      v19 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v47 = *&v52[0];
      v20 = *&v52[0] + v19;
      v48 = *(v2 + 72);
      v50 = v16;
      v21 = (v43 + 16);
      v22 = (v43 + 8);
      do
      {
        outlined init with copy of __SceneImportOperation.__ImportedScene(v20, v5, type metadata accessor for __SceneResourceCache.ImportedScene);
        v23 = *(v5 + v49);
        (*v21)(v13, v5, v10);

        outlined destroy of __SceneImportOperation.__ImportedScene(v5, type metadata accessor for __SceneResourceCache.ImportedScene);
        v24 = v50[2];
        isa = UUID._bridgeToObjectiveC()().super.isa;
        [v24 setObject:v23 forKey:isa];

        (*v22)(v13, v10);
        v20 += v48;
        --v18;
      }

      while (v18);
    }
  }

  v50 = v16;
  v51[0] = v52[0];
  v51[1] = v52[1];
  v51[2] = v52[2];
  v51[3] = v52[3];
  MEMORY[0x1EEE9AC00](v17);
  *(&v42 - 2) = v51;
  v28 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in __REAssetBundle.getSceneDescriptors(), (&v42 - 4), v27);
  v5 = v28;
  if (!(v28 >> 62))
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_9;
    }

LABEL_28:

    return outlined destroy of __REAssetBundle(v51);
  }

  v29 = __CocoaSet.count.getter();
  if (!v29)
  {
    goto LABEL_28;
  }

LABEL_9:
  v2 = 0;
  v13 = (v5 & 0xC000000000000001);
  v49 = v5 & 0xFFFFFFFFFFFFFF8;
  v48 = (v43 + 48);
  v44 = (v43 + 32);
  v43 += 8;
  v46 = v5;
  v45 = v5 & 0xC000000000000001;
  while (1)
  {
    if (v13)
    {
      v30 = MEMORY[0x1C68F41F0](v2, v5);
      v31 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v2 >= *(v49 + 16))
      {
        goto LABEL_25;
      }

      v30 = *(v5 + 8 * v2 + 32);

      v31 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    result = __REAssetBundle.sceneAsset(for:)(v30);
    if (!result)
    {
      break;
    }

    v1 = result;
    v32 = *(v30 + 16);
    RESceneDescriptorGetSceneIdentifier();
    v33 = String.init(cString:)();
    v0 = v34;
    v35 = (v34 >> 56) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v35 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {
      UUID.init(uuidString:)();

      if ((*v48)(v9, 1, v10) == 1)
      {

        outlined destroy of BodyTrackingComponent?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v36 = v29;
        v37 = v47;
        (*v44)(v47, v9, v10);
        v38 = v9;
        v39 = v10;
        v40 = v50[2];
        v0 = UUID._bridgeToObjectiveC()().super.isa;
        [v40 setObject:v1 forKey:v0];

        v10 = v39;
        v9 = v38;

        v41 = v37;
        v5 = v46;
        v29 = v36;
        v13 = v45;
        (*v43)(v41, v10);
      }
    }

    else
    {
    }

    ++v2;
    if (v31 == v29)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

uint64_t __SceneResourceCache.Entry.__deallocating_deinit()
{
  outlined destroy of __SceneResourceCache.Entry.EntryHolder(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t static __SceneResourceCache.attachImportedScenesForSceneChangeToEntity(importedScenes:entity:)(uint64_t a1, void *a2)
{
  v30 = type metadata accessor for __SceneImportOperation.__ImportedScene(0);
  v4 = *(v30 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for __SceneResourceCache.ImportedScene(0);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v26 = a2;
    v31 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = v31;
    v14 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v27 = *(v4 + 72);
    do
    {
      outlined init with copy of __SceneImportOperation.__ImportedScene(v14, v7, type metadata accessor for __SceneImportOperation.__ImportedScene);
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 16))(v11, v7, v15);
      v16 = &v7[v30[5]];
      v18 = *v16;
      v17 = *(v16 + 1);
      v19 = *&v7[v30[6]];
      v20 = v7[v30[7]];

      outlined destroy of __SceneImportOperation.__ImportedScene(v7, type metadata accessor for __SceneImportOperation.__ImportedScene);
      v21 = v29;
      v22 = &v11[*(v29 + 20)];
      *v22 = v18;
      *(v22 + 1) = v17;
      *&v11[*(v21 + 24)] = v19;
      v11[*(v21 + 28)] = v20;
      v31 = v13;
      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1);
        v13 = v31;
      }

      *(v13 + 16) = v24 + 1;
      outlined init with take of __SceneResourceCache.ImportedScene(v11, v13 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24);
      v14 += v27;
      --v12;
    }

    while (v12);
    a2 = v26;
  }

  specialized static __SceneResourceCache.attachImportedScenesForSceneChangeToEntity(importedScenes:entity:)(v13, a2);
}

id closure #1 in __SceneResourceCache.CachedEntries.getOrCreateCacheEntry(for:assetBundle:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  result = [a1 objectForKey_];
  if (!result)
  {
    outlined init with copy of __REAssetBundle(a3, v12);
    type metadata accessor for __SceneResourceCache.Entry();
    v9 = swift_allocObject();
    v10 = v12[1];
    *(v9 + 16) = v12[0];
    *(v9 + 32) = v10;
    v11 = v12[3];
    *(v9 + 48) = v12[2];
    *(v9 + 64) = v11;
    *(v9 + 80) = 0;
    [a1 setObject:v9 forKey:a2];
    result = v9;
  }

  *a4 = result;
  return result;
}

id closure #1 in __SceneResourceCache.CachedEntries.getOrCreateCacheEntry(for:importedScenes:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  result = [a1 objectForKey_];
  if (!result)
  {
    type metadata accessor for __SceneResourceCache.Entry();
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 80) = 1;

    [a1 setObject:v9 forKey:a2];
    result = v9;
  }

  *a4 = result;
  return result;
}

uint64_t static __SceneResourceCache.__init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = specialized __SceneResourceCache.CachedEntries.init()();
  *(v0 + 24) = v1;
  return v0;
}

uint64_t __SceneResourceCache.findSceneResource(named:realityFileRef:fileName:url:options:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v9 = v8;
  v101 = a5;
  v107 = a7;
  v104 = a6;
  v100 = a4;
  v112 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v108 = &v97 - v15;
  v102 = type metadata accessor for URL();
  v16 = *(v102 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v102);
  v103 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a1;
  v20 = MEMORY[0x1C68F3280](a1, a2, v18);
  v21 = [v20 pathExtension];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v22 == 0x7974696C616572 && v24 == 0xE700000000000000)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {

      goto LABEL_10;
    }
  }

  v27 = String.count.getter();
  v28 = __OFADD__(v27, 1);
  result = v27 + 1;
  if (v28)
  {
    goto LABEL_58;
  }

  v30 = specialized BidirectionalCollection.dropLast(_:)(result);
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v113 = MEMORY[0x1C68F3380](v30, v32, v34, v36);
  a2 = v37;

LABEL_10:
  result = specialized static __REAssetBundle.getSceneDescriptorsFromRealityFile(realityFile:)();
  v38 = result;
  v39 = *(result + 16);
  if (!v39)
  {
LABEL_26:

    a8[4] = 0;
    *a8 = 0u;
    *(a8 + 1) = 0u;
    return result;
  }

  v40 = 0;
  v41 = result + 32;
  v105 = result;
  v106 = v8;
  v98 = v39;
  v99 = a8;
  v110 = v16;
  v97 = result + 32;
  while (2)
  {
    if (v40 < *(v38 + 16))
    {
      v111 = v40;
      v109 = *(v41 + 8 * v40);
      if (RESceneDescriptorGetSceneName())
      {
        v42 = String.init(cString:)();
        v126 = v43;
      }

      else
      {
        v42 = 0;
        v126 = 0xE000000000000000;
      }

      if (v42 == v113 && v126 == a2)
      {

        v42 = v113;
      }

      else
      {
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          ++v111;
          v44 = 5;
          v45 = &unk_1F40E4018;
          while (--v44)
          {
            v47 = *(v45 - 1);
            v48 = *v45;
            v121 = v113;
            v122 = a2;

            MEMORY[0x1C68F3410](46, 0xE100000000000000);

            MEMORY[0x1C68F3410](v47, v48);

            if (v42 == v121 && v126 == v122)
            {

LABEL_27:

              v9 = v106;
              v16 = v110;
              goto LABEL_28;
            }

            v45 += 2;
            v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v46)
            {
              goto LABEL_27;
            }
          }

          a8 = v99;
          v16 = v110;
          v40 = v111;
          v38 = v105;
          v9 = v106;
          v41 = v97;
          if (v111 != v98)
          {
            continue;
          }

          goto LABEL_26;
        }
      }

LABEL_28:
      v49 = v109;
      RERetain();
      type metadata accessor for RESceneDescriptor();
      inited = swift_initStackObject();
      *(inited + 16) = v49;
      v51 = RERealityFileGetCertifiedFreeOfChangeSceneActions();
      v52 = v108;
      if (v51)
      {
        v53 = inited;
        outlined init with copy of __REAssetBundle.LoadOptions(v107, &v121);
        outlined consume of __REAssetBundle.LoadOptions.ContentRequest(v123, v124);
        v123 = v113;
        v124 = a2;
        v54 = specialized static __ServiceLocator.shared.getter();
        swift_beginAccess();
        outlined init with copy of __REAssetService(v54 + 120, v120);
        swift_beginAccess();
        v55 = *(v54 + 16);
        v56 = v125;
        if (v125)
        {

          v57 = v112;
          MajorVersionNumber = RERealityFileGetMajorVersionNumber();
          v59 = v56 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
          *v59 = MajorVersionNumber;
          *(v59 + 8) = 1;
        }

        else
        {

          v57 = v112;
        }

        static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v57, v120, v55, &v121, v114);
        if (!v9)
        {
          __swift_destroy_boxed_opaque_existential_1(v120);

          v71 = __REAssetBundle.sceneAsset(for:)(v53);
          if (v71)
          {
            v72 = v71;

            v73 = *(v72 + 16);
            RERetain();
            type metadata accessor for __SceneResource();
            v74 = swift_allocObject();
            *(v74 + 16) = v73;
            v75 = v99;
            v99[3] = &type metadata for UncachedSceneResourceLoadResult;
            v75[4] = &protocol witness table for UncachedSceneResourceLoadResult;
            v76 = swift_allocObject();
            *v75 = v76;
            swift_setDeallocating();
            v77 = v101;

            RERelease();

            *(v76 + 16) = v74;
            *(v76 + 24) = 0;
            *(v76 + 32) = v100;
            *(v76 + 40) = v77;
          }

          else
          {
            type metadata accessor for SceneResourceLoadResult.InternalError(0);
            _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError);
            swift_allocError();
            v93 = v92;
            v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
            v95 = *(v94 + 48);
            v96 = v126;
            *v93 = v42;
            v93[1] = v96;
            outlined init with copy of [String : String](v104, v93 + v95, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            (*(*(v94 - 8) + 56))(v93, 0, 2, v94);
            swift_willThrow();
          }

          outlined destroy of __REAssetBundle(v114);
          return outlined destroy of __REAssetBundle.LoadOptions(&v121);
        }

        __swift_destroy_boxed_opaque_existential_1(v120);

        goto LABEL_40;
      }

      outlined init with copy of __REAssetBundle.LoadOptions(v107, &v121);
      outlined consume of __REAssetBundle.LoadOptions.ContentRequest(v123, v124);
      v123 = 0;
      v124 = 0;
      outlined init with copy of [String : String](v104, v52, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v60 = v52;
      v61 = *(v16 + 48);
      v62 = v102;
      if (v61(v60, 1, v102) == 1)
      {
        v63 = v9;
        v64 = v62;
        v65 = v103;
        URL.init(fileURLWithPath:)();
        v66 = v61(v60, 1, v64);
        v68 = v65;
        v62 = v64;
        v9 = v63;
        v16 = v110;
        if (v66 != 1)
        {
          outlined destroy of BodyTrackingComponent?(v60, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        }
      }

      else
      {
        v68 = v103;
        (*(v16 + 32))(v103, v60, v62);
      }

      v69 = __SceneResourceCache.loadAssetBundle(realityFile:url:options:)(v112, &v121, v67);
      if (v9)
      {
        (*(v16 + 8))(v68, v62);

LABEL_40:

        return outlined destroy of __REAssetBundle.LoadOptions(&v121);
      }

      v70 = v69;
      outlined init with copy of __SceneResourceCache.Entry.EntryHolder(v69 + 16, v114);
      if (v115 == 1)
      {
        outlined destroy of __SceneResourceCache.Entry.EntryHolder(v114);
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
      }

      else
      {
        v116 = v114[0];
        v117 = v114[1];
        v118 = v114[2];
        v119 = v114[3];
        if (*&v114[0])
        {
          v78 = v62;
          v120[0] = v116;
          v120[1] = v117;
          v120[2] = v118;
          v120[3] = v119;
          v79 = __REAssetBundle.sceneAsset(for:)(inited);
          if (v79)
          {
            v80 = v79;

            v126 = inited;
            v81 = v99;
            v99[3] = &type metadata for SceneResourceLoadResult;
            v81[4] = &protocol witness table for SceneResourceLoadResult;
            v82 = swift_allocObject();
            *v81 = v82;
            v83 = *(v80 + 16);
            v84 = v101;

            RERetain();

            type metadata accessor for __SceneResource();
            v85 = swift_allocObject();
            *(v85 + 16) = v83;
            swift_setDeallocating();
            RERelease();
            v86 = v100;
            *(v82 + 16) = v85;
            *(v82 + 24) = v86;
            *(v82 + 32) = v84;
            *(v82 + 40) = v70;
            *(v82 + 48) = 1;
            outlined destroy of __REAssetBundle(v120);
LABEL_50:
            (*(v16 + 8))(v103, v78);
            return outlined destroy of __REAssetBundle.LoadOptions(&v121);
          }

          outlined destroy of __REAssetBundle(v120);
LABEL_49:
          type metadata accessor for SceneResourceLoadResult.InternalError(0);
          _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError);
          swift_allocError();
          v88 = v87;
          v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
          v90 = *(v89 + 48);
          v91 = v126;
          *v88 = v42;
          v88[1] = v91;
          outlined init with copy of [String : String](v104, v88 + v90, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          (*(*(v89 - 8) + 56))(v88, 0, 2, v89);
          swift_willThrow();

          goto LABEL_50;
        }
      }

      v78 = v62;
      outlined destroy of BodyTrackingComponent?(&v116, &_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
      goto LABEL_49;
    }

    break;
  }

  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t __SceneResourceCache.loadAssetBundle(realityFile:url:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, NSURL *a3@<X8>)
{
  v5 = v3;
  URL._bridgeToObjectiveC()(a3);
  v9 = v8;
  v23 = *(v3 + 24);
  v10 = *(v3 + 16);
  v11 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit20__SceneResourceCacheC5EntryCSgMd, &_s10RealityKit20__SceneResourceCacheC5EntryCSgMR);
  OS_dispatch_queue.sync<A>(execute:)();

  v12 = v25[0];
  if (!v25[0])
  {
    specialized static __ServiceLocator.shared.getter();

    v12 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v12 + 120, v24);
    swift_beginAccess();
    v13 = *(v12 + 16);
    v14 = *(a2 + 120);

    if (v14)
    {
      MajorVersionNumber = RERealityFileGetMajorVersionNumber();
      v16 = v14 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
      *v16 = MajorVersionNumber;
      *(v16 + 8) = 1;
    }

    static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(a1, v24, v13, a2, v25);
    __swift_destroy_boxed_opaque_existential_1(v24);
    if (v4)
    {

      return v12;
    }

    v19 = *(v5 + 16);
    v20 = *(v5 + 24);
    MEMORY[0x1EEE9AC00](v18);
    type metadata accessor for __SceneResourceCache.Entry();
    v21 = v19;
    v22 = v20;
    OS_dispatch_queue.sync<A>(execute:)();

    v12 = v24[0];
    outlined destroy of __REAssetBundle(v25);
  }

  return v12;
}

uint64_t __SceneResourceCache.findSceneResource(realityFileRef:fileName:url:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v48 = a2;
  v49 = a3;
  v47 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v46 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (RERealityFileGetCertifiedFreeOfChangeSceneActions())
  {
    outlined init with copy of __REAssetBundle.LoadOptions(a5, v57);
    outlined consume of __REAssetBundle.LoadOptions.ContentRequest(v58, *(&v58 + 1));
    v58 = xmmword_1C18A4F10;
    v18 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v18 + 120, v56);
    swift_beginAccess();
    v19 = *(v18 + 16);
    v20 = v59;
    if (v59)
    {

      MajorVersionNumber = RERealityFileGetMajorVersionNumber();
      v22 = v20 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
      *v22 = MajorVersionNumber;
      *(v22 + 8) = 1;
    }

    else
    {
    }

    v27 = v60;
    static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(a1, v56, v19, v57, v50);
    __swift_destroy_boxed_opaque_existential_1(v56);

    if (v27)
    {
      return outlined destroy of __REAssetBundle.LoadOptions(v57);
    }

    v28 = *(&v50[0] + 1);
    if (*(&v50[0] + 1) >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_14;
      }
    }

    else if (*((*(&v50[0] + 1) & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      if ((v28 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1C68F41F0](0, v28);
        goto LABEL_17;
      }

      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v29 = *(v28 + 32);

LABEL_17:
        v30 = *(v29 + 16);
        RERetain();
        type metadata accessor for __SceneResource();
        v31 = swift_allocObject();
        *(v31 + 16) = v30;
        v32 = v47;
        v47[3] = &type metadata for UncachedSceneResourceLoadResult;
        v32[4] = &protocol witness table for UncachedSceneResourceLoadResult;
        v33 = swift_allocObject();
        *v32 = v33;
        v34 = v49;

        *(v33 + 16) = v31;
        *(v33 + 24) = 0;
        *(v33 + 32) = v48;
        *(v33 + 40) = v34;
        v35 = v50;
LABEL_27:
        outlined destroy of __REAssetBundle(v35);
        return outlined destroy of __REAssetBundle.LoadOptions(v57);
      }

      __break(1u);
LABEL_34:
      result = __CocoaSet.count.getter();
      if (!result)
      {
        goto LABEL_35;
      }

      goto LABEL_23;
    }

    v44 = v50;
LABEL_36:
    outlined destroy of __REAssetBundle(v44);
    goto LABEL_37;
  }

  outlined init with copy of __REAssetBundle.LoadOptions(a5, v57);
  outlined consume of __REAssetBundle.LoadOptions.ContentRequest(v58, *(&v58 + 1));
  v58 = 0uLL;
  outlined init with copy of [String : String](a4, v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v23 = *(v14 + 48);
  if (v23(v12, 1, v13) == 1)
  {
    URL.init(fileURLWithPath:)();
    if (v23(v12, 1, v13) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
  }

  v25 = v60;
  v26 = __SceneResourceCache.loadAssetBundle(realityFile:url:options:)(a1, v57, v24);
  if (v25)
  {
    (*(v14 + 8))(v17, v13);
    return outlined destroy of __REAssetBundle.LoadOptions(v57);
  }

  a1 = v26;
  outlined init with copy of __SceneResourceCache.Entry.EntryHolder(v26 + 16, v50);
  if (v51 == 1)
  {
    outlined destroy of __SceneResourceCache.Entry.EntryHolder(v50);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
LABEL_29:
    (*(v14 + 8))(v17, v13);

    outlined destroy of BodyTrackingComponent?(&v52, &_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
LABEL_37:
    result = outlined destroy of __REAssetBundle.LoadOptions(v57);
    v45 = v47;
    v47[4] = 0;
    *v45 = 0u;
    *(v45 + 1) = 0u;
    return result;
  }

  v52 = v50[0];
  v53 = v50[1];
  v54 = v50[2];
  v55 = v50[3];
  if (!*&v50[0])
  {
    goto LABEL_29;
  }

  v56[0] = v52;
  v56[1] = v53;
  v56[2] = v54;
  v56[3] = v55;
  v28 = *(&v52 + 1);
  if (*(&v52 + 1) >> 62)
  {
    goto LABEL_34;
  }

  result = *((*(&v52 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_35:

    (*(v14 + 8))(v17, v13);
    v44 = v56;
    goto LABEL_36;
  }

LABEL_23:
  if ((v28 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x1C68F41F0](0, v28);
    goto LABEL_26;
  }

  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = *(v28 + 32);

LABEL_26:
    v38 = v47;
    v47[3] = &type metadata for SceneResourceLoadResult;
    v38[4] = &protocol witness table for SceneResourceLoadResult;
    v39 = swift_allocObject();
    *v38 = v39;
    v40 = *(v37 + 16);

    RERetain();

    type metadata accessor for __SceneResource();
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    v43 = v48;
    v42 = v49;
    *(v39 + 16) = v41;
    *(v39 + 24) = v43;
    *(v39 + 32) = v42;
    *(v39 + 40) = a1;
    *(v39 + 48) = 0;
    (*(v14 + 8))(v17, v13);
    v35 = v56;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

void __SceneResourceCache.findSceneResource(named:bundle:options:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v187 = a4;
  v199 = a2;
  v231 = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v172 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v182 = &v172 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v204 = &v172 - v15;
  v16 = type metadata accessor for URL();
  v194 = *(v16 - 8);
  v17 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v172 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v186 = &v172 - v21;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v172 - v24;
  v26 = MEMORY[0x1C68F3280](0x7974696C616572, 0xE700000000000000, v23);
  v181 = a3;
  v27 = [a3 URLsForResourcesWithExtension:v26 subdirectory:0];

  if (!v27)
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    goto LABEL_112;
  }

  v175 = a5;
  v176 = v19;
  v201 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v193 = a1;
  v28 = MEMORY[0x1C68F3280](a1, v199);
  v29 = [v28 pathExtension];

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v191 = v25;
  if (v30 == 0x7974696C616572 && v32 == 0xE700000000000000)
  {

    v33 = v194;
LABEL_7:

    v35 = String.count.getter();
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_120;
    }

    v38 = specialized BidirectionalCollection.dropLast(_:)(v37);
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v177 = MEMORY[0x1C68F3380](v38, v40, v42, v44);
    v178 = v45;

    goto LABEL_10;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v33 = v194;
  if (v34)
  {
    goto LABEL_7;
  }

  v177 = v193;
  v178 = v46;
LABEL_10:
  v47 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v47 + 120, &v222);
  v48 = v223;
  v49 = v224;
  __swift_project_boxed_opaque_existential_1(&v222, v223);
  v50 = *(v49 + 32);
  v179 = v47;

  v205 = v50(v48, v49);
  __swift_destroy_boxed_opaque_existential_1(&v222);
  v51 = v201;
  v197 = *(v201 + 16);
  if (!v197)
  {

    v190 = 0;
    goto LABEL_88;
  }

  v190 = 0;
  v52 = 0;
  v198 = v201 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
  v188 = (v33 + 56);
  v53 = HIBYTE(v199) & 0xF;
  if ((v199 & 0x2000000000000000) == 0)
  {
    v53 = v193;
  }

  v54 = 7;
  if (((v199 >> 60) & ((v193 & 0x800000000000000) == 0)) != 0)
  {
    v54 = 11;
  }

  v183 = v54 | (v53 << 16);
  v180 = (v33 + 48);
  v200 = (v33 + 8);
  v173 = 0x80000001C18E1F00;
  v174 = (v33 + 32);
  v192 = v16;
  v55 = v191;
  v208 = v11;
  v195 = v33 + 16;
  do
  {
    if (v52 >= *(v51 + 16))
    {
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
    }

    v56 = *(v33 + 72);
    v206 = v52;
    v57 = *(v33 + 16);
    v57(v55, v198 + v56 * v52, v16);
    *&v212 = 0;
    URL._bridgeToObjectiveC()(v58);
    v60 = v59;
    v61 = RERealityFileMountFileAtURL();

    if (!v61)
    {
      v71 = v207;
      specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v212);
      v72 = v71;
      if (!v71)
      {
        v73 = v212;
        if (v212)
        {
          type metadata accessor for CFErrorRef(0);
          _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
          v72 = swift_allocError();
          *v74 = v73;
        }

        else
        {
          *&v222 = 0;
          *(&v222 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(34);

          *&v222 = 0xD00000000000001FLL;
          *(&v222 + 1) = v173;
          v133 = URL.path.getter();
          MEMORY[0x1C68F3410](v133);

          MEMORY[0x1C68F3410](46, 0xE100000000000000);
          v134 = v222;
          lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
          v72 = swift_allocError();
          *v135 = v134;
          *(v135 + 16) = 4;
        }

        swift_willThrow();
      }

      v207 = 0;
      (*v200)(v55, v16);
      if (v190)
      {
      }

      else
      {
        v190 = v72;
      }

      goto LABEL_18;
    }

    v210 = v61;
    v196 = URL.lastPathComponent.getter();
    v203 = v62;
    v63 = v204;
    v57(v204, v55, v16);
    (*v188)(v63, 0, 1, v16);
    v64 = v193;
    v65 = v199;
    v66 = MEMORY[0x1C68F3280](v193, v199);
    v67 = [v66 pathExtension];

    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    if (v68 == 0x7974696C616572 && v70 == 0xE700000000000000)
    {
    }

    else
    {
      v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v75 & 1) == 0)
      {

        *&v209 = v64;
        *(&v209 + 1) = v65;
        goto LABEL_32;
      }
    }

    v76 = String.count.getter();
    if (__OFADD__(v76, 1))
    {
      goto LABEL_118;
    }

    if (v76 + 1 < 0)
    {
      goto LABEL_119;
    }

    String.index(_:offsetBy:limitedBy:)();
    v77 = String.subscript.getter();
    v79 = v78;
    v81 = v80;
    v83 = v82;

    *&v209 = MEMORY[0x1C68F3380](v77, v79, v81, v83);
    *(&v209 + 1) = v84;

LABEL_32:
    v85 = v210;
    AssetDescriptorCount = RERealityFileGetAssetDescriptorCount();
    if (AssetDescriptorCount < 0)
    {
      goto LABEL_116;
    }

    v87 = AssetDescriptorCount;
    if (AssetDescriptorCount)
    {
      v88 = 0;
      v89 = MEMORY[0x1E69E7CC0];
      do
      {
        if (RERealityFileGetAssetDescriptorAtIndex())
        {
          v90 = RERealityFileAssetDescriptorAsSceneDescriptor();
          if (v90)
          {
            v91 = v90;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v89 + 2) + 1, 1, v89);
            }

            v93 = *(v89 + 2);
            v92 = *(v89 + 3);
            if (v93 >= v92 >> 1)
            {
              v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1, v89);
            }

            *(v89 + 2) = v93 + 1;
            *&v89[8 * v93 + 32] = v91;
            v11 = v208;
          }

          v85 = v210;
        }

        ++v88;
      }

      while (v87 != v88);
    }

    else
    {
      v89 = MEMORY[0x1E69E7CC0];
    }

    v94 = *(v89 + 2);
    if (!v94)
    {
LABEL_16:

      outlined destroy of BodyTrackingComponent?(v204, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v227 = 0u;
      v228 = 0u;
      v229 = 0;
      v55 = v191;
      v16 = v192;
      goto LABEL_17;
    }

    v95 = 0;
    v96 = v89 + 32;
    v184 = v89 + 32;
    v185 = v94;
LABEL_47:
    if (v95 >= *(v89 + 2))
    {
      goto LABEL_117;
    }

    v202 = *&v96[8 * v95];
    if (RESceneDescriptorGetSceneName())
    {
      v97 = String.init(cString:)();
      v211 = v98;
    }

    else
    {
      v97 = 0;
      v211 = 0xE000000000000000;
    }

    if (__PAIR128__(v211, v97) == v209)
    {

      v97 = v209;
      goto LABEL_62;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {

      goto LABEL_62;
    }

    v189 = v95 + 1;
    v99 = 5;
    v100 = &unk_1F40E4018;
    while (1)
    {
      if (!--v99)
      {

        v96 = v184;
        v95 = v189;
        v33 = v194;
        v11 = v208;
        v85 = v210;
        if (v189 == v185)
        {
          goto LABEL_16;
        }

        goto LABEL_47;
      }

      v103 = *(v100 - 1);
      v102 = *v100;
      v222 = v209;

      MEMORY[0x1C68F3410](46, 0xE100000000000000);

      MEMORY[0x1C68F3410](v103, v102);

      if (__PAIR128__(v211, v97) == v222)
      {
        break;
      }

      v100 += 2;
      v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v101)
      {
        goto LABEL_61;
      }
    }

LABEL_61:

    v33 = v194;
    v11 = v208;
    v85 = v210;
LABEL_62:
    v104 = v202;
    RERetain();
    type metadata accessor for RESceneDescriptor();
    inited = swift_initStackObject();
    *(inited + 16) = v104;
    if ((RERealityFileGetCertifiedFreeOfChangeSceneActions() & 1) == 0)
    {
      v111 = v97;

      outlined init with copy of __REAssetBundle.LoadOptions(v187, &v222);
      outlined consume of __REAssetBundle.LoadOptions.ContentRequest(v225, *(&v225 + 1));
      v225 = 0uLL;
      v112 = v182;
      outlined init with copy of [String : String](v204, v182, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v113 = *v180;
      v114 = v192;
      if ((*v180)(v112, 1, v192) == 1)
      {
        URL.init(fileURLWithPath:)();
        if (v113(v112, 1, v114) != 1)
        {
          outlined destroy of BodyTrackingComponent?(v112, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        }
      }

      else
      {
        (*v174)(v186, v112, v114);
      }

      v116 = v207;
      v117 = __SceneResourceCache.loadAssetBundle(realityFile:url:options:)(v210, &v222, v115);
      v207 = v116;
      if (v116)
      {

        v151 = v200;
        v16 = v192;
        (*v200)(v186, v192);
        v152 = v204;
        goto LABEL_105;
      }

      v118 = v117;
      outlined init with copy of __SceneResourceCache.Entry.EntryHolder(v117 + 16, &v212);
      if (v216)
      {
        outlined destroy of __SceneResourceCache.Entry.EntryHolder(&v212);
        v217 = 0u;
        v218 = 0u;
        v219 = 0u;
        v220 = 0u;
      }

      else
      {
        v217 = v212;
        v218 = v213;
        v219 = v214;
        v220 = v215;
        if (v212)
        {
          v221[0] = v217;
          v221[1] = v218;
          v221[2] = v219;
          v221[3] = v220;
          v119 = __REAssetBundle.sceneAsset(for:)(inited);
          if (v119)
          {
            v120 = v119;

            *(&v228 + 1) = &type metadata for SceneResourceLoadResult;
            v229 = &protocol witness table for SceneResourceLoadResult;
            v121 = swift_allocObject();
            *&v227 = v121;
            v122 = *(v120 + 16);
            v123 = v203;

            RERetain();

            type metadata accessor for __SceneResource();
            v124 = swift_allocObject();
            *(v124 + 16) = v122;
            v125 = v196;
            *(v121 + 16) = v124;
            *(v121 + 24) = v125;
            *(v121 + 32) = v123;
            *(v121 + 40) = v118;
            *(v121 + 48) = 1;
            swift_setDeallocating();
            RERelease();

            outlined destroy of __REAssetBundle(v221);
            v16 = v192;
            (*v200)(v186, v192);
            outlined destroy of BodyTrackingComponent?(v204, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
            outlined destroy of __REAssetBundle.LoadOptions(&v222);
            v33 = v194;
            goto LABEL_78;
          }

          outlined destroy of __REAssetBundle(v221);

LABEL_104:
          type metadata accessor for SceneResourceLoadResult.InternalError(0);
          _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError);
          v160 = swift_allocError();
          v162 = v161;
          v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
          v164 = *(v163 + 48);
          v165 = v211;
          *v162 = v111;
          v162[1] = v165;
          v166 = v204;
          outlined init with copy of [String : String](v204, v162 + v164, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          (*(*(v163 - 8) + 56))(v162, 0, 2, v163);
          v207 = v160;
          swift_willThrow();

          v151 = v200;
          v16 = v192;
          (*v200)(v186, v192);
          v152 = v166;
LABEL_105:
          outlined destroy of BodyTrackingComponent?(v152, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          outlined destroy of __REAssetBundle.LoadOptions(&v222);
LABEL_106:
          RERealityFileUnmount();

          (*v151)(v191, v16);
          goto LABEL_112;
        }
      }

      outlined destroy of BodyTrackingComponent?(&v217, &_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
      goto LABEL_104;
    }

    outlined init with copy of __REAssetBundle.LoadOptions(v187, &v222);
    outlined consume of __REAssetBundle.LoadOptions.ContentRequest(v225, *(&v225 + 1));
    v225 = v209;
    v106 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v106 + 120, v221);
    swift_beginAccess();
    v107 = *(v106 + 16);
    v108 = v226;
    if (v226)
    {

      MajorVersionNumber = RERealityFileGetMajorVersionNumber();
      v110 = v108 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
      *v110 = MajorVersionNumber;
      *(v110 + 8) = 1;
    }

    else
    {
    }

    v126 = v207;
    static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v85, v221, v107, &v222, &v212);
    v207 = v126;
    if (v126)
    {
      __swift_destroy_boxed_opaque_existential_1(v221);

      outlined destroy of BodyTrackingComponent?(v204, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of __REAssetBundle.LoadOptions(&v222);
      v16 = v192;
      v151 = v200;
      goto LABEL_106;
    }

    __swift_destroy_boxed_opaque_existential_1(v221);

    v127 = __REAssetBundle.sceneAsset(for:)(inited);
    v16 = v192;
    if (!v127)
    {

      type metadata accessor for SceneResourceLoadResult.InternalError(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError);
      v153 = swift_allocError();
      v155 = v154;
      v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
      v157 = *(v156 + 48);
      v158 = v211;
      *v155 = v97;
      v155[1] = v158;
      v159 = v204;
      outlined init with copy of [String : String](v204, v155 + v157, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(*(v156 - 8) + 56))(v155, 0, 2, v156);
      v207 = v153;
      swift_willThrow();

      outlined destroy of __REAssetBundle(&v212);
      outlined destroy of BodyTrackingComponent?(v159, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of __REAssetBundle.LoadOptions(&v222);
      v151 = v200;
      goto LABEL_106;
    }

    v128 = v127;

    v129 = *(v128 + 16);
    RERetain();
    type metadata accessor for __SceneResource();
    v130 = swift_allocObject();
    *(v130 + 16) = v129;
    *(&v228 + 1) = &type metadata for UncachedSceneResourceLoadResult;
    v229 = &protocol witness table for UncachedSceneResourceLoadResult;
    v131 = swift_allocObject();
    *&v227 = v131;
    *(v131 + 16) = v130;
    *(v131 + 24) = 0;
    v132 = v203;
    *(v131 + 32) = v196;
    *(v131 + 40) = v132;
    swift_setDeallocating();
    RERelease();

    outlined destroy of __REAssetBundle(&v212);
    outlined destroy of BodyTrackingComponent?(v204, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of __REAssetBundle.LoadOptions(&v222);
LABEL_78:
    v55 = v191;
    if (*(&v228 + 1))
    {

      outlined init with take of ForceEffectBase(&v227, v230);
      outlined init with take of ForceEffectBase(v230, v175);
      RERealityFileUnmount();

      (*v200)(v55, v16);
      goto LABEL_112;
    }

LABEL_17:
    outlined destroy of BodyTrackingComponent?(&v227, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMR);
    RERealityFileUnmount();
    (*v200)(v55, v16);
LABEL_18:
    v52 = v206 + 1;
    v51 = v201;
  }

  while (v206 + 1 != v197);

LABEL_88:
  v136 = MEMORY[0x1C68F3280](v177, v178);

  v137 = MEMORY[0x1C68F3280](0x7974696C616572, 0xE700000000000000);
  v138 = [v181 URLForResource:v136 withExtension:v137 subdirectory:0];

  if (!v138)
  {
LABEL_108:
    v167 = v175;
    if (!v190)
    {

      *(v167 + 32) = 0;
      *v167 = 0u;
      *(v167 + 16) = 0u;
      goto LABEL_112;
    }

    swift_willThrow();
    goto LABEL_110;
  }

  v139 = v176;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  *&v221[0] = 0;
  URL._bridgeToObjectiveC()(v140);
  v142 = v141;
  v143 = RERealityFileMountFileAtURL();

  if (v143)
  {
    v144 = URL.lastPathComponent.getter();
    v146 = v145;
    (*(v33 + 16))(v11, v139, v16);
    (*(v33 + 56))(v11, 0, 1, v16);
    v147 = v207;
    __SceneResourceCache.findSceneResource(realityFileRef:fileName:url:options:)(v143, v144, v146, v11, v187, &v212);
    v207 = v147;
    if (v147)
    {
      outlined destroy of BodyTrackingComponent?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      RERealityFileUnmount();

      (*(v33 + 8))(v139, v16);
      goto LABEL_112;
    }

    outlined destroy of BodyTrackingComponent?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    if (*(&v213 + 1))
    {
      outlined init with take of ForceEffectBase(&v212, &v222);
      outlined init with take of ForceEffectBase(&v222, v175);
      RERealityFileUnmount();

      (*(v33 + 8))(v176, v16);
      goto LABEL_112;
    }

    outlined destroy of BodyTrackingComponent?(&v212, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMR);
    RERealityFileUnmount();
    (*(v33 + 8))(v176, v16);
    goto LABEL_108;
  }

  v148 = v207;
  specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(*&v221[0]);
  if (v148)
  {
    (*(v33 + 8))(v139, v16);

LABEL_110:

    goto LABEL_112;
  }

  v149 = *&v221[0];
  if (*&v221[0])
  {
    type metadata accessor for CFErrorRef(0);
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
    swift_allocError();
    *v150 = v149;
  }

  else
  {
    *&v222 = 0;
    *(&v222 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    *&v222 = 0xD00000000000001FLL;
    *(&v222 + 1) = 0x80000001C18E1F00;
    v169 = URL.path.getter();
    MEMORY[0x1C68F3410](v169);

    MEMORY[0x1C68F3410](46, 0xE100000000000000);
    v170 = v222;
    lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
    swift_allocError();
    *v171 = v170;
    *(v171 + 16) = 4;
  }

  swift_willThrow();

  (*(v33 + 8))(v139, v16);
LABEL_112:
  v168 = *MEMORY[0x1E69E9840];
}

uint64_t __SceneResourceCache.loadSceneResource(url:sceneName:loadOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v105 = a2;
  v102 = a5;
  v121 = *MEMORY[0x1E69E9840];
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  outlined init with copy of __REAssetBundle.LoadOptions(a4, v114);
  v9 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v9 + 120, &v108);
  v10 = *(&v109 + 1);
  v11 = v110;
  __swift_project_boxed_opaque_existential_1(&v108, *(&v109 + 1));
  v12 = *(v11 + 32);
  v106 = v9;

  v13 = v11;
  v14 = a1;
  v15 = v12(v10, v13);
  __swift_destroy_boxed_opaque_existential_1(&v108);
  v113 = 0;
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  v19 = RERealityFileMountFileAtURL();

  if (!v19)
  {
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v113);
    if (v5)
    {
      outlined destroy of BodyTrackingComponent?(&v117, &_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);

LABEL_52:
      result = outlined destroy of __REAssetBundle.LoadOptions(v114);
LABEL_53:
      v63 = *MEMORY[0x1E69E9840];
      return result;
    }

    v26 = v113;
    if (v113)
    {
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      swift_allocError();
      *v27 = v26;
    }

    else
    {
      *&v108 = 0;
      *(&v108 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      *&v108 = 0xD00000000000001FLL;
      *(&v108 + 1) = 0x80000001C18E1F00;
      v60 = URL.path.getter();
      MEMORY[0x1C68F3410](v60);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      v61 = v108;
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v62 = v61;
      *(v62 + 16) = 4;
    }

    swift_willThrow();
    goto LABEL_50;
  }

  v103 = v15;
  v100 = RERealityFileGetCertifiedFreeOfChangeSceneActions();
  if (v100)
  {
    v101 = v19;
    v20 = a3;
    if (a3)
    {
      v21 = v105;
    }

    else
    {
      v21 = 0;
    }

    if (a3 <= 1)
    {
      a3 = 1;
    }

    v23 = v115;
    v22 = v116;

    outlined consume of __REAssetBundle.LoadOptions.ContentRequest(v23, v22);
    v115 = v21;
    v116 = a3;
    v24 = specialized static __ServiceLocator.shared.getter();

    closure #1 in __SceneResourceCache.initAssetBundle(url:loadOptions:)(a1, v24, v114, &v108);
    if (v6)
    {

LABEL_13:
      RERealityFileUnmount();
LABEL_50:

      goto LABEL_51;
    }

    outlined destroy of BodyTrackingComponent?(&v117, &_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);

    v28 = 0;
    v117 = v108;
    v118 = v109;
    v119 = v110;
    v120 = v111;
  }

  else
  {
    outlined consume of __REAssetBundle.LoadOptions.ContentRequest(v115, v116);
    v115 = 0;
    v116 = 0;
    v25 = __SceneResourceCache.loadAssetBundle(url:loadOptions:)(a1, v114);
    if (v5)
    {
      goto LABEL_13;
    }

    v28 = v25;
    v20 = a3;
    outlined destroy of BodyTrackingComponent?(&v117, &_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
    outlined init with copy of __SceneResourceCache.Entry.EntryHolder(v28 + 16, &v108);
    v101 = v19;
    if (v112)
    {
      outlined destroy of __SceneResourceCache.Entry.EntryHolder(&v108);
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
    }

    else
    {
      v29 = v108;
      v30 = v109;
      v31 = v110;
      v32 = v111;
    }

    v117 = v29;
    v118 = v30;
    v119 = v31;
    v120 = v32;
  }

  v33 = outlined init with copy of [String : String](&v117, v107, &_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
  if (!*&v107[0])
  {
LABEL_40:
    outlined destroy of BodyTrackingComponent?(v107, &_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
    type metadata accessor for SceneResourceLoadResult.InternalError(0);
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError);
    swift_allocError();
    v46 = v45;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
    (*(*(v47 - 8) + 56))(v46, 1, 2, v47);
    swift_willThrow();
    RERealityFileUnmount();

LABEL_51:
    outlined destroy of BodyTrackingComponent?(&v117, &_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
    goto LABEL_52;
  }

  v98 = v28;
  v108 = v107[0];
  v109 = v107[1];
  v110 = v107[2];
  v111 = v107[3];
  if (v20)
  {
    v34 = *(&v108 + 1);
    MEMORY[0x1EEE9AC00](v33);
    v95[2] = &v108;

    v35 = specialized Sequence.compactMap<A>(_:)(closure #1 in __REAssetBundle.getSceneDescriptors()partial apply, v95, v34);
    v36 = v35;
    v97 = 0;
    if (v35 >> 62)
    {
LABEL_67:
      v37 = __CocoaSet.count.getter();
      v96 = v14;
      if (v37)
      {
LABEL_25:
        v38 = 0;
        v104 = v36 & 0xC000000000000001;
        v99 = v36 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v104)
          {
            v39 = MEMORY[0x1C68F41F0](v38, v36);
            v40 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }
          }

          else
          {
            if (v38 >= *(v99 + 16))
            {
              __break(1u);
              goto LABEL_67;
            }

            v39 = *(v36 + 8 * v38 + 32);

            v40 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              goto LABEL_39;
            }
          }

          v41 = *(v39 + 16);
          SceneName = RESceneDescriptorGetSceneName();
          if (SceneName)
          {
            SceneName = String.init(cString:)();
            v44 = v43;
          }

          else
          {
            v44 = 0xE000000000000000;
          }

          if (SceneName == v105 && v44 == v20)
          {
            break;
          }

          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v14)
          {
            goto LABEL_55;
          }

          ++v38;
          if (v40 == v37)
          {
            goto LABEL_68;
          }
        }

LABEL_55:

        v64 = __REAssetBundle.sceneAsset(for:)(v39);
        if (!v64)
        {

          goto LABEL_69;
        }

        v65 = v64;
        if (v100)
        {

          v66 = URL.lastPathComponent.getter();
          v68 = v67;
          v69 = *(v65 + 16);
          RERetain();

          type metadata accessor for __SceneResource();
          v70 = swift_allocObject();
          *(v70 + 16) = v69;
          v71 = v102;
          v102[3] = &type metadata for UncachedSceneResourceLoadResult;
          v71[4] = &protocol witness table for UncachedSceneResourceLoadResult;
          v72 = swift_allocObject();
          *v71 = v72;

          *(v72 + 16) = v70;
          *(v72 + 24) = 0;
          *(v72 + 32) = v66;
          *(v72 + 40) = v68;
          outlined destroy of __REAssetBundle(&v108);
          goto LABEL_58;
        }

        result = URL.lastPathComponent.getter();
        v79 = v98;
        if (v98)
        {
          v80 = result;
          v81 = v78;

          v82 = v102;
          v102[3] = &type metadata for SceneResourceLoadResult;
          v82[4] = &protocol witness table for SceneResourceLoadResult;
          v83 = swift_allocObject();
          *v82 = v83;
          v84 = *(v65 + 16);
          RERetain();

          type metadata accessor for __SceneResource();
          v85 = swift_allocObject();
          *(v85 + 16) = v84;

          *(v83 + 16) = v85;
          *(v83 + 24) = v80;
          *(v83 + 32) = v81;
          *(v83 + 40) = v79;
          *(v83 + 48) = 0;
          outlined destroy of __REAssetBundle(&v108);
          RERealityFileUnmount();
          goto LABEL_64;
        }

        goto LABEL_76;
      }
    }

    else
    {
      v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v96 = v14;
      if (v37)
      {
        goto LABEL_25;
      }
    }

LABEL_68:

LABEL_69:
    type metadata accessor for SceneResourceLoadResult.InternalError(0);
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError);
    swift_allocError();
    v87 = v86;
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
    v89 = *(v88 + 48);
    *v87 = v105;
    v87[1] = v20;
    v90 = type metadata accessor for URL();
    v91 = *(v90 - 8);
    (*(v91 + 16))(v87 + v89, v96, v90);
    (*(v91 + 56))(v87 + v89, 0, 1, v90);
    (*(*(v88 - 8) + 56))(v87, 0, 2, v88);
    swift_willThrow();
    outlined destroy of __REAssetBundle(&v108);
LABEL_72:
    RERealityFileUnmount();

    goto LABEL_50;
  }

  v48 = *(&v108 + 1);
  if (!(*(&v108 + 1) >> 62))
  {
    v49 = *((*(&v108 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
    v50 = v101;
    if (v49)
    {
      goto LABEL_43;
    }

LABEL_71:
    type metadata accessor for SceneResourceLoadResult.InternalError(v49);
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError);
    swift_allocError();
    v93 = v92;
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
    (*(*(v94 - 8) + 56))(v93, 1, 2, v94);
    swift_willThrow();
    outlined destroy of __REAssetBundle(&v108);
    goto LABEL_72;
  }

  v49 = __CocoaSet.count.getter();
  v50 = v101;
  if (!v49)
  {
    goto LABEL_71;
  }

LABEL_43:
  v97 = 0;
  if ((v48 & 0xC000000000000001) != 0)
  {
    v51 = MEMORY[0x1C68F41F0](0, v48);
  }

  else
  {
    if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v51 = *(v48 + 32);
  }

  result = URL.lastPathComponent.getter();
  v53 = result;
  v55 = v54;
  if (v100)
  {
    v56 = *(v51 + 16);
    RERetain();
    type metadata accessor for __SceneResource();
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    v58 = v102;
    v102[3] = &type metadata for UncachedSceneResourceLoadResult;
    v58[4] = &protocol witness table for UncachedSceneResourceLoadResult;
    v59 = swift_allocObject();
    *v58 = v59;

    *(v59 + 16) = v57;
    *(v59 + 24) = 0;
    *(v59 + 32) = v53;
    *(v59 + 40) = v55;
    outlined destroy of __REAssetBundle(&v108);
LABEL_58:
    RERealityFileUnmount();

    v106 = v98;
LABEL_65:

    outlined destroy of BodyTrackingComponent?(&v117, &_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
    result = outlined destroy of __REAssetBundle.LoadOptions(v114);
    goto LABEL_53;
  }

  v101 = v50;
  v73 = v98;
  if (v98)
  {
    v74 = v102;
    v102[3] = &type metadata for SceneResourceLoadResult;
    v74[4] = &protocol witness table for SceneResourceLoadResult;
    v75 = swift_allocObject();
    *v74 = v75;
    v76 = *(v51 + 16);

    RERetain();

    type metadata accessor for __SceneResource();
    v77 = swift_allocObject();
    *(v77 + 16) = v76;
    *(v75 + 16) = v77;
    *(v75 + 24) = v53;
    *(v75 + 32) = v55;
    *(v75 + 40) = v73;
    *(v75 + 48) = 0;
    outlined destroy of __REAssetBundle(&v108);
    RERealityFileUnmount();
LABEL_64:

    goto LABEL_65;
  }

  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t __SceneResourceCache.loadAssetBundle(url:loadOptions:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  URL.standardizedFileURL.getter();
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v14 = *(v2 + 24);
  v25 = *(v4 + 16);
  v26 = v14;
  v27 = v12;
  v15 = v25;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit20__SceneResourceCacheC5EntryCSgMd, &_s10RealityKit20__SceneResourceCacheC5EntryCSgMR);
  OS_dispatch_queue.sync<A>(execute:)();

  v17 = *&v29[0];
  if (!*&v29[0])
  {
    v17 = specialized static __ServiceLocator.shared.getter();

    closure #1 in __SceneResourceCache.initAssetBundle(url:loadOptions:)(v10, v17, a2, v28);
    if (v3)
    {

      (*(v7 + 8))(v10, v6);
      return v17;
    }

    v30 = v24;
    v29[0] = v28[0];
    v29[1] = v28[1];
    v29[2] = v28[2];
    v29[3] = v28[3];
    v20 = *(v4 + 16);
    v21 = *(v4 + 24);
    MEMORY[0x1EEE9AC00](v19);
    *&v24[-32] = v20;
    *&v24[-24] = v21;
    *&v24[-16] = v13;
    *&v24[-8] = v29;
    type metadata accessor for __SceneResourceCache.Entry();
    v22 = v20;
    v23 = v21;
    OS_dispatch_queue.sync<A>(execute:)();

    v17 = *&v28[0];
    outlined destroy of __REAssetBundle(v29);
  }

  (*(v7 + 8))(v10, v6);

  return v17;
}

uint64_t __SceneResourceCache.loadSceneResource(from:named:resourceIdentifier:loadOptions:)@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v58 = a2;
  v55 = a5;
  *&v61 = a3;
  *(&v61 + 1) = a4;
  v54 = a1;
  v52 = a6;
  v66 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = type metadata accessor for URL();
  v56 = *(v12 - 8);
  v57 = v12;
  v13 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v16 + 120, &v63);
  v17 = v64;
  v18 = v65;
  __swift_project_boxed_opaque_existential_1(&v63, v64);
  v19 = *(v18 + 32);
  v60 = v16;

  v20 = v19(v17, v18);
  __swift_destroy_boxed_opaque_existential_1(&v63);
  v62 = 0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v22 = RERealityFileMountFileFromBuffer();

  if (v22)
  {
    v63 = v61;

    MEMORY[0x1C68F3410](46, 0xE100000000000000);
    MEMORY[0x1C68F3410](0x7974696C616572, 0xE700000000000000);
    v23 = v63;
    URL.init(fileURLWithPath:)();
    v24 = v58;
    if (v58)
    {
      v53 = v20;

      v25 = v56;
      v26 = v22;
      v27 = v57;
      (*(v56 + 16))(v11, v15, v57);
      v28 = *(v25 + 56);
      v28(v11, 0, 1, v27);
      v29 = v59;
      __SceneResourceCache.findSceneResource(named:realityFileRef:fileName:url:options:)(v54, v24, v26, v61, *(&v61 + 1), v11, v55, &v63);
      if (v29)
      {

        outlined destroy of BodyTrackingComponent?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        (*(v25 + 8))(v15, v27);
      }

      else
      {
        *(&v61 + 1) = v26;
        outlined destroy of BodyTrackingComponent?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        if (v64)
        {
          (*(v25 + 8))(v15, v27);

          outlined init with take of ForceEffectBase(&v63, v52);
        }

        else
        {
          outlined destroy of BodyTrackingComponent?(&v63, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMR);
          type metadata accessor for SceneResourceLoadResult.InternalError(0);
          _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError);
          swift_allocError();
          v42 = v41;
          v43 = v15;
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
          v45 = *(v44 + 48);
          v46 = v58;
          *v42 = v54;
          *(v42 + 1) = v46;
          v28(&v42[v45], 1, 1, v27);
          (*(*(v44 - 8) + 56))(v42, 0, 2, v44);
          swift_willThrow();
          (*(v25 + 8))(v43, v27);
        }
      }

      goto LABEL_15;
    }

    v33 = v56;
    v34 = v53;
    v35 = v15;
    v36 = v15;
    v37 = v57;
    (*(v56 + 16))(v53, v35, v57);
    (*(v33 + 56))(v34, 0, 1, v37);
    v38 = v59;
    __SceneResourceCache.findSceneResource(realityFileRef:fileName:url:options:)(v22, v23, *(&v23 + 1), v34, v55, &v63);
    if (v38)
    {

      outlined destroy of BodyTrackingComponent?(v34, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(v34, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      if (v64)
      {
        (*(v33 + 8))(v36, v37);
        outlined init with take of ForceEffectBase(&v63, v52);
        goto LABEL_15;
      }

      outlined destroy of BodyTrackingComponent?(&v63, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMd, &_s17RealityFoundation27SceneResourceLoadResultBase_pSgMR);
      type metadata accessor for SceneResourceLoadResult.InternalError(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError);
      swift_allocError();
      v49 = v48;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
      (*(*(v50 - 8) + 56))(v49, 1, 2, v50);
      swift_willThrow();
    }

    (*(v33 + 8))(v36, v37);
LABEL_15:
    RERealityFileUnmount();
    goto LABEL_16;
  }

  v30 = v59;
  specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v62);
  if (!v30)
  {
    v31 = v62;
    if (v62)
    {
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      swift_allocError();
      *v32 = v31;
    }

    else
    {
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v47 = 0xD000000000000028;
      *(v47 + 8) = 0x80000001C18E6DD0;
      *(v47 + 16) = 4;
    }

    swift_willThrow();
  }

LABEL_16:

  v40 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SceneResourceCache.loadSceneResources(url:options:)(uint64_t a1, uint64_t a2)
{
  v5 = __SceneResourceCache.loadAssetBundle(url:loadOptions:)(a1, a2);
  if (!v3)
  {
    ResultVs5NeverOTg5 = v5;
    v6 = outlined init with copy of __SceneResourceCache.Entry.EntryHolder(v5 + 16, v16);
    if (v17 == 1)
    {
      outlined destroy of __SceneResourceCache.Entry.EntryHolder(v16);
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
LABEL_6:
      outlined destroy of BodyTrackingComponent?(&v18, &_s10RealityKit15__REAssetBundleVSgMd, &_s10RealityKit15__REAssetBundleVSgMR);
      type metadata accessor for SceneResourceLoadResult.InternalError(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError);
      swift_allocError();
      v10 = v9;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
      (*(*(v11 - 8) + 56))(v10, 1, 2, v11);
      swift_willThrow();

      return ResultVs5NeverOTg5;
    }

    v18 = v16[0];
    v19 = v16[1];
    v20 = v16[2];
    v21 = v16[3];
    if (!*&v16[0])
    {
      goto LABEL_6;
    }

    v22[0] = v18;
    v22[1] = v19;
    v22[2] = v20;
    v22[3] = v21;
    MEMORY[0x1EEE9AC00](v6);
    v15 = v22;
    v8 = specialized Sequence.compactMap<A>(_:)(closure #1 in __REAssetBundle.getSceneDescriptors()partial apply, v14, v7);
    MEMORY[0x1EEE9AC00](v8);
    v14[0] = v22;
    v14[1] = a1;
    v15 = ResultVs5NeverOTg5;
    ResultVs5NeverOTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay17RealityFoundation17RESceneDescriptorCG_AF23SceneResourceLoadResultVs5NeverOTg5(partial apply for closure #1 in __SceneResourceCache.loadSceneResources(url:options:), &v13, v8);

    outlined destroy of __REAssetBundle(v22);
  }

  return ResultVs5NeverOTg5;
}

uint64_t closure #1 in __SceneResourceCache.loadSceneResources(url:options:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  result = __REAssetBundle.sceneAsset(for:)(*a1);
  if (result)
  {
    v6 = result;
    v7 = URL.lastPathComponent.getter();
    v9 = v8;
    v10 = *(v6 + 16);
    RERetain();

    type metadata accessor for __SceneResource();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *a3 = v11;
    *(a3 + 8) = v7;
    *(a3 + 16) = v9;
    *(a3 + 24) = a2;
    *(a3 + 32) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 __SceneResourceCache.__registerImportedScenes(url:importedScenes:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v5 = v4;
  v42 = type metadata accessor for __SceneImportOperation.__ImportedScene(0);
  v9 = *(v42 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for __SceneResourceCache.ImportedScene(0);
  v40 = *(v12 - 8);
  v41 = v12;
  v13 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v34 = a1;
    v35 = v4;
    v36 = a3;
    v37 = v3;
    v43[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
    v17 = v43[0];
    v18 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v38 = *(v9 + 72);
    do
    {
      v46 = v16;
      v19 = v39;
      outlined init with copy of __SceneImportOperation.__ImportedScene(v18, v39, type metadata accessor for __SceneImportOperation.__ImportedScene);
      v20 = type metadata accessor for UUID();
      (*(*(v20 - 8) + 16))(v15, v19, v20);
      v21 = (v19 + v42[5]);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(v19 + v42[6]);
      v25 = v17;
      v26 = *(v19 + v42[7]);

      outlined destroy of __SceneImportOperation.__ImportedScene(v19, type metadata accessor for __SceneImportOperation.__ImportedScene);
      v27 = v41;
      v28 = &v15[*(v41 + 20)];
      *v28 = v22;
      *(v28 + 1) = v23;
      *&v15[*(v27 + 24)] = v24;
      v15[*(v27 + 28)] = v26;
      v17 = v25;
      v43[0] = v25;
      v30 = *(v25 + 16);
      v29 = *(v25 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1);
        v17 = v43[0];
      }

      *(v17 + 16) = v30 + 1;
      outlined init with take of __SceneResourceCache.ImportedScene(v15, v17 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v30);
      v18 += v38;
      v16 = v46 - 1;
    }

    while (v46 != 1);
    a3 = v36;
    v5 = v35;
  }

  __SceneResourceCache.registerImportedScenes(url:importedScenes:)(v17, v43);

  if (!v5)
  {
    v32 = v43[1];
    v33 = v45;
    result = v44;
    a3->n128_u64[0] = v43[0];
    a3->n128_u64[1] = v32;
    a3[1] = result;
    a3[2].n128_u8[0] = v33;
  }

  return result;
}

unint64_t __SceneResourceCache.registerImportedScenes(url:importedScenes:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v31 = type metadata accessor for URL();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.standardizedFileURL.getter();
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = *(v2 + 24);
  v32 = *(v2 + 16);
  v13 = v32;
  v33 = v12;
  v34 = v10;
  v35 = a1;
  type metadata accessor for __SceneResourceCache.Entry();
  v14 = v13;
  v15 = v12;
  OS_dispatch_queue.sync<A>(execute:)();

  v16 = v36;
  result = __SceneResourceCache.Entry.activeSceneAssets.getter();
  if (result >> 62)
  {
    v25 = result;
    if (__CocoaSet.count.getter() > 1)
    {
      v24 = 2;
      goto LABEL_12;
    }

    v26 = __CocoaSet.count.getter();
    result = v25;
    if (v26)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v18 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18 >= 2)
  {
    v24 = 2;
LABEL_12:

    type metadata accessor for SceneResourceLoadResult.InternalError(0);
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type SceneResourceLoadResult.InternalError and conformance SceneResourceLoadResult.InternalError, type metadata accessor for SceneResourceLoadResult.InternalError);
    swift_allocError();
    v28 = v27;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
    (*(*(v29 - 8) + 56))(v28, v24, 2, v29);
    swift_willThrow();

    return (*(v5 + 8))(v8, v31);
  }

  if (!v18)
  {
LABEL_11:
    v24 = 1;
    goto LABEL_12;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1C68F41F0](0);
    goto LABEL_7;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(result + 32);

LABEL_7:

    v30 = URL.lastPathComponent.getter();
    v21 = v20;
    v22 = *(v19 + 16);
    RERetain();

    (*(v5 + 8))(v8, v31);
    type metadata accessor for __SceneResource();
    result = swift_allocObject();
    *(result + 16) = v22;
    v23 = v30;
    *a2 = result;
    *(a2 + 8) = v23;
    *(a2 + 16) = v21;
    *(a2 + 24) = v16;
    *(a2 + 32) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in __SceneResourceCache.initAssetBundle(url:loadOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v48 = a4;
  v60 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v14 + 16);
  v49 = v20;
  v19(v18, a1, v16);
  outlined init with copy of __REAssetBundle.LoadOptions(a3, v57);
  swift_beginAccess();
  outlined init with copy of __REAssetService(a2 + 120, v54);
  v21 = v55;
  v22 = v56;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  v53[0] = v57[0];
  __REAssetService.dispatchPredicate(for:)(v53, v21, v22, v12);
  __swift_destroy_boxed_opaque_existential_1(v54);
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v21 & 1) == 0)
  {
    __break(1u);
  }

  outlined init with copy of __REAssetService(a2 + 120, v54);
  swift_beginAccess();
  v23 = *(a2 + 16);
  v52 = 0;
  if (v58)
  {
    v25 = v55;
    v24 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    (*(v24 + 32))(v25, v24);
    URL._bridgeToObjectiveC()(v26);
    v28 = v27;
    String.utf8CString.getter();
    v29 = RERealityFileMountFileAtURLWithAliasName();

    if (v29)
    {
LABEL_4:
      v30 = v59;
      if (v59)
      {
        MajorVersionNumber = RERealityFileGetMajorVersionNumber();
        v32 = v30 + OBJC_IVAR____TtCE17RealityFoundationC10RealityKit6Entity14LoadStatistics_type;
        *v32 = MajorVersionNumber;
        *(v32 + 8) = 1;
      }

      static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v29, v54, v23, v57, v48);
      v33 = v55;
      v34 = v56;
      __swift_project_boxed_opaque_existential_1(v54, v55);
      (*(v34 + 32))(v33, v34);
      RERealityFileUnmount();
      goto LABEL_13;
    }
  }

  else
  {
    v35 = v55;
    v36 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    (*(v36 + 32))(v35, v36);
    URL._bridgeToObjectiveC()(v37);
    v39 = v38;
    v29 = RERealityFileMountFileAtURL();

    if (v29)
    {
      goto LABEL_4;
    }
  }

  specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(v52);
  if (!v4)
  {
    v40 = v52;
    if (v52)
    {
      type metadata accessor for CFErrorRef(0);
      _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef);
      swift_allocError();
      *v41 = v40;
    }

    else
    {
      v50 = 0;
      v51 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      v50 = 0xD00000000000001FLL;
      v51 = 0x80000001C18E1F00;
      v42 = URL.path.getter();
      MEMORY[0x1C68F3410](v42);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      v43 = v50;
      v44 = v51;
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v45 = v43;
      *(v45 + 8) = v44;
      *(v45 + 16) = 4;
    }

    swift_willThrow();
  }

LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v54);
  outlined destroy of __REAssetBundle.LoadOptions(v57);
  result = (*(v14 + 8))(v18, v49);
  v47 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SceneResourceCache.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t __SceneResourceCache.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

id specialized __SceneResourceCache.CachedEntries.init()()
{
  v10[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10[0] - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10[0]);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = [objc_opt_self() strongToWeakObjectsMapTable];
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v10[1] = MEMORY[0x1E69E7CC0];
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10[0]);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v8;
}

uint64_t specialized static __SceneResourceCache.attachImportedScenesForSceneChangeToEntity(importedScenes:entity:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for __SceneResourceCache.Entry();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 80) = 1;

  v10 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v11 = *(v10 + 24);
  swift_unownedRetainStrong();
  v12 = *(v11 + 32);

  v13 = v12;

  *v8 = v13;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v11)
  {
    __SceneResourceCache.Entry.registerWithSceneLookupTable()();
    objc_setAssociatedObject(a2, "RealityKit.SceneResourceCacheEntry", v9, 0x301);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with take of __SceneResourceCache.ImportedScene(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for __SceneResourceCache.ImportedScene(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for LoadTracer()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for __SceneResourceCache.ImportedScene()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for __REAsset();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for LoadTrace()
{
  type metadata accessor for RELoadTraceType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AnyCancellable?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for DispatchTime();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for AnyCancellable?()
{
  if (!lazy cache variable for type metadata for AnyCancellable?)
  {
    type metadata accessor for AnyCancellable();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyCancellable?);
    }
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for __SceneResourceCache.Entry.EntryHolder(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for __SceneResourceCache.Entry.EntryHolder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for __SceneResourceCache.Entry.EntryHolder(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t outlined init with copy of __SceneImportOperation.__ImportedScene(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of __SceneImportOperation.__ImportedScene(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized BidirectionalCollection.dropLast(_:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

uint64_t outlined consume of __REAssetBundle.LoadOptions.ContentRequest(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

id partial apply for closure #1 in __SceneResourceCache.CachedEntries.getCacheEntry(for:)@<X0>(void *a1@<X8>)
{
  return partial apply for closure #1 in __SceneResourceCache.CachedEntries.getCacheEntry(for:)(a1);
}

{
  result = [*(v1 + 16) objectForKey_];
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #1 in __SceneResourceCache.loadSceneResources(url:options:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return closure #1 in __SceneResourceCache.loadSceneResources(url:options:)(a1, v2[4], a2);
}

uint64_t type metadata completion function for SceneResourceLoadResult.InternalError()
{
  type metadata accessor for (String, URL?)();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void type metadata accessor for (String, URL?)()
{
  if (!lazy cache variable for type metadata for (String, URL?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, URL?));
    }
  }
}

uint64_t getEnumTagSinglePayload for __SceneResourceLoadResult(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for __SceneResourceLoadResult(uint64_t result, int a2, int a3)
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

uint64_t static OpacityComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = REHierarchicalFadeComponentGetOpacity();
  *a2 = v5;
  return result;
}

uint64_t OpacityComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  REHierarchicalFadeComponentSetOpacity();

  return RENetworkMarkComponentDirty();
}

uint64_t protocol witness for static Component.__fromCore(_:) in conformance OpacityComponent@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = REHierarchicalFadeComponentGetOpacity();
  *a2 = v5;
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance OpacityComponent(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  REHierarchicalFadeComponentSetOpacity();

  return RENetworkMarkComponentDirty();
}

float static OpacityComponent.getComputedOpacity(_:)(uint64_t a1)
{
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  if (!MEMORY[0x1C68FE280](*(v2 + 16)))
  {
    return -1.0;
  }

  v3 = *(a1 + 16);
  REOpacityServiceGetComputedOpacity();
  return result;
}

uint64_t MeshDeformationAssetBuilder.makeResource()()
{
  v2 = v1[6];
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = v1[3];
  v10 = *(v1 + 2);
  v3._rawValue = MeshDeformationAssetBuilder.makeAsset()()._rawValue;
  if (!v4)
  {
    rawValue = v3._rawValue;
    type metadata accessor for _Proto_MeshDeformation_v1.Resource();
    v0 = swift_allocObject();
    *(v0 + 16) = rawValue;
    *(v0 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
  }

  return v0;
}

Swift::OpaquePointer __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MeshDeformationAssetBuilder.makeAsset()()
{
  v1 = *(v0 + 24);
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16__REAssetService_pMd, &_s10RealityKit16__REAssetService_pMR);
  type metadata accessor for __REAssetManager();
  if (swift_dynamicCast())
  {
    v3 = *(v10 + 88);
    MeshDeformationDefinitionAsset = REMeshDeformationDefinitionAssetBuilderCreateMeshDeformationDefinitionAsset();
    if (MeshDeformationDefinitionAsset)
    {
      v5._rawValue = MeshDeformationDefinitionAsset;
    }

    else
    {
      v5._rawValue = 0x80000001C18E7000;
      lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.ResourceError and conformance _Proto_MeshDeformation_v1.ResourceError();
      swift_allocError();
      *v7 = 3;
      *(v7 + 8) = 0xD00000000000001ALL;
      *(v7 + 16) = 0x80000001C18E7000;
      swift_willThrow();
    }
  }

  else
  {
    v5._rawValue = 0x80000001C18E6FE0;
    lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.ResourceError and conformance _Proto_MeshDeformation_v1.ResourceError();
    swift_allocError();
    *v6 = 2;
    *(v6 + 8) = 0xD00000000000001ALL;
    *(v6 + 16) = 0x80000001C18E6FE0;
    swift_willThrow();
  }

  return v5;
}

__n128 MeshDeformationAssetBuilder.init(_:)@<Q0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1();
  v7.n128_u64[0] = -1;
  v7.n128_u64[1] = -1;
  v8 = REMeshDeformationDefinitionAssetBuilderCreate();

  MeshDeformationAssetBuilder.build(from:)(v5);

  if (v2)
  {
    RERelease();
  }

  else
  {
    result = v7;
    *a2 = v4;
    *(a2 + 8) = v7;
    *(a2 + 24) = v8;
    *(a2 + 32) = 0uLL;
    *(a2 + 48) = 0;
  }

  return result;
}

double MeshDeformationAssetBuilder.init(definition:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v7 = -1;
  *(&v7 + 1) = -1;
  v8 = REMeshDeformationDefinitionAssetBuilderCreate();

  MeshDeformationAssetBuilder.build(from:)(v5);

  if (v2)
  {
    RERelease();
  }

  else
  {
    *a2 = a1;
    *(a2 + 8) = v7;
    *(a2 + 24) = v8;
    result = 0.0;
    *(a2 + 32) = 0uLL;
    *(a2 + 48) = 0;
  }

  return result;
}

uint64_t MeshDeformationAssetBuilder.build(from:)(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    for (i = (result + 48); ; i += 3)
    {
      v4 = *i;
      v5 = *(i - 6);
      v6 = *(i - 7);
      v7 = *(i - 8);
      v8 = *(i - 2);
      v9 = v7;
      v10 = v6;
      v11 = v5;
      v12 = v4;

      MeshDeformationAssetBuilder.add(_:)(&v8);
      if (v1)
      {
        break;
      }

      if (!--v2)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t MeshDeformationAssetBuilder.deinit()
{
  v1 = v0[3];
  RERelease();
  v2 = *v0;

  v3 = v0[6];
}

Swift::Void __swiftcall MeshDeformationAssetBuilder.addCustom(deformerID:)(Swift::String deformerID)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 8);
  String.utf8CString.getter();
  v4 = REMeshDeformationDefinitionAssetBuilderDeformationStackAddCustomDeformer();

  if (v4 <= 0x7FFFFFFE)
  {
    *(v1 + 16) = v4;
  }

  else
  {
    v5 = *(v1 + 48);

    *(v1 + 32) = xmmword_1C18AF9C0;
    *(v1 + 48) = 0x80000001C18E6080;
  }
}

uint64_t MeshDeformationAssetBuilder.add(_:)(uint64_t *a1)
{
  v2 = *a1;
  v54 = *(a1 + 8);
  v56 = *(a1 + 9);
  v3 = *(a1 + 10);
  v55 = a1[2];
  v4 = *(v1 + 24);
  result = REMeshDeformationDefinitionAssetBuilderAddDeformationStack();
  *(v1 + 8) = result;
  *(v1 + 16) = -1;
  v58 = v1;
  v6 = *(v2 + 16);
  if (!v6)
  {
LABEL_6:
    if (!v3)
    {
      if (!v54)
      {
        goto LABEL_8;
      }

LABEL_18:
      v28 = *(v1 + 24);
      v29 = *(v1 + 8);
      v30 = REMeshDeformationDefinitionAssetBuilderDeformationStackAddRenormalization();
      if (v30 <= 0x7FFFFFFE)
      {
        *(v1 + 16) = v30;
        if (!v56)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v31 = *(v1 + 48);

        *(v1 + 32) = xmmword_1C18AF9C0;
        *(v1 + 48) = 0x80000001C18E6080;
        if (!v56)
        {
          goto LABEL_22;
        }
      }

LABEL_9:
      v11 = *(v1 + 24);
      v12 = *(v1 + 8);
      v13 = REMeshDeformationDefinitionAssetBuilderDeformationStackAddBoundingBoxCalculation();
      if (v13 <= 0x7FFFFFFE)
      {
        *(v1 + 16) = v13;
      }

      else
      {
        v14 = *(v1 + 48);

        *(v1 + 32) = xmmword_1C18AF9C0;
        *(v1 + 48) = 0x80000001C18E6080;
      }

      goto LABEL_22;
    }

    v15 = *(v1 + 24);
    v16 = *(v1 + 8);
    v17 = REMeshDeformationDefinitionAssetBuilderDeformationStackAddOpenSubdivComputeSteps();
    if (v17 <= 0x7FFFFFFE)
    {
      *(v1 + 16) = v17;
      if (v54)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v18 = *(v1 + 48);

      *(v1 + 32) = xmmword_1C18AF9C0;
      *(v1 + 48) = 0x80000001C18E6080;
      if (v54)
      {
        goto LABEL_18;
      }
    }

LABEL_8:
    if (v56)
    {
      goto LABEL_9;
    }

LABEL_22:
    v32 = 1 << *(v55 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v55 + 56);
    v35 = (v32 + 63) >> 6;

    v36 = 0;
    v37 = 0;
    while (1)
    {
      if (!v34)
      {
        while (1)
        {
          v38 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v38 >= v35)
          {
          }

          v34 = *(v55 + 56 + 8 * v38);
          ++v37;
          if (v34)
          {
            v57 = v36;
            v37 = v38;
            goto LABEL_31;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

      v57 = v36;
LABEL_31:
      v39 = *(v55 + 48) + ((v37 << 11) | (32 * __clz(__rbit64(v34))));
      v40 = *v39;
      v41 = *(v39 + 8);
      v42 = *(v39 + 16);
      v43 = *(v39 + 24);
      v60[0] = v40;
      v60[1] = v41;
      v60[2] = v42;
      LOBYTE(v61) = v43;
      outlined copy of _Proto_MeshScope_v1(v40, v41, v42, v43);
      MeshDeformationAssetBuilder.add(_:)(v60);
      if (*(v1 + 48))
      {
        break;
      }

      v34 &= v34 - 1;
      result = outlined consume of _Proto_MeshScope_v1(v40, v41, v42, v43);
      v36 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        __break(1u);
      }
    }

    v60[0] = 0;
    v60[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    strcpy(v60, ". Stack index ");
    HIBYTE(v60[1]) = -18;
    v59[0] = *(v1 + 8);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v44);

    MEMORY[0x1C68F3410](0xD000000000000010, 0x80000001C18E6F60);
    v59[0] = v57;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v45);

    v46 = *(v1 + 48);
    if (!v46)
    {
      goto LABEL_41;
    }

    v47 = v60[0];
    v48 = v60[1];
    v50 = *(v58 + 32);
    v49 = *(v58 + 40);
    outlined consume of _Proto_MeshScope_v1(v40, v41, v42, v43);
    v60[0] = v49;
    v60[1] = v46;

    MEMORY[0x1C68F3410](v47, v48);

    v51 = v60[0];
    v52 = v60[1];
    lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.ResourceError and conformance _Proto_MeshDeformation_v1.ResourceError();
    swift_allocError();
    *v53 = v50;
    *(v53 + 8) = v51;
    *(v53 + 16) = v52;
    swift_willThrow();
  }

  v7 = 0;
  v8 = v2 + 32;
  while (1)
  {
    if (v7 >= *(v2 + 16))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    outlined init with copy of __REAssetService(v8, v60);
    v9 = v61;
    v10 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    (*(v10 + 16))(v1, v9, v10);
    if (*(v1 + 48))
    {
      break;
    }

    ++v7;
    result = __swift_destroy_boxed_opaque_existential_1(v60);
    v8 += 40;
    if (v6 == v7)
    {
      goto LABEL_6;
    }
  }

  _StringGuts.grow(_:)(45);

  strcpy(v59, ". Stack index ");
  HIBYTE(v59[1]) = -18;
  v63 = *(v1 + 8);
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v19);

  MEMORY[0x1C68F3410](0xD000000000000012, 0x80000001C18E6F40);
  v63 = *(v1 + 16);
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v20);

  MEMORY[0x1C68F3410](0x3A65707974202CLL, 0xE700000000000000);
  __swift_project_boxed_opaque_existential_1(v60, v61);
  swift_getDynamicType();
  v21 = _typeName(_:qualified:)();
  MEMORY[0x1C68F3410](v21);

  result = *(v1 + 48);
  if (result)
  {
    v22 = v59[0];
    v23 = v59[1];
    v24 = *(v1 + 32);
    v59[0] = *(v1 + 40);
    v59[1] = result;

    MEMORY[0x1C68F3410](v22, v23);

    v25 = v59[0];
    v26 = v59[1];
    lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.ResourceError and conformance _Proto_MeshDeformation_v1.ResourceError();
    swift_allocError();
    *v27 = v24;
    *(v27 + 8) = v25;
    *(v27 + 16) = v26;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

{
  v2 = a1[1];
  v32 = *a1;
  v3 = a1[2];
  v4 = *(a1 + 24);
  if (*(a1 + 24) && v4 != 1)
  {
    v17 = v1[3];
    v18 = v1[1];
    result = REMeshDeformationDefinitionAssetBuilderAssignDeformationStack();
    if ((result & 1) == 0)
    {
      v19 = v1[6];

      *(v1 + 2) = xmmword_1C18B1C60;
      v1[6] = 0x80000001C18E6FB0;
    }
  }

  else
  {

    if (*(v3 + 16))
    {
      v5 = v3 + 56;
      v6 = 1 << *(v3 + 32);
      v7 = -1;
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      v8 = v7 & *(v3 + 56);
      v9 = (v6 + 63) >> 6;

      v11 = 0;
      v30 = v1;
      v31 = v3;
      if (v8)
      {
        while (1)
        {
          v12 = v11;
LABEL_11:
          v13 = (*(v3 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
          v15 = *v13;
          v14 = v13[1];
          v16 = v1[3];
          v33 = v1[1];
          String.utf8CString.getter();
          String.utf8CString.getter();

          LODWORD(v16) = REMeshDeformationDefinitionAssetBuilderAssignDeformationStack();

          if (!v16)
          {
            break;
          }

          v8 &= v8 - 1;

          v11 = v12;
          v1 = v30;
          v3 = v31;
          if (!v8)
          {
            goto LABEL_8;
          }
        }

        _StringGuts.grow(_:)(51);
        MEMORY[0x1C68F3410](0xD000000000000027, 0x80000001C18E6F80);
        v25 = 0xE300000000000000;
        v26 = 7105633;
        if (v4 == 1)
        {
          v26 = 0x65636E6174736E69;
          v25 = 0xE800000000000000;
        }

        if (v4)
        {
          v27 = v26;
        }

        else
        {
          v27 = 0x6C65646F6DLL;
        }

        if (v4)
        {
          v28 = v25;
        }

        else
        {
          v28 = 0xE500000000000000;
        }

        MEMORY[0x1C68F3410](v27, v28);

        MEMORY[0x1C68F3410](0x3A74726170202C27, 0xE800000000000000);
        MEMORY[0x1C68F3410](v15, v14);

        v29 = v30[6];

        v30[4] = 1;
        v30[5] = 0;
        v30[6] = 0xE000000000000000;
      }

      else
      {
        while (1)
        {
LABEL_8:
          v12 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v12 >= v9)
          {
            break;
          }

          v8 = *(v5 + 8 * v12);
          ++v11;
          if (v8)
          {
            goto LABEL_11;
          }
        }
      }
    }

    else
    {
      v20 = v1[3];
      v21 = v1[1];
      String.utf8CString.getter();

      LOBYTE(v20) = REMeshDeformationDefinitionAssetBuilderAssignDeformationStack();

      if ((v20 & 1) == 0)
      {
        _StringGuts.grow(_:)(42);

        if (v4)
        {
          v22 = 0x65636E6174736E69;
        }

        else
        {
          v22 = 0x6C65646F6DLL;
        }

        if (v4)
        {
          v23 = 0xE800000000000000;
        }

        else
        {
          v23 = 0xE500000000000000;
        }

        MEMORY[0x1C68F3410](v22, v23);

        MEMORY[0x1C68F3410](39, 0xE100000000000000);
        v24 = v1[6];

        v1[4] = 1;
        v1[5] = 0xD000000000000027;
        v1[6] = 0x80000001C18E6F80;
      }
    }
  }

  return result;
}

uint64_t MeshDeformationBuilder.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(result + 16) = a1;
  *(result + 24) = v3;
  return result;
}

{
  v2 = swift_allocObject();
  *(v2 + 24) = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  if (v3)
  {

    *(v2 + 16) = v3;
  }

  else
  {
    lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.ResourceError and conformance _Proto_MeshDeformation_v1.ResourceError();
    swift_allocError();
    *v4 = 4;
    *(v4 + 8) = 0xD000000000000031;
    *(v4 + 16) = 0x80000001C18E6E70;
    swift_willThrow();

    v5 = *(v2 + 24);

    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t MeshDeformationBuilder.init(_:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  return v1;
}

{
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  if (v2)
  {

    *(v1 + 16) = v2;
  }

  else
  {
    lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.ResourceError and conformance _Proto_MeshDeformation_v1.ResourceError();
    swift_allocError();
    *v3 = 4;
    *(v3 + 8) = 0xD000000000000031;
    *(v3 + 16) = 0x80000001C18E6E70;
    swift_willThrow();

    v4 = *(v1 + 24);

    type metadata accessor for MeshDeformationBuilder();
    swift_deallocPartialClassInstance();
  }

  return v1;
}

uint64_t MeshDeformationBuilder.addModelInstanceTargetPart(_:_:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = *a2;
  v7 = *(a2 + 8);
  v49 = *(a2 + 16);
  v54 = *(a2 + 24);
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
  }

  else
  {
    v8 = *(v4 + 24);
    if (*(v8 + 16) > a1)
    {
      v50 = a1;
      v51 = v6;
      v3 = 196866;
      v9 = *(v8 + 24 * a1 + 48);
      v10 = v9 + 56;
      v11 = 1 << *(v9 + 32);
      v12 = -1;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      v13 = v12 & *(v9 + 56);
      a1 = (v11 + 63) >> 6;

      v15 = 0;
      v16 = (0x30102u >> (8 * v54)) & 3;
      if (v54)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      v45 = v17;
      v18 = result;
      v46 = result;
      while (1)
      {
        while (1)
        {
          if (!v13)
          {
            while (1)
            {
              v19 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                __break(1u);
                goto LABEL_37;
              }

              if (v19 >= a1)
              {
                break;
              }

              v13 = *(v10 + 8 * v19);
              ++v15;
              if (v13)
              {
                v15 = v19;
                goto LABEL_14;
              }
            }

            swift_beginAccess();
            v3 = *(v4 + 24);
            a1 = v51;
            outlined copy of _Proto_MeshScope_v1(v51, v7, v49, v54);
            result = swift_isUniquelyReferenced_nonNull_native();
            *(v4 + 24) = v3;
            if ((result & 1) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_34;
          }

LABEL_14:
          v20 = __clz(__rbit64(v13));
          v13 &= v13 - 1;
          v21 = *(v18 + 48) + ((v15 << 11) | (32 * v20));
          v22 = *(v21 + 24);
          if (v16 == (0x30102u >> (8 * v22)))
          {
            if (v22 > 1)
            {
              goto LABEL_43;
            }

            v52 = *(v21 + 16);
            if (*(v52 + 16))
            {
              break;
            }
          }
        }

        v23 = *v21;
        v3 = *(v21 + 8);

        if (v54 > 1)
        {
          goto LABEL_44;
        }

        v24 = v23 == v51 && v3 == v7;
        v48 = v23;
        if (v24)
        {
          outlined copy of _Proto_MeshScope_v1(v51, v3, v52, v22);
        }

        else
        {
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of _Proto_MeshScope_v1(v23, v3, v52, v22);

          if ((v25 & 1) == 0)
          {
            result = outlined consume of _Proto_MeshScope_v1(v23, v3, v52, v22);
            goto LABEL_32;
          }
        }

        v47 = v7;
        swift_beginAccess();
        v26 = *(v4 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 24) = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
          *(v4 + 24) = v26;
        }

        if (*(v26 + 2) <= v50)
        {
          goto LABEL_39;
        }

        specialized Set._Variant.remove(_:)(v48, v3, v52, v22, &v57);
        v28 = v57;
        v43 = v59;
        v44 = v58;
        *(v4 + 24) = v26;
        v29 = v60;
        swift_endAccess();
        outlined consume of _Proto_MeshScope_v1?(v28, v44, v43, v29);

        outlined consume of _Proto_MeshScope_v1(v48, v3, v52, v22);

        v31 = specialized Set.union<A>(_:)(v30, v52);
        static _Proto_MeshScope_v1.fromCore(_:_:_:)(v45, v51, v7, v31, v55);

        v3 = v55[0];
        v32 = v55[1];
        v7 = v55[2];
        v53 = v56;
        swift_beginAccess();
        v33 = *(v4 + 24);
        v34 = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 24) = v33;
        if ((v34 & 1) == 0)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
          *(v4 + 24) = v33;
        }

        if (*(v33 + 2) <= v50)
        {
          goto LABEL_40;
        }

        specialized Set._Variant.insert(_:)(&v57, v3, v32, v7, v53);
        v35 = v57;
        v36 = v58;
        v37 = v59;
        *(v4 + 24) = v33;
        v38 = v60;
        swift_endAccess();
        result = outlined consume of _Proto_MeshScope_v1(v35, v36, v37, v38);
        v7 = v47;
LABEL_32:
        v3 = 196866;
        v18 = v46;
        v16 = (0x30102u >> (8 * v54)) & 3;
      }
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  v3 = result;
  *(v4 + 24) = result;
LABEL_34:
  if (*(v3 + 16) <= v50)
  {
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {
    specialized Set._Variant.insert(_:)(&v57, a1, v7, v49, v54);
    v39 = v57;
    v40 = v58;
    v41 = v59;
    *(v4 + 24) = v3;
    v42 = v60;
    swift_endAccess();
    return outlined consume of _Proto_MeshScope_v1(v39, v40, v41, v42);
  }

  return result;
}

uint64_t MeshDeformationBuilder.build(_:)()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  v101 = v0;
  *(v0 + 24) = MEMORY[0x1E69E7CC0];

  REMeshDeformationDefinitionAssetBuilderCreateFromAsset();
  DeformationStackCount = REMeshDeformationDefinitionAssetBuilderGetDeformationStackCount();
  if (DeformationStackCount < 1)
  {
    goto LABEL_83;
  }

  v3 = v101;
  swift_beginAccess();
  v4 = *(v101 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v101 + 24) = v4;
  if (!isUniquelyReferenced_nonNull_native || DeformationStackCount > *(v4 + 3) >> 1)
  {
    if (*(v4 + 2) <= DeformationStackCount)
    {
      v6 = DeformationStackCount;
    }

    else
    {
      v6 = *(v4 + 2);
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v6, 0, v4);
  }

  *(v101 + 24) = v4;
  swift_endAccess();
  v7 = 0;
  v8 = &type metadata for _Proto_MeshDeformation_v1.BlendShape;
  do
  {
    if (v7 >= DeformationStackCount)
    {
      goto LABEL_91;
    }

    v3 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v107 = 257;
    v108 = 0;
    v109 = MEMORY[0x1E69E7CD0];
    DeformationStackDeformerCount = REMeshDeformationDefinitionAssetBuilderGetDeformationStackDeformerCount();
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, DeformationStackDeformerCount & ~(DeformationStackDeformerCount >> 63), 0, MEMORY[0x1E69E7CC0]);
    p_Kind = v10;
    if (DeformationStackDeformerCount < 0)
    {
      goto LABEL_93;
    }

    v1 = v10;
    v99 = (v7 + 1);
    if (DeformationStackDeformerCount)
    {
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v4 = (v12 + v11);
        if (__OFADD__(v12, v11))
        {
          __break(1u);
LABEL_86:
          *&v102 = 0;
          *(&v102 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(54);
          if (DeformationStackDeformerCount)
          {
            MEMORY[0x1C68F3410](0xD000000000000016, 0x80000001C18E6F00);
            LOBYTE(p_Kind) = DeformationStackDeformerCount;
            type metadata accessor for REMeshIdentifierType(0);
            _print_unlocked<A, B>(_:_:)();
            MEMORY[0x1C68F3410](0x617473206E69202CLL, 0xEC000000203A6B63);
            p_Kind = v12;
            v91 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1C68F3410](v91);

            MEMORY[0x1C68F3410](0x6E6769737361202CLL, 0xEE00203A746E656DLL);
            p_Kind = &v8->Kind;
            v92 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1C68F3410](v92);

            v89 = *(&v102 + 1);
            v85 = v102;
            v90 = 6;
          }

          else
          {
            MEMORY[0x1C68F3410](0xD000000000000016, 0x80000001C18E6F20);
            LOBYTE(p_Kind) = 0;
            type metadata accessor for REMeshIdentifierType(0);
            _print_unlocked<A, B>(_:_:)();
            MEMORY[0x1C68F3410](0x617473206E69202CLL, 0xEC000000203A6B63);
            p_Kind = v12;
            v87 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1C68F3410](v87);

            MEMORY[0x1C68F3410](0x6E6769737361202CLL, 0xEE00203A746E656DLL);
            p_Kind = &v8->Kind;
            v88 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1C68F3410](v88);

            v89 = *(&v102 + 1);
            v85 = v102;
            v90 = 5;
          }

          lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.ResourceError and conformance _Proto_MeshDeformation_v1.ResourceError();
          v93 = swift_allocError();
          *v94 = v90;
          *(v94 + 8) = v85;
          *(v94 + 16) = v89;
          v95[1] = v93;
          swift_willThrow();
          RERelease();
          return v85;
        }

        if (REMeshDeformationDefinitionAssetBuilderDeformerIsBlendShape())
        {
          v3 = *(v1 + 16);
          v14 = *(v1 + 24);
          if (v3 >= v14 >> 1)
          {
            v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v3 + 1, 1, v1);
          }

          v104 = &type metadata for _Proto_MeshDeformation_v1.BlendShape;
          v105 = lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.BlendShape and conformance _Proto_MeshDeformation_v1.BlendShape();
          *(v1 + 16) = v3 + 1;
          outlined init with take of ForceEffectBase(&v102, v1 + 40 * v3 + 32);
          p_Kind = v1;
          goto LABEL_15;
        }

        if (REMeshDeformationDefinitionAssetBuilderDeformationStackIsOpenSubdivComputeSteps())
        {
          v108 = 1;
          v13 = __OFADD__(v11++, 1);
          if (v13)
          {
            __break(1u);
LABEL_91:
            __break(1u);
            goto LABEL_92;
          }
        }

        else
        {
          if (REMeshDeformationDefinitionAssetBuilderDeformerIsSkinning())
          {
            EnableSkinningVertexFrame = REMeshDeformationDefinitionAssetBuilderSkinningGetEnableSkinningVertexFrame();
            v3 = *(v1 + 16);
            v16 = *(v1 + 24);
            if (v3 >= v16 >> 1)
            {
              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v3 + 1, 1, v1);
            }

            v104 = &type metadata for _Proto_MeshDeformation_v1.Skinning;
            v105 = lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.Skinning and conformance _Proto_MeshDeformation_v1.Skinning();
            LOBYTE(v102) = EnableSkinningVertexFrame;
            *(v1 + 16) = v3 + 1;
            outlined init with take of ForceEffectBase(&v102, v1 + 40 * v3 + 32);
          }

          else
          {
            if (REMeshDeformationDefinitionAssetBuilderDeformerIsBoundingBoxCalculation())
            {
              HIBYTE(v107) = 1;
              goto LABEL_15;
            }

            if (REMeshDeformationDefinitionAssetBuilderDeformerIsRenormalization())
            {
              LOBYTE(v107) = 1;
              goto LABEL_15;
            }

            if (!REMeshDeformationDefinitionAssetBuilderDeformerIsCustomDeformer())
            {
              goto LABEL_15;
            }

            if (!REMeshDeformationDefinitionAssetBuilderDeformerCustomDeformerName())
            {
              goto LABEL_99;
            }

            v17 = String.init(cString:)();
            v19 = v18;
            v104 = &type metadata for _Proto_MeshDeformation_v1.CustomDeformer;
            v20 = lazy protocol witness table accessor for type _Proto_MeshDeformation_v1.CustomDeformer and conformance _Proto_MeshDeformation_v1.CustomDeformer();
            v105 = v20;
            *&v102 = v17;
            *(&v102 + 1) = v19;
            p_Kind = v1;
            v22 = *(v1 + 16);
            v21 = *(v1 + 24);
            if (v22 >= v21 >> 1)
            {
              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v1);
              p_Kind = v1;
              v23 = v104;
              v98 = v105;
            }

            else
            {
              v98 = v20;
              v23 = &type metadata for _Proto_MeshDeformation_v1.CustomDeformer;
            }

            v24 = __swift_mutable_project_boxed_opaque_existential_1(&v102, v23);
            v97 = v95;
            v25 = *(v23[-1].Description + 8);
            MEMORY[0x1EEE9AC00](v24);
            v3 = v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v27 + 16))(v3);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v22, v3, &p_Kind, v23, v98);
            __swift_destroy_boxed_opaque_existential_1(&v102);
          }

          p_Kind = v1;
          v8 = &type metadata for _Proto_MeshDeformation_v1.BlendShape;
        }

LABEL_15:
        if (DeformationStackDeformerCount == ++v12)
        {
          v28 = v107;
          v29 = HIBYTE(v107);
          v3 = v108;
          v30 = v109;
          goto LABEL_39;
        }
      }
    }

    v3 = 0;
    v29 = 1;
    v30 = MEMORY[0x1E69E7CD0];
    v28 = 1;
LABEL_39:
    v31 = v101;
    swift_beginAccess();
    v4 = *(v31 + 24);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *(v31 + 24) = v4;
    if ((v32 & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      *(v101 + 24) = v4;
    }

    v34 = *(v4 + 2);
    v33 = *(v4 + 3);
    if (v34 >= v33 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v4);
    }

    *(v4 + 2) = v34 + 1;
    v35 = &v4[24 * v34];
    *(v35 + 4) = v1;
    v35[40] = v28;
    v35[41] = v29;
    v35[42] = v3;
    *(v35 + 6) = v30;
    *(v101 + 24) = v4;
    swift_endAccess();
    v7 = v99;
    v8 = &type metadata for _Proto_MeshDeformation_v1.BlendShape;
  }

  while (v99 != DeformationStackCount);
  AssignedMeshCount = REMeshDeformationDefinitionAssetBuilderGetAssignedMeshCount();
  if (AssignedMeshCount < 0)
  {
    goto LABEL_98;
  }

  if (!AssignedMeshCount)
  {
LABEL_83:
    v85 = *(v101 + 24);

    RERelease();
    return v85;
  }

  v8 = 0;
  v96 = xmmword_1C1887600;
  DeformationStackCount = AssignedMeshCount;
  while (1)
  {
    v12 = REMeshDeformationDefinitionAssetBuilderAssignedMeshDeformationStackIndex();
    v50 = REMeshDeformationDefinitionAssetBuilderAssignedMeshIdentifierType();
    LODWORD(DeformationStackDeformerCount) = v50;
    if ((v50 - 1) >= 2)
    {
      break;
    }

    v51 = REMeshDeformationDefinitionAssetBuilderAssignedMeshIdentifierName();
    v52 = String.init(_:)(v51);
    if (REMeshDeformationDefinitionAssetBuilderAssignedMeshIdentifierHasPartName() == 1)
    {
      v37 = REMeshDeformationDefinitionAssetBuilderAssignedMeshIdentifierPartName();
      v38 = String.init(_:)(v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      inited = swift_initStackObject();
      *(inited + 16) = v96;
      v99 = v12;
      *(inited + 32) = v38;
      v40 = inited + 32;
      v41 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of String(v40);
      static _Proto_MeshScope_v1.fromCore(_:_:_:)(DeformationStackDeformerCount, v52._countAndFlagsBits, v52._object, v41, &v102);

      v43 = *(&v102 + 1);
      v42 = v102;
      v1 = v103;
      v44 = v104;
      MeshDeformationBuilder.addModelInstanceTargetPart(_:_:)(v99, &v102);
      v45 = v42;
      v46 = v43;
      v47 = DeformationStackCount;
      v48 = v1;
      v49 = v44;
    }

    else
    {
      static _Proto_MeshScope_v1.fromCore(_:_:_:)(DeformationStackDeformerCount, v52._countAndFlagsBits, v52._object, MEMORY[0x1E69E7CD0], &v102);

      v53 = v102;
      v4 = v103;
      v1 = v104;
      v3 = v101;
      swift_beginAccess();
      v54 = *(v3 + 24);
      outlined copy of _Proto_MeshScope_v1(v53, *(&v53 + 1), v4, v1);
      v55 = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 24) = v54;
      if (v55)
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew()(v54);
        *(v101 + 24) = v54;
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_94;
        }
      }

      if (v12 >= *(v54 + 2))
      {
        goto LABEL_95;
      }

      specialized Set._Variant.insert(_:)(&v102, v53, *(&v53 + 1), v4, v1);
      v57 = *(&v102 + 1);
      v56 = v102;
      LODWORD(v99) = v1;
      v1 = v4;
      v58 = v103;
      *(v101 + 24) = v54;
      v59 = v104;
      swift_endAccess();
      v60 = v57;
      v47 = DeformationStackCount;
      outlined consume of _Proto_MeshScope_v1(v56, v60, v58, v59);
      v46 = *(&v53 + 1);
      v45 = v53;
      v48 = v1;
      v49 = v99;
    }

    outlined consume of _Proto_MeshScope_v1(v45, v46, v48, v49);
LABEL_49:
    v8 = (v8 + 1);
    if (v8 == v47)
    {
      goto LABEL_83;
    }
  }

  if (v50 != 3)
  {
    goto LABEL_86;
  }

  v3 = v101;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 24) = v4;
  if (v61)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    *(v101 + 24) = v4;
    if ((v12 & 0x8000000000000000) != 0)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }
  }

  if (v12 >= *(v4 + 2))
  {
    goto LABEL_96;
  }

  v99 = v8;
  v98 = v4;
  v62 = &v4[24 * v12];
  v63 = *(v62 + 6);
  v97 = v62 + 48;
  v64 = *(v63 + 40);
  Hasher.init(_seed:)();
  v3 = &v102;
  MEMORY[0x1C68F4C10](0);
  v65 = Hasher._finalize()();
  v66 = -1 << *(v63 + 32);
  v67 = v65 & ~v66;
  if ((*(v63 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
  {
    v68 = ~v66;
    while (1)
    {
      v69 = *(v63 + 48) + 32 * v67;
      v3 = *v69;
      v70 = *(v69 + 8);
      v1 = *(v69 + 16);
      v71 = *(v69 + 24);
      if (v71 >= 2)
      {
        break;
      }

      outlined copy of _Proto_MeshScope_v1(*v69, *(v69 + 8), *(v69 + 16), *(v69 + 24));
      outlined consume of _Proto_MeshScope_v1(v3, v70, v1, v71);
      outlined consume of _Proto_MeshScope_v1(0, 0, 0, 2u);
      v67 = (v67 + 1) & v68;
      if (((*(v63 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    *(v101 + 24) = v98;
    swift_endAccess();
    outlined consume of _Proto_MeshScope_v1(v3, v70, v1, 2u);
    outlined consume of _Proto_MeshScope_v1(0, 0, 0, 2u);
    v8 = v99;
    v47 = DeformationStackCount;
    goto LABEL_49;
  }

LABEL_64:
  v4 = v97;
  v72 = *v97;
  v73 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v4;
  v74 = v110;
  *v4 = 0x8000000000000000;
  v75 = *(v74 + 16);
  if (*(v74 + 24) > v75)
  {
    v8 = v99;
    v47 = DeformationStackCount;
    if ((v73 & 1) == 0)
    {
      v3 = &v110;
      specialized _NativeSet.copy()();
      v74 = v110;
    }

    goto LABEL_77;
  }

  v8 = v99;
  if (v73)
  {
    specialized _NativeSet.resize(capacity:)(v75 + 1);
  }

  else
  {
    specialized _NativeSet.copyAndResize(capacity:)(v75 + 1);
  }

  v74 = v110;
  v76 = *(v110 + 40);
  Hasher.init(_seed:)();
  v3 = &v102;
  MEMORY[0x1C68F4C10](0);
  v77 = Hasher._finalize()();
  v78 = -1 << *(v74 + 32);
  v67 = v77 & ~v78;
  if (((*(v74 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
  {
    v47 = DeformationStackCount;
LABEL_77:
    *(v74 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v67;
    v82 = *(v74 + 48) + 32 * v67;
    *v82 = 0;
    *(v82 + 8) = 0;
    *(v82 + 16) = 0;
    *(v82 + 24) = 2;
    v83 = *(v74 + 16);
    v13 = __OFADD__(v83, 1);
    v84 = v83 + 1;
    if (v13)
    {
      goto LABEL_97;
    }

    *(v74 + 16) = v84;
    *v4 = v74;
    *(v101 + 24) = v98;
    swift_endAccess();
    goto LABEL_49;
  }

  v79 = ~v78;
  while (1)
  {
    v80 = *(v74 + 48) + 32 * v67;
    v3 = *v80;
    v4 = *(v80 + 8);
    v1 = *(v80 + 16);
    v81 = *(v80 + 24);
    if (v81 >= 2)
    {
      break;
    }

    outlined copy of _Proto_MeshScope_v1(*v80, *(v80 + 8), *(v80 + 16), *(v80 + 24));
    outlined consume of _Proto_MeshScope_v1(v3, v4, v1, v81);
    outlined consume of _Proto_MeshScope_v1(0, 0, 0, 2u);
    v67 = (v67 + 1) & v79;
    if (((*(v74 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
    {
      v8 = v99;
      v47 = DeformationStackCount;
      v4 = v97;
      goto LABEL_77;
    }
  }

LABEL_100:
  outlined consume of _Proto_MeshScope_v1(v3, v4, v1, 2u);
  outlined consume of _Proto_MeshScope_v1(0, 0, 0, 2u);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}