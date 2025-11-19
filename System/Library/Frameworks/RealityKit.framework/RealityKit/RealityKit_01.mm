size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_12CoreGraphics7CGFloatVtGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_12CoreGraphics7CGFloatVtMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit23EntityGestureRecognizer_pGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit23EntityGestureRecognizer_pMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t outlined consume of Set<SpatialTrackingSession.Configuration.SceneUnderstandingCapability>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void one-time initialization function for disable10BitPassthrough()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x1E12F3F80](0xD000000000000024, 0x80000001E12574F0);
  v2 = [v0 BOOLForKey_];

  disable10BitPassthrough = v2;
}

uint64_t RKARTextureCache.init(device:)(id metalDevice)
{
  cacheOut[1] = *MEMORY[0x1E69E9840];
  *(v1 + 16) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  cacheOut[0] = 0;
  if (CVMetalTextureCacheCreate(0, 0, metalDevice, 0, cacheOut) || !cacheOut[0])
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v2 = cacheOut[0];
    swift_unknownObjectRelease();
    *(v1 + 24) = v2;

    return v1;
  }

  return result;
}

uint64_t RKARTextureCache.extractTextures(from:requireBothPlanes:)(__CVBuffer *a1, char a2)
{
  textureOut[1] = *MEMORY[0x1E69E9840];
  if (CVPixelBufferGetPixelFormatType(a1) != 2016686640)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for disable10BitPassthrough != -1)
  {
    swift_once();
  }

  if (!disable10BitPassthrough)
  {
    v5 = 576;
  }

  else
  {
LABEL_5:
    v5 = MTLPixelFormatR8Unorm;
  }

  v6 = v2[3];
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  textureOut[0] = 0;
  TextureFromImage = CVMetalTextureCacheCreateTextureFromImage(0, v6, a1, 0, v5, WidthOfPlane, HeightOfPlane, 0, textureOut);
  v10 = textureOut[0];
  if (TextureFromImage)
  {
    goto LABEL_8;
  }

  if (!textureOut[0])
  {
    return 0;
  }

  if (CVPixelBufferGetPlaneCount(a1) == 2)
  {
    if (CVPixelBufferGetPixelFormatType(a1) != 2016686640)
    {
      goto LABEL_16;
    }

    if (one-time initialization token for disable10BitPassthrough != -1)
    {
      swift_once();
    }

    if (!disable10BitPassthrough)
    {
      v12 = 578;
    }

    else
    {
LABEL_16:
      v12 = MTLPixelFormatRG8Unorm;
    }

    v13 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
    v14 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
    textureOut[0] = 0;
    v15 = CVMetalTextureCacheCreateTextureFromImage(0, v6, a1, 0, v12, v13, v14, 1uLL, textureOut);
    v16 = textureOut[0];
    if (v15)
    {
    }

    else if (textureOut[0])
    {
      goto LABEL_23;
    }
  }

  if (a2)
  {
LABEL_8:

    return 0;
  }

  v17 = v10;
  v16 = v10;
LABEL_23:
  v18 = v2[4];
  v19 = v2[5];
  v2[4] = v10;
  v2[5] = v16;
  outlined consume of RKARTextureCache.CapturedImageCVTexturePair?(v18, v19);
  return 1;
}

Swift::Void __swiftcall RKARTextureCache.extractTextures(from:)(ARFrame from)
{
  textureOut[1] = *MEMORY[0x1E69E9840];
  v3 = v1[2];
  if (!v3 || (v4 = v3, v5 = RKARTextureCache.extractTextures(from:requireBothPlanes:)(v4, 0), v4, (v5 & 1) == 0))
  {
    v6 = [(objc_class *)from.super.isa capturedImage];
    RKARTextureCache.extractTextures(from:requireBothPlanes:)(v6, 1);
  }

  v7 = [(objc_class *)from.super.isa segmentationBuffer];
  v8 = v7;
  if (v7)
  {
    v9 = v1[3];
    v10 = v7;
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(v10, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(v10, 0);
    textureOut[0] = 0;
    LODWORD(v9) = CVMetalTextureCacheCreateTextureFromImage(0, v9, v10, 0, MTLPixelFormatR8Unorm, WidthOfPlane, HeightOfPlane, 0, textureOut);

    v13 = textureOut[0];
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  v13 = 0;
LABEL_8:
  v14 = v1[6];
  v1[6] = v13;

  v15 = [(objc_class *)from.super.isa estimatedDepthData];
  if (!v15)
  {

    goto LABEL_12;
  }

  v16 = v1[3];
  v17 = v15;
  v18 = CVPixelBufferGetWidthOfPlane(v17, 0);
  v19 = CVPixelBufferGetHeightOfPlane(v17, 0);
  textureOut[0] = 0;
  LODWORD(v16) = CVMetalTextureCacheCreateTextureFromImage(0, v16, v17, 0, MTLPixelFormatR32Float, v18, v19, 0, textureOut);

  v20 = textureOut[0];
  if (v16)
  {

LABEL_12:
    v20 = 0;
  }

  v21 = v1[7];
  v1[7] = v20;
}

uint64_t RKARTextureCache.__deallocating_deinit()
{
  outlined consume of RKARTextureCache.CapturedImageCVTexturePair?(v0[4], v0[5]);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for RKARTextureCache.CapturedImageCVTexturePair(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for RKARTextureCache.CapturedImageCVTexturePair(uint64_t result, int a2, int a3)
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

void outlined consume of RKARTextureCache.CapturedImageCVTexturePair?(void *a1, void *a2)
{
  if (a1)
  {
  }
}

Swift::Void __swiftcall RKARSystem.updateDebugVisualization(with:oldOptions:)(RealityKit::ARView::DebugOptions with, RealityKit::ARView::DebugOptions oldOptions)
{
  v3 = *with.rawValue;
  v4 = *oldOptions.rawValue;
  if ((*with.rawValue & 4) != 0)
  {
    if ((v4 & 4) == 0)
    {
      RKARSystem.activateWorldOriginVisualization()();
    }
  }

  else if ((v4 & 4) != 0)
  {
    RKARSystem.deactivateWorldOriginVisualization()();
  }

  if ((v3 & 8) != 0)
  {
    if ((v4 & 8) == 0)
    {
      v5 = [*(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_session) currentFrame];
      if (!v5)
      {
        return;
      }

      v6 = v5;
      RKARSystem.createDebugVisualizationForAnchors(in:)(v5);
    }
  }

  else if ((v4 & 8) != 0)
  {
    RKARSystem.removeAllAnchorDebugVisualization()(&_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMd, &_s10Foundation4UUIDV3key_10RealityKit6EntityC5valuetMR, &OBJC_IVAR____TtC10RealityKit10RKARSystem_debugAnchorsByAnchorIdentifier, _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_10RealityKit6EntityCTt0g5Tf4g_n);
  }

  if ((v3 & 0x10) != 0)
  {
    if ((v4 & 0x10) == 0)
    {
      v7 = [*(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_session) currentFrame];
      if (!v7)
      {
        return;
      }

      v8 = v7;
      RKARSystem.createDebugVisualizationForAnchorPlanes(in:)(v7);
    }
  }

  else if ((v4 & 0x10) != 0)
  {
    RKARSystem.removeAllAnchorDebugVisualization()(&_s10Foundation4UUIDV3key_10RealityKit11ModelEntityC5valuetMd, &_s10Foundation4UUIDV3key_10RealityKit11ModelEntityC5valuetMR, &OBJC_IVAR____TtC10RealityKit10RKARSystem_debugPlanesByAnchorIdentifier, _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_10RealityKit11ModelEntityCTt0g5Tf4g_n);
    RKARSystem.removeAllAnchorDebugVisualization()(&_s10Foundation4UUIDV3key_10RealityKit11ModelEntityC5valuetMd, &_s10Foundation4UUIDV3key_10RealityKit11ModelEntityC5valuetMR, &OBJC_IVAR____TtC10RealityKit10RKARSystem_debugProbesByAnchorIdentifier, _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_10RealityKit11ModelEntityCTt0g5Tf4g_n);
  }

  if ((v3 & 0x40) != 0)
  {
    if ((v4 & 0x40) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v17 = OBJC_IVAR____TtC10RealityKit6ARView_realityFusionSession;
        v18 = Strong;
        swift_beginAccess();
        v19 = *&v18[v17];

        if (v19)
        {
          v20 = dispatch thunk of RealityFusionSession.serviceManager.getter();
          if (!v20)
          {
            goto LABEL_31;
          }

          v21 = v20;
          v15 = RFServiceManagerGetMeshReconstructionService();

          if (!v15)
          {
            goto LABEL_31;
          }

LABEL_30:
          RFMeshReconstructionServiceSetWireframeEnabled();

LABEL_31:
        }
      }
    }
  }

  else if ((v4 & 0x40) != 0)
  {
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = OBJC_IVAR____TtC10RealityKit6ARView_realityFusionSession;
      v11 = v9;
      swift_beginAccess();
      v12 = *&v11[v10];

      if (v12)
      {
        v13 = dispatch thunk of RealityFusionSession.serviceManager.getter();
        if (!v13)
        {
          goto LABEL_31;
        }

        v14 = v13;
        v15 = RFServiceManagerGetMeshReconstructionService();

        if (!v15)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }
  }
}

uint64_t RKARSystem.activateWorldOriginVisualization()()
{
  v1 = type metadata accessor for Scene.AnchorCollection();
  v2 = *(v1 - 8);
  result = MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC10RealityKit10RKARSystem_worldOrigin;
  if (!*(v0 + OBJC_IVAR____TtC10RealityKit10RKARSystem_worldOrigin))
  {
    v7 = result;
    v8 = specialized RKARSystem.createDebugAxis()();
    Entity.turnIntoNinja()();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v9 = result;
      if (!*(result + OBJC_IVAR____TtC10RealityKit6ARView__scene))
      {
        __break(1u);
        return result;
      }

      dispatch thunk of Scene.anchors.getter();

      Scene.AnchorCollection.appendNinja(_:)();
      (*(v2 + 8))(v5, v7);
    }

    *(v0 + v6) = v8;
  }

  return result;
}

uint64_t RKARSystem.deactivateWorldOriginVisualization()()
{
  v1 = type metadata accessor for Scene.AnchorCollection();
  v2 = *(v1 - 8);
  result = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC10RealityKit10RKARSystem_worldOrigin;
  if (*(v0 + OBJC_IVAR____TtC10RealityKit10RKARSystem_worldOrigin))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = result;
      if (!*(result + OBJC_IVAR____TtC10RealityKit6ARView__scene))
      {
        __break(1u);
        return result;
      }

      dispatch thunk of Scene.anchors.getter();

      Scene.AnchorCollection.removeNinja(_:)();

      (*(v2 + 8))(v5, v1);
    }

    *(v0 + v6) = 0;
  }

  return result;
}

uint64_t RKARSystem.createDebugVisualizationForAnchors(in:)(void *a1)
{
  v2 = v1;
  v28 = type metadata accessor for Scene.AnchorCollection();
  v4 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for UUID();
  v6 = *(v36 - 8);
  result = MEMORY[0x1EEE9AC00](v36);
  v35 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC10RealityKit10RKARSystem_debugOptions;
  if ((*(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_debugOptions) & 8) != 0)
  {
    v10 = [a1 anchors];
    type metadata accessor for ARAnchor();
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v11 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v13 = 0;
      v34 = OBJC_IVAR____TtC10RealityKit10RKARSystem_arView;
      v14 = OBJC_IVAR____TtC10RealityKit10RKARSystem_debugAnchorsByAnchorIdentifier;
      v15 = v11 & 0xC000000000000001;
      v25 = (v4 + 1);
      v26 = v11 & 0xFFFFFFFFFFFFFF8;
      v30 = v6 + 1;
      v33 = xmmword_1E1253190;
      v31 = v11 & 0xC000000000000001;
      v32 = i;
      v29 = v11;
      while (1)
      {
        if (v15)
        {
          v20 = MEMORY[0x1E12F44E0](v13, v11);
        }

        else
        {
          if (v13 >= *(v26 + 16))
          {
            goto LABEL_20;
          }

          v20 = *(v11 + 8 * v13 + 32);
        }

        v6 = v20;
        v21 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if ((*(v2 + v9) & 8) != 0)
        {
          v22 = specialized RKARSystem.createDebugAxis()();
          type metadata accessor for Entity();
          HasTransform.position.setter();
          [v6 transform];
          HasTransform.setTransformMatrix(_:relativeTo:)();
          Entity.turnIntoNinja()();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v24 = Strong;
            if (!*(Strong + OBJC_IVAR____TtC10RealityKit6ARView__scene))
            {
              __break(1u);
            }

            v16 = v27;
            dispatch thunk of Scene.anchors.getter();

            Scene.AnchorCollection.appendNinja(_:)();
            (*v25)(v16, v28);
          }

          v17 = [v6 identifier];
          v18 = v35;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v37 = *(v2 + v14);
          *(v2 + v14) = 0x8000000000000000;
          v4 = &v37;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v18, isUniquelyReferenced_nonNull_native);
          (*v30)(v18, v36);
          *(v2 + v14) = v37;
          swift_endAccess();

          v11 = v29;
          v15 = v31;
          i = v32;
        }

        ++v13;
        if (v21 == i)
        {
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }
  }

  return result;
}

uint64_t RKARSystem.createDebugVisualizationForAnchorPlanes(in:)(void *a1)
{
  v2 = v1;
  v65 = *MEMORY[0x1E69E9840];
  v47 = type metadata accessor for Scene.AnchorCollection();
  v4 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for UUID();
  v6 = *(v53 - 8);
  result = MEMORY[0x1EEE9AC00](v53);
  v52 = (&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OBJC_IVAR____TtC10RealityKit10RKARSystem_debugOptions;
  if ((*(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_debugOptions) & 0x10) == 0)
  {
    return result;
  }

  v10 = [a1 anchors];
  type metadata accessor for ARAnchor();
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
LABEL_38:
    v12 = __CocoaSet.count.getter();
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_39:
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_39;
  }

LABEL_4:
  v13 = 0;
  v14 = v11 & 0xC000000000000001;
  v55 = v11 & 0xFFFFFFFFFFFFFF8;
  v50 = OBJC_IVAR____TtC10RealityKit10RKARSystem_arView;
  v44 = "__probeDebugGeometry";
  v45 = (v4 + 8);
  v41 = OBJC_IVAR____TtC10RealityKit10RKARSystem_debugProbesByAnchorIdentifier;
  v43 = OBJC_IVAR____TtC10RealityKit10RKARSystem_debugPlanesByAnchorIdentifier;
  v48 = v6 + 1;
  v42 = "__axisDebugGeometry";
  v4 = 0x1E6986000uLL;
  v49 = xmmword_1E12531A0;
  v54 = v9;
  v56 = v11 & 0xC000000000000001;
  v57 = v12;
  while (1)
  {
    if (v14)
    {
      v15 = MEMORY[0x1E12F44E0](v13, v11);
    }

    else
    {
      if (v13 >= *(v55 + 16))
      {
        goto LABEL_36;
      }

      v15 = *(v11 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      break;
    }

    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    if (v30 && (*(v2 + v9) & 0x10) != 0)
    {
      v6 = v30;
      [v30 extent];
      v51 = v31;
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      dispatch thunk of __ServiceLocator.assetService.getter();

      v32 = v63;
      v33 = v64;
      __swift_project_boxed_opaque_existential_1(&v59, v63);
      (*(v33 + 32))(v32, v33);
      __swift_destroy_boxed_opaque_existential_1(&v59);
      v59 = 0x1000100010001;
      v60 = 0;
      v61 = v51;
      v62 = DWORD2(v51);
      LOWORD(v63) = 257;
      BYTE2(v63) = 1;
      if (REAssetManagerMeshMemoryAssetCreateBox())
      {
        type metadata accessor for MeshResource();
        swift_allocObject();
        MeshResource.init(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd);
        v34 = swift_allocObject();
        *(v34 + 16) = v49;
        *(v34 + 56) = type metadata accessor for UnlitMaterial();
        *(v34 + 64) = MEMORY[0x1E697A178];
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v34 + 32));

        RKARSystem.debugProbeMaterial.getter(boxed_opaque_existential_0);
        type metadata accessor for ModelEntity();
        swift_allocObject();
        v25 = ModelEntity.init(mesh:materials:)();

        dispatch thunk of Entity.name.setter();

        [v6 transform];
        HasTransform.setTransformMatrix(_:relativeTo:)();
        Entity.turnIntoNinja()();
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          v36 = result;
          if (!*(result + OBJC_IVAR____TtC10RealityKit6ARView__scene))
          {
            goto LABEL_43;
          }

          v37 = v46;
          dispatch thunk of Scene.anchors.getter();

          Scene.AnchorCollection.appendNinja(_:)();
          (*v45)(v37, v47);
        }

        v38 = [v6 identifier];
        v6 = v52;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v29 = &v66;
LABEL_28:
        v39 = *(v29 - 32);
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = *(v2 + v39);
        *(v2 + v39) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, v6, isUniquelyReferenced_nonNull_native);
        (*v48)(v6, v53);
        *(v2 + v39) = v58;
        swift_endAccess();

        v9 = v54;
      }

      else
      {
      }

LABEL_31:
      v14 = v56;
      v12 = v57;
      v4 = 0x1E6986000;
      goto LABEL_6;
    }

LABEL_5:

LABEL_6:
    ++v13;
    if (v17 == v12)
    {
    }
  }

  if ((*(v2 + v9) & 0x10) == 0)
  {
    goto LABEL_5;
  }

  v6 = v18;
  v19 = [v18 geometry];
  v4 = v19;
  if (*(ARPlaneGeometry.vertices.getter() + 16) > 0xFFuLL)
  {
    goto LABEL_37;
  }

  v20 = REGeomMeshCreateFromPolygon();

  if (!v20)
  {
    goto LABEL_30;
  }

  v58 = v20;
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.assetService.getter();

  v21 = v63;
  v22 = v64;
  __swift_project_boxed_opaque_existential_1(&v59, v63);
  (*(v22 + 32))(v21, v22);
  __swift_destroy_boxed_opaque_existential_1(&v59);
  if (!REAssetManagerMeshMemoryAssetCreate())
  {
    RERelease();
    v9 = v54;
LABEL_30:

    goto LABEL_31;
  }

  type metadata accessor for MeshResource();
  swift_allocObject();
  MeshResource.init(_:)();
  RERelease();
  RERelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd);
  v23 = swift_allocObject();
  *(v23 + 16) = v49;
  *(v23 + 56) = type metadata accessor for UnlitMaterial();
  *(v23 + 64) = MEMORY[0x1E697A178];
  v24 = __swift_allocate_boxed_opaque_existential_0((v23 + 32));

  RKARSystem.debugAnchorPlaneMaterial.getter(v24);
  type metadata accessor for ModelEntity();
  swift_allocObject();
  v25 = ModelEntity.init(mesh:materials:)();

  dispatch thunk of Entity.name.setter();

  [v6 transform];
  HasTransform.setTransformMatrix(_:relativeTo:)();
  Entity.turnIntoNinja()();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_20:
    v28 = [v6 identifier];
    v6 = v52;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = &v67;
    goto LABEL_28;
  }

  v26 = result;
  if (*(result + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {

    v27 = v46;
    dispatch thunk of Scene.anchors.getter();

    Scene.AnchorCollection.appendNinja(_:)();
    (*v45)(v27, v47);
    goto LABEL_20;
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t RKARSystem.removeAllAnchorDebugVisualization()(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v36 = a4;
  v39 = type metadata accessor for Scene.AnchorCollection();
  v8 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v41 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v10 = MEMORY[0x1EEE9AC00](v44);
  v47 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v35 - v12;
  v13 = *a3;
  swift_beginAccess();
  v46 = v4;
  v35 = v13;
  v14 = *(v4 + v13);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v42 = OBJC_IVAR____TtC10RealityKit10RKARSystem_arView;
  v19 = (v16 + 63) >> 6;
  v37 = (v8 + 8);
  v45 = v14;

  v21 = 0;
  v22 = v43;
  while (v18)
  {
LABEL_11:
    v24 = __clz(__rbit64(v18)) | (v21 << 6);
    v25 = v45;
    v26 = *(v45 + 48);
    v27 = type metadata accessor for UUID();
    v28 = *(v27 - 8);
    (*(v28 + 16))(v22, v26 + *(v28 + 72) * v24, v27);
    v29 = *(*(v25 + 56) + 8 * v24);
    v30 = *(v44 + 48);
    v31 = v47;
    (*(v28 + 32))(v47, v22, v27);
    *(v31 + v30) = v29;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v32 = result;
      if (!*(result + OBJC_IVAR____TtC10RealityKit6ARView__scene))
      {
        goto LABEL_16;
      }

      v33 = v38;
      dispatch thunk of Scene.anchors.getter();

      Scene.AnchorCollection.removeNinja(_:)();
      (*v37)(v33, v39);
    }

    else
    {
    }

    v18 &= v18 - 1;
    result = outlined destroy of ARConfigurationCreateResult?(v47, v40);
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

      v34 = v36(MEMORY[0x1E69E7CC0]);
      *(v46 + v35) = v34;
    }

    v18 = *(v15 + 8 * v23);
    ++v21;
    if (v18)
    {
      v21 = v23;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void RKARSystem.removeAnchorDebugVisualization(for:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Scene.AnchorCollection();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v15 = &v26 - v14;
  if ((*(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_debugOptions) & 8) != 0)
  {
    v30 = v5;
    v16 = [a1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = OBJC_IVAR____TtC10RealityKit10RKARSystem_debugAnchorsByAnchorIdentifier;
    swift_beginAccess();
    v18 = *(v2 + v17);
    if (*(v18 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v15), (v20 & 1) != 0))
    {
      v27 = a1;
      v21 = *(*(v18 + 56) + 8 * v19);
      swift_endAccess();
      v22 = *(v9 + 8);
      v29 = v21;

      v28 = v22;
      v22(v15, v8);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
LABEL_7:
        v25 = [v27 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        swift_beginAccess();
        specialized Dictionary.removeValue(forKey:)(v11);
        swift_endAccess();

        v28(v11, v8);
        return;
      }

      v24 = Strong;
      if (*(Strong + OBJC_IVAR____TtC10RealityKit6ARView__scene))
      {

        dispatch thunk of Scene.anchors.getter();

        Scene.AnchorCollection.removeNinja(_:)();
        (*(v30 + 8))(v7, v4);
        goto LABEL_7;
      }

      __break(1u);
    }

    else
    {
      swift_endAccess();
      (*(v9 + 8))(v15, v8);
    }
  }
}

void RKARSystem.removePlaneDebugVisualization(for:)(void *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = type metadata accessor for Scene.AnchorCollection();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v28 - v16;
  if ((*(v4 + OBJC_IVAR____TtC10RealityKit10RKARSystem_debugOptions) & 0x10) != 0)
  {
    v32 = v7;
    v18 = [a1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = *a2;
    swift_beginAccess();
    v20 = *(v4 + v19);
    if (*(v20 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v22 & 1) != 0))
    {
      v29 = a1;
      v23 = *(*(v20 + 56) + 8 * v21);
      swift_endAccess();
      v24 = *(v11 + 8);
      v31 = v23;

      v30 = v24;
      v24(v17, v10);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
LABEL_7:
        v27 = [v29 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        swift_beginAccess();
        specialized Dictionary.removeValue(forKey:)(v13);
        swift_endAccess();

        v30(v13, v10);
        return;
      }

      v26 = Strong;
      if (*(Strong + OBJC_IVAR____TtC10RealityKit6ARView__scene))
      {

        dispatch thunk of Scene.anchors.getter();

        Scene.AnchorCollection.removeNinja(_:)();
        (*(v32 + 8))(v9, v6);
        goto LABEL_7;
      }

      __break(1u);
    }

    else
    {
      swift_endAccess();
      (*(v11 + 8))(v17, v10);
    }
  }
}

Swift::Void __swiftcall RKARSystem.updateFeaturePointDebugVisualization(for:)(ARFrame a1)
{
  if ((*(v1 + OBJC_IVAR____TtC10RealityKit10RKARSystem_debugOptions) & 0x20) == 0)
  {
    return;
  }

  if (!swift_weakLoadStrong())
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = dispatch thunk of __Engine.services.getter();

  if (!v3)
  {
LABEL_12:
    __break(1u);
    return;
  }

  dispatch thunk of __ServiceLocator.renderService.getter();

  v4 = [(objc_class *)a1.super.isa rawFeaturePoints];
  if (v4)
  {
    v5 = v4;
    v6 = *(ARPointCloud.points.getter() + 16);
    if (v6)
    {
      v7 = 32;
      do
      {
        v8 = v11;
        v9 = v12;
        __swift_project_boxed_opaque_existential_1(v10, v11);
        (*(v9 + 24))(v8, v9);
        REDebugRendererDrawPoint();
        v7 += 16;
        --v6;
      }

      while (v6);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t specialized RKARSystem.createDebugAxis(with:position:color:)(void *a1, __n128 a2, __n128 a3)
{
  v14[0] = a2;
  v14[1] = a3;
  v4 = type metadata accessor for UnlitMaterial();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnlitMaterial.init()();
  v8 = a1;
  UnlitMaterial.__tintColor.setter();
  type metadata accessor for MeshResource();
  static MeshResource.generateBox(size:cornerRadius:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E12531A0;
  v10 = MEMORY[0x1E697A178];
  *(v9 + 56) = v4;
  *(v9 + 64) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v9 + 32));
  (*(v5 + 16))(boxed_opaque_existential_0, v7, v4);
  type metadata accessor for ModelEntity();
  swift_allocObject();
  v12 = ModelEntity.init(mesh:materials:)();
  HasTransform.position.setter();

  dispatch thunk of Entity.name.setter();

  (*(v5 + 8))(v7, v4);
  return v12;
}

uint64_t specialized RKARSystem.createDebugAxis()()
{
  v0 = type metadata accessor for Entity.ChildCollection();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Entity();
  swift_allocObject();
  v4 = Entity.init()();
  type metadata accessor for CGColorRef(0);
  _CGColorInitTrampoline.init(_colorLiteralRed:green:blue:alpha:)();
  v5 = v14;
  v6 = specialized RKARSystem.createDebugAxis(with:position:color:)(v14, xmmword_1E12531C0, xmmword_1E12531D0);

  _CGColorInitTrampoline.init(_colorLiteralRed:green:blue:alpha:)();
  v7 = v14;
  v8 = specialized RKARSystem.createDebugAxis(with:position:color:)(v14, xmmword_1E12531E0, xmmword_1E12531F0);

  _CGColorInitTrampoline.init(_colorLiteralRed:green:blue:alpha:)();
  v9 = v14;
  v10 = specialized RKARSystem.createDebugAxis(with:position:color:)(v14, xmmword_1E1253200, xmmword_1E1253210);

  dispatch thunk of Entity.name.setter();
  HasHierarchy.children.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E1253220;
  *(v11 + 32) = v6;
  *(v11 + 40) = v8;
  *(v11 + 48) = v10;

  Entity.ChildCollection.append(contentsOf:preservingWorldTransforms:)(v11, 0);

  (*(v1 + 8))(v3, v0);
  Entity.turnIntoNinja()();

  return v4;
}

unint64_t type metadata accessor for ARAnchor()
{
  result = lazy cache variable for type metadata for ARAnchor;
  if (!lazy cache variable for type metadata for ARAnchor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ARAnchor);
  }

  return result;
}

void ARView.Environment.sceneUnderstanding.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  if ((*v1 & 0xFF00000000) == 0x200000000)
  {
    LODWORD(v2) = 0;
    LOBYTE(v3) = 0;
    v4 = 0;
    *v1 = 0;
    *(v1 + 2) = 0;
  }

  else
  {
    v4 = *(v1 + 2);
    v3 = HIDWORD(v2) & 1;
  }

  *a1 = v2;
  *(a1 + 4) = v3;
  *(a1 + 8) = v4;
}

void ARView.Environment.SceneUnderstanding.options.setter(_DWORD *a1)
{
  v2 = *(v1 + 8);
  *(v1 + 8) = *a1;
  v3 = v2;
  ARView.Environment.SceneUnderstanding.options.didset(&v3);
}

unsigned int *ARView.Environment.sceneUnderstanding.setter(unsigned int *result)
{
  v2 = result[2];
  v3 = 0x100000000;
  if (!*(result + 4))
  {
    v3 = 0;
  }

  *v1 = v3 | *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t static ARView.Environment.Background.skybox(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 1;
}

id static ARView.Environment.Background.color(_:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 2;
  return a1;
}

uint64_t ARView.Environment.ImageBasedLight.resource.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

Swift::Int ARView.Environment.Reverb.Preset.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12F47F0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ARView.Environment.Reverb.Preset()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12F47F0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ARView.Environment.Reverb.Preset()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12F47F0](v1);
  return Hasher._finalize()();
}

uint64_t ARView.Environment.SceneUnderstanding.validateOptions()()
{
  v1 = v0[2];
  v2 = *v0;
  if ((*v0 & v1) != 0 && (static os_log_type_t.debug.getter(), type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for OS_os_log), v3 = static OS_os_log.default.getter(), os_log(_:dso:log:type:_:)(), v3, v1 = v0[2], (v1 & v2) != 0))
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  v0[2] = v4 & v1;
  v6 = v1;
  return ARView.Environment.SceneUnderstanding.options.didset(&v6);
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance ARView.Environment.SceneUnderstanding.Options(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *protocol witness for SetAlgebra.remove(_:) in conformance ARView.Environment.SceneUnderstanding.Options@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *protocol witness for SetAlgebra.update(with:) in conformance ARView.Environment.SceneUnderstanding.Options@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t key path setter for ARView.Environment.SceneUnderstanding.__internalSettings : ARView.Environment.SceneUnderstanding(_BYTE *a1, uint64_t a2)
{
  *(a2 + 4) = *a1;
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v2 = dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  result = MEMORY[0x1E12F5420](v2);
  if (result)
  {

    return MEMORY[0x1EEDFE4A8]();
  }

  return result;
}

uint64_t ARView.Environment.SceneUnderstanding.__internalSettings.setter(_BYTE *a1)
{
  *(v1 + 4) = *a1;
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v2 = dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  result = MEMORY[0x1E12F5420](v2);
  if (result)
  {

    return MEMORY[0x1EEDFE4A8]();
  }

  return result;
}

uint64_t ARView.Environment.SceneUnderstanding.__internalSettings.modify(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    v2 = dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

    result = MEMORY[0x1E12F5420](v2);
    if (result)
    {

      return MEMORY[0x1EEDFE4A8]();
    }
  }

  return result;
}

void ARView.Environment.SceneUnderstanding.options.didset(_DWORD *a1)
{
  v2 = *(v1 + 8);
  if (*a1 == v2)
  {
    return;
  }

  v3 = v1;
  type metadata accessor for RealityFusionSession();
  v4 = static RealityFusionSession.sharedSession.getter();
  if ((v2 & 0x80) != 0)
  {
    if (v4)
    {
      v8 = dispatch thunk of RealityFusionSession.serviceManager.getter();

      if (v8)
      {
        v9 = RFServiceManagerGetMeshReconstructionService();

        if (v9)
        {
          RFMeshReconstructionServiceSetLightingEnabled();
        }
      }
    }

    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    v10 = dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

    if (!MEMORY[0x1E12F5430](v10))
    {
      goto LABEL_17;
    }

LABEL_15:
    [objc_opt_self() supportsSceneReconstruction_];
    goto LABEL_16;
  }

  if (v4)
  {
    v5 = dispatch thunk of RealityFusionSession.serviceManager.getter();

    if (v5)
    {
      v6 = RFServiceManagerGetMeshReconstructionService();

      if (v6)
      {
        RFMeshReconstructionServiceSetLightingEnabled();
      }
    }
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v7 = dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  if (!MEMORY[0x1E12F5430](v7))
  {
    goto LABEL_17;
  }

  if ((v2 & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_16:
  REShadowManagerSetShadowIsFadedAgainstReceivers();
LABEL_17:
  if ([objc_opt_self() supportsSceneReconstruction_])
  {
    if (v2 < 0 && (v2 & 0x7FFFFFFF) != 0)
    {
      static os_log_type_t.debug.getter();
      type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for OS_os_log);
      v11 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();

      *(v3 + 8) = 0x80000000;
    }

    ARView.Environment.SceneUnderstanding.validateOptions()();
    if (static RealityFusionSession.sharedSession.getter())
    {
      v12 = dispatch thunk of RealityFusionSession.serviceManager.getter();

      if (v12)
      {
        v13 = RFServiceManagerGetMeshReconstructionService();

        if (v13)
        {
          RFMeshReconstructionServiceSetOcclusionEnabled();
          RFMeshReconstructionServiceSetPhysicsEnabled();
          RFMeshReconstructionServiceSetCollisionEnabled();
          RFMeshReconstructionServiceSetDynamicLightingEnabled();
        }
      }
    }

    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    v14 = dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

    v15 = MEMORY[0x1E12F5420](v14);
    if (v15)
    {
      v16 = v15;
      RESceneUnderstandingServiceSetDepthFeatheringEnabled();
      RESceneUnderstandingServiceSetGuidedFilterOcclusionSupportEnabled();
      v18 = *(v3 + 8) < 0 || (*(v3 + 8) & 0x21) == 1;

      MEMORY[0x1EEDFE498](v16, v18);
    }
  }

  else
  {
    static os_log_type_t.debug.getter();
    type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for OS_os_log);
    v19 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    *(v3 + 8) = 0;
  }
}

void (*ARView.Environment.SceneUnderstanding.options.modify(uint64_t a1))(_DWORD *a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return ARView.Environment.SceneUnderstanding.options.modify;
}

void ARView.Environment.SceneUnderstanding.options.modify(_DWORD *a1, char a2)
{
  v2 = *(*a1 + 8);
  *(*a1 + 8) = a1[2];
  if (a2)
  {
    v4 = v2;
    v3 = &v4;
  }

  else
  {
    v5 = v2;
    v3 = &v5;
  }

  ARView.Environment.SceneUnderstanding.options.didset(v3);
}

uint64_t *(*ARView.Environment.sceneUnderstanding.modify(void *a1))(uint64_t *result)
{
  *a1 = v1;
  ARView.Environment.sceneUnderstanding.getter((a1 + 1));
  return ARView.Environment.sceneUnderstanding.modify;
}

uint64_t *ARView.Environment.sceneUnderstanding.modify(uint64_t *result)
{
  v1 = *result;
  v2 = *(result + 4);
  v3 = 0x100000000;
  if (!*(result + 12))
  {
    v3 = 0;
  }

  *v1 = v3 | *(result + 2);
  *(v1 + 8) = v2;
  return result;
}

id ARView.Environment.background.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  v3 = *(v1 + 24);
  *(a1 + 8) = v3;
  return outlined copy of ARView.Environment.Background.Value(v2, v3);
}

id outlined copy of ARView.Environment.Background.Value(id result, char a2)
{
  if (a2 == 2)
  {
    return result;
  }

  if (a2 == 1)
  {
  }

  return result;
}

void ARView.Environment.background.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  outlined consume of ARView.Environment.Background.Value(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

void outlined consume of ARView.Environment.Background.Value(void *a1, char a2)
{
  if (a2 == 2)
  {
  }

  else if (a2 == 1)
  {
  }
}

uint64_t ARView.Environment.lighting.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t ARView.Environment.lighting.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

float ARView.Environment.init(background:lighting:reverb:)@<S0>(uint64_t *a1@<X0>, float *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  result = a2[2];
  v8 = *a3;
  *a4 = 0x200000000;
  *(a4 + 8) = 0;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  *(a4 + 32) = v6;
  *(a4 + 40) = result;
  *(a4 + 44) = v8;
  return result;
}

void ARView.Environment.init()(uint64_t a1@<X8>)
{
  *a1 = 0x200000000;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 6;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

Swift::Void __swiftcall ARView.updateEnvironment()()
{
  v1 = v0;
  v70 = type metadata accessor for ImageBasedLightComponent.Source();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v71 = (&v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24ImageBasedLightComponentVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v72 = &v69 - v4;
  v5 = type metadata accessor for __SkyboxMaterial();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17__SkyboxComponentVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v69 - v10;
  v12 = &v0[OBJC_IVAR____TtC10RealityKit6ARView_environment];
  swift_beginAccess();
  v13 = *(v12 + 2);
  v73 = v12;
  if (v12[24])
  {
    if (v12[24] == 1)
    {
      v14 = OBJC_IVAR____TtC10RealityKit6ARView___environmentEntity;
      swift_beginAccess();
      if (!*&v1[v14])
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      outlined copy of ARView.Environment.Background.Value(v13, 1);
      outlined copy of ARView.Environment.Background.Value(v13, 1);

      __SkyboxComponent.init(environment:)();
      v15 = type metadata accessor for __SkyboxComponent();
      (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
      v16 = dispatch thunk of Entity.components.modify();
      Entity.ComponentSet.subscript.setter();
      v16(v75, 0);

      if (dispatch thunk of EnvironmentResource.coreSkyboxAsset.getter())
      {
        __SkyboxMaterial.init()();
        __SkyboxMaterial.__resource.getter();
        (*(v6 + 8))(v8, v5);
        dispatch thunk of __MaterialResource.coreAsset.getter();

        REMaterialAssetSetTextureFromAsset();
      }

      outlined consume of ARView.Environment.Background.Value(v13, 1);
      v17 = v73;
    }

    else
    {
      v22 = OBJC_IVAR____TtC10RealityKit6ARView___environmentEntity;
      swift_beginAccess();
      if (!*&v1[v22])
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v23 = type metadata accessor for __SkyboxComponent();
      (*(*(v23 - 8) + 56))(v11, 1, 1, v23);

      v24 = dispatch thunk of Entity.components.modify();
      Entity.ComponentSet.subscript.setter();
      v24(v75, 0);

      v17 = v73;
    }
  }

  else
  {
    v18 = OBJC_IVAR____TtC10RealityKit6ARView___environmentEntity;
    swift_beginAccess();
    if (!*&v1[v18])
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v19 = type metadata accessor for __SkyboxComponent();
    (*(*(v19 - 8) + 56))(v11, 1, 1, v19);

    v20 = dispatch thunk of Entity.components.modify();
    Entity.ComponentSet.subscript.setter();
    v20(v75, 0);

    v21 = *&v1[OBJC_IVAR____TtC10RealityKit6ARView_arSystem];
    v17 = v73;
    if (v21)
    {
      *(v21 + OBJC_IVAR____TtC10RealityKit10RKARSystem___passthroughIntensityExponent) = v13;
    }
  }

  v25 = [v1 layer];
  if (v17[24] == 2)
  {
    v26 = *(v17 + 2);
    type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for UIColor);
    v27 = objc_opt_self();
    outlined copy of ARView.Environment.Background.Value(v26, 2);
    v28 = [v27 blackColor];
    v29 = static NSObject.== infix(_:_:)();

    if (v25)
    {
      v30 = v25;
      v31 = [v26 CGColor];
      [v30 setBackgroundColor_];
    }

    v32 = [v26 CGColor];
    Alpha = CGColorGetAlpha(v32);
    outlined consume of ARView.Environment.Background.Value(v26, 2);

    v34 = Alpha >= 1.0;
  }

  else
  {
    v29 = 1;
    v34 = 1;
  }

  [v1 setOpaque_];
  [*&v1[OBJC_IVAR____TtC10RealityKit6ARView_renderView] setOpaque_];
  v35 = *(v17 + 4);
  v73 = v25;
  if (v35)
  {
    v36 = OBJC_IVAR____TtC10RealityKit6ARView___environmentEntity;
    swift_beginAccess();
    if (!*&v1[v36])
    {
      goto LABEL_47;
    }

    v37 = v71;
    *v71 = v35;
    (*(v69 + 104))(v37, *MEMORY[0x1E697A730], v70);
    swift_retain_n();

    v38 = v72;
    ImageBasedLightComponent.init(source:intensityExponent:global:)();
    v39 = type metadata accessor for ImageBasedLightComponent();
    (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
    v40 = dispatch thunk of Entity.components.modify();
    Entity.ComponentSet.subscript.setter();
    v40(v75, 0);

    v1[OBJC_IVAR____TtC10RealityKit6ARView_currentIBL] = 1;
LABEL_33:
    v57 = OBJC_IVAR____TtC10RealityKit6ARView___environmentEntity;
    swift_beginAccess();
    if (*&v1[v57])
    {

      v58 = dispatch thunk of Entity.components.modify();
      v59 = type metadata accessor for ImageBasedLightComponent();
      v60 = Entity.ComponentSet.subscript.modify();
      v62 = (*(*(v59 - 8) + 48))(v61, 1, v59);
      v63 = v73;
      if (!v62)
      {
        ImageBasedLightComponent.inheritsRotation.setter();
      }

      v60(v74, 0);
      v58(v75, 0);

      v75[0] = v17[44];
      ARView.updateEnvironmentReverb(_:)(v75);
      v64 = OBJC_IVAR____TtC10RealityKit6ARView__scene;
      if (*&v1[OBJC_IVAR____TtC10RealityKit6ARView__scene])
      {

        active = dispatch thunk of Scene.internalActiveCamera.getter();

        if (active)
        {
          goto LABEL_40;
        }

        if (*&v1[v64])
        {

          v66 = dispatch thunk of Scene.defaultCamera.getter();

          if (!v66)
          {
LABEL_44:

            return;
          }

LABEL_40:
          Entity.coreEntity.getter();
          RECameraViewDescriptorsComponentGetComponentType();
          if (REEntityGetComponentByClass())
          {
            if (RECameraViewDescriptorsComponentCameraViewDescriptorCount() >= 1)
            {
              RECameraViewDescriptorsComponentCameraViewDescriptorHandleByIndex();
              RenderGraphDataStruct = RERenderGraphCreateRenderGraphDataStruct();
              v68 = v17[24] != 0;
              RERenderGraphDataStructAddFloat4();
              MEMORY[0x1E12F5190](RenderGraphDataStruct, "forceHidePassthroughFeed", v68);
              RECameraViewDescriptorsComponentCameraViewDescriptorSetSettingStruct();
              RERelease();
            }
          }

          goto LABEL_44;
        }

        goto LABEL_48;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v17[24])
  {
    v41 = OBJC_IVAR____TtC10RealityKit6ARView_currentIBL;
    if (v1[OBJC_IVAR____TtC10RealityKit6ARView_currentIBL] == 2)
    {
      goto LABEL_33;
    }

    v42 = OBJC_IVAR____TtC10RealityKit6ARView___environmentEntity;
    swift_beginAccess();
    if (!*&v1[v42])
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    goto LABEL_23;
  }

  v49 = *&v1[OBJC_IVAR____TtC10RealityKit6ARView_arSystem];
  if (v49 && *(v49 + OBJC_IVAR____TtC10RealityKit10RKARSystem_isFaceSession) == 1)
  {
    v41 = OBJC_IVAR____TtC10RealityKit6ARView_currentIBL;
    if (v1[OBJC_IVAR____TtC10RealityKit6ARView_currentIBL] == 2)
    {
      goto LABEL_33;
    }

    v50 = OBJC_IVAR____TtC10RealityKit6ARView___environmentEntity;
    swift_beginAccess();
    if (*&v1[v50])
    {
LABEL_23:
      type metadata accessor for EnvironmentResource();

      v43 = static EnvironmentResource.defaultObject()();
      v44 = v71;
      *v71 = v43;
      (*(v69 + 104))(v44, *MEMORY[0x1E697A730], v70);
      v45 = v72;
      ImageBasedLightComponent.init(source:intensityExponent:global:)();
      v46 = type metadata accessor for ImageBasedLightComponent();
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      v47 = dispatch thunk of Entity.components.modify();
      Entity.ComponentSet.subscript.setter();
      v47(v75, 0);

      v48 = 2;
LABEL_32:
      v1[v41] = v48;
      goto LABEL_33;
    }

    __break(1u);
  }

  v41 = OBJC_IVAR____TtC10RealityKit6ARView_currentIBL;
  if (v1[OBJC_IVAR____TtC10RealityKit6ARView_currentIBL] == 3)
  {
    goto LABEL_33;
  }

  v51 = OBJC_IVAR____TtC10RealityKit6ARView___environmentEntity;
  swift_beginAccess();
  if (*&v1[v51])
  {
    type metadata accessor for EnvironmentResource();

    v52 = static EnvironmentResource.defaultAR()();
    v53 = v71;
    *v71 = v52;
    (*(v69 + 104))(v53, *MEMORY[0x1E697A730], v70);
    v54 = v72;
    ImageBasedLightComponent.init(source:intensityExponent:global:)();
    v55 = type metadata accessor for ImageBasedLightComponent();
    (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    v56 = dispatch thunk of Entity.components.modify();
    Entity.ComponentSet.subscript.setter();
    v56(v75, 0);

    v48 = 3;
    goto LABEL_32;
  }

LABEL_53:
  __break(1u);
}

char *ARView.updateEnvironmentReverb(_:)(char *result)
{
  v2 = OBJC_IVAR____TtC10RealityKit6ARView__scene;
  if (!*(v1 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = *result;

  dispatch thunk of Scene.applyReverbPreset(_:)();

  v4 = *(v1 + v2);
  if (v3 == 6)
  {
    if (v4)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  if (!v4)
  {
LABEL_11:
    __break(1u);
    return result;
  }

LABEL_6:

  dispatch thunk of Scene.setReverbPresetPriority(_:)();
}

BOOL static ARView.Environment.Reverb.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 7)
  {
    return v3 == 7;
  }

  if (v2 == 6)
  {
    return v3 == 6;
  }

  if ((v3 & 0xFE) == 6)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t ARView.Environment.Reverb.hash(into:)()
{
  v1 = *v0;
  if (v1 == 6)
  {
    v2 = 0;
  }

  else if (v1 == 7)
  {
    v2 = 2;
  }

  else
  {
    v3 = *v0;
    MEMORY[0x1E12F47F0](1);
    v2 = v3;
  }

  return MEMORY[0x1E12F47F0](v2);
}

Swift::Int ARView.Environment.Reverb.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 6)
  {
    v1 = 0;
  }

  else if (v1 == 7)
  {
    v1 = 2;
  }

  else
  {
    MEMORY[0x1E12F47F0](1);
  }

  MEMORY[0x1E12F47F0](v1);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ARView.Environment.Reverb(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 7)
  {
    return v3 == 7;
  }

  if (v2 == 6)
  {
    return v3 == 6;
  }

  if ((v3 & 0xFE) == 6)
  {
    return 0;
  }

  return v2 == v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ARView.Environment.Reverb()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 6)
  {
    v1 = 0;
  }

  else if (v1 == 7)
  {
    v1 = 2;
  }

  else
  {
    MEMORY[0x1E12F47F0](1);
  }

  MEMORY[0x1E12F47F0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ARView.Environment.Reverb()
{
  v1 = *v0;
  if (v1 == 6)
  {
    v2 = 0;
  }

  else if (v1 == 7)
  {
    v2 = 2;
  }

  else
  {
    v3 = *v0;
    MEMORY[0x1E12F47F0](1);
    v2 = v3;
  }

  return MEMORY[0x1E12F47F0](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ARView.Environment.Reverb()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 6)
  {
    v1 = 0;
  }

  else if (v1 == 7)
  {
    v1 = 2;
  }

  else
  {
    MEMORY[0x1E12F47F0](1);
  }

  MEMORY[0x1E12F47F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ARView.Environment.Reverb.Preset and conformance ARView.Environment.Reverb.Preset()
{
  result = lazy protocol witness table cache variable for type ARView.Environment.Reverb.Preset and conformance ARView.Environment.Reverb.Preset;
  if (!lazy protocol witness table cache variable for type ARView.Environment.Reverb.Preset and conformance ARView.Environment.Reverb.Preset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.Environment.Reverb.Preset and conformance ARView.Environment.Reverb.Preset);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARView.Environment.SceneUnderstanding.Options and conformance ARView.Environment.SceneUnderstanding.Options()
{
  result = lazy protocol witness table cache variable for type ARView.Environment.SceneUnderstanding.Options and conformance ARView.Environment.SceneUnderstanding.Options;
  if (!lazy protocol witness table cache variable for type ARView.Environment.SceneUnderstanding.Options and conformance ARView.Environment.SceneUnderstanding.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.Environment.SceneUnderstanding.Options and conformance ARView.Environment.SceneUnderstanding.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARView.Environment.SceneUnderstanding.Options and conformance ARView.Environment.SceneUnderstanding.Options;
  if (!lazy protocol witness table cache variable for type ARView.Environment.SceneUnderstanding.Options and conformance ARView.Environment.SceneUnderstanding.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.Environment.SceneUnderstanding.Options and conformance ARView.Environment.SceneUnderstanding.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARView.Environment.SceneUnderstanding.Options and conformance ARView.Environment.SceneUnderstanding.Options;
  if (!lazy protocol witness table cache variable for type ARView.Environment.SceneUnderstanding.Options and conformance ARView.Environment.SceneUnderstanding.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.Environment.SceneUnderstanding.Options and conformance ARView.Environment.SceneUnderstanding.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARView.Environment.SceneUnderstanding.Options and conformance ARView.Environment.SceneUnderstanding.Options;
  if (!lazy protocol witness table cache variable for type ARView.Environment.SceneUnderstanding.Options and conformance ARView.Environment.SceneUnderstanding.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.Environment.SceneUnderstanding.Options and conformance ARView.Environment.SceneUnderstanding.Options);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARView.Environment.Reverb and conformance ARView.Environment.Reverb()
{
  result = lazy protocol witness table cache variable for type ARView.Environment.Reverb and conformance ARView.Environment.Reverb;
  if (!lazy protocol witness table cache variable for type ARView.Environment.Reverb and conformance ARView.Environment.Reverb)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.Environment.Reverb and conformance ARView.Environment.Reverb);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ARView.Environment.Reverb.Preset] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ARView.Environment.Reverb.Preset] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ARView.Environment.Reverb.Preset] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10RealityKit6ARViewC11EnvironmentV6ReverbO6PresetOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ARView.Environment.Reverb.Preset] and conformance [A]);
  }

  return result;
}

__n128 __swift_memcpy45_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ARView.Environment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 45))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for ARView.Environment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 45) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 45) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ARView.Environment.ImageBasedLight(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 12))
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

uint64_t storeEnumTagSinglePayload for ARView.Environment.ImageBasedLight(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ARView.Environment.Reverb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 6)
  {
    v8 = v7 - 5;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ARView.Environment.Reverb(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for ARView.Environment.Reverb(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 6)
  {
    return v1 - 5;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for ARView.Environment.Reverb(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ARView.Environment.Reverb.Preset(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ARView.Environment.Reverb.Preset(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ARView.Environment.SceneUnderstanding(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 12))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ARView.Environment.SceneUnderstanding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ARView.Environment.SceneUnderstanding.__InternalSettings(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ARView.Environment.SceneUnderstanding.__InternalSettings(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ARView.Environment.Background(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for ARView.Environment.Background(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

double ParticleEmitterComponent.ParticleEmitter.color.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = ParticleEmitterComponent.ParticleEmitter.useEndColor.getter();
  v3 = ParticleEmitterComponent.ParticleEmitter.startColorA.getter();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  v5 = ParticleEmitterComponent.ParticleEmitter.startColorB.getter();
  v6 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  started = ParticleEmitterComponent.ParticleEmitter.useStartColorRange.getter();
  v9 = started;
  if (v2)
  {
    if ((started & 1) == 0)
    {

      v6 = 0;
    }

    v10 = ParticleEmitterComponent.ParticleEmitter.endColorA.getter();
    v11 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

    v12 = ParticleEmitterComponent.ParticleEmitter.endColorB.getter();
    v13 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

    v14 = ParticleEmitterComponent.ParticleEmitter.useEndColorRange.getter();
    if ((v14 & 1) == 0)
    {

      v13 = 0;
    }

    *a1 = v4;
    *(a1 + 8) = v6;
    *(a1 + 16) = v9 & 1;
    *(a1 + 24) = v11;
    *(a1 + 32) = v13;
    *(a1 + 40) = v14 & 1 | 0x80;
  }

  else
  {
    if (started)
    {
      *a1 = v4;
      *(a1 + 8) = v6;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 1;
    }

    else
    {

      *a1 = v4;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
    }

    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t key path setter for ParticleEmitterComponent.ParticleEmitter.color : ParticleEmitterComponent.ParticleEmitter(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = *a1;
  v7[1] = v1;
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v4;
  v8 = v5;
  outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor(v7[0], v1, v2, v3, v4, v5, outlined copy of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue);
  return ParticleEmitterComponent.ParticleEmitter.color.setter(v7);
}

uint64_t ParticleEmitterComponent.ParticleEmitter.color.setter(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v6 < 0)
  {
    ParticleEmitterComponent.ParticleEmitter.useEndColor.setter();
    v9 = [v1 CGColor];
    ParticleEmitterComponent.ParticleEmitter.startColorA.setter();
    if (v3)
    {
      v10 = [v2 CGColor];
      ParticleEmitterComponent.ParticleEmitter.startColorB.setter();
    }

    ParticleEmitterComponent.ParticleEmitter.useStartColorRange.setter();
    v11 = [v4 CGColor];
    ParticleEmitterComponent.ParticleEmitter.endColorA.setter();
    if (v6)
    {
      v12 = [v5 CGColor];
      ParticleEmitterComponent.ParticleEmitter.endColorB.setter();
    }

    ParticleEmitterComponent.ParticleEmitter.useEndColorRange.setter();
  }

  else
  {
    ParticleEmitterComponent.ParticleEmitter.useEndColor.setter();
    v7 = [v1 CGColor];
    ParticleEmitterComponent.ParticleEmitter.startColorA.setter();
    if (v3)
    {
      v8 = [v2 CGColor];
      ParticleEmitterComponent.ParticleEmitter.startColorB.setter();
    }

    ParticleEmitterComponent.ParticleEmitter.useStartColorRange.setter();
  }

  return outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor(v1, v2, v3, v4, v5, v6, outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue);
}

void (*ParticleEmitterComponent.ParticleEmitter.color.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  ParticleEmitterComponent.ParticleEmitter.color.getter(v3);
  return ParticleEmitterComponent.ParticleEmitter.color.modify;
}

void ParticleEmitterComponent.ParticleEmitter.color.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = *(v3 + 40);
  v10[0] = v4;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = v8;
  v11 = v9;
  if (a2)
  {
    outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor(v4, v5, v6, v7, v8, v9, outlined copy of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue);
    ParticleEmitterComponent.ParticleEmitter.color.setter(v10);
    outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor(*v3, v3[1], v3[2], v3[3], v3[4], *(v3 + 40), outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue);
  }

  else
  {
    ParticleEmitterComponent.ParticleEmitter.color.setter(v10);
  }

  free(v3);
}

uint64_t ParticleEmitterComponent.Timing.VariableDuration.init(duration:variation:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = a2 & 1;
  return result;
}

BOOL static ParticleEmitterComponent.Timing.VariableDuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (vabdd_f64(*a2, *a1) > 0.00001)
  {
    return 0;
  }

  v3 = *(a2 + 16);
  v4 = *(a1 + 16);
  v5 = v4 & v3;
  if ((v4 & 1) == 0 && (v3 & 1) == 0)
  {
    return vabdd_f64(*(a2 + 8), *(a1 + 8)) <= 0.00001;
  }

  return v5;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ParticleEmitterComponent.Timing.VariableDuration.CodingKeys()
{
  if (*v0)
  {
    return 0x6F69746169726176;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ParticleEmitterComponent.Timing.VariableDuration.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69746169726176 && a2 == 0xE90000000000006ELL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.Timing.VariableDuration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.VariableDuration.CodingKeys and conformance ParticleEmitterComponent.Timing.VariableDuration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.Timing.VariableDuration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.VariableDuration.CodingKeys and conformance ParticleEmitterComponent.Timing.VariableDuration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParticleEmitterComponent.Timing.VariableDuration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0D3KitE6TimingO16VariableDurationV10CodingKeys33_31E119A518A7B63AF3C0FF5FAD501B2DLLOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  v9 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.VariableDuration.CodingKeys and conformance ParticleEmitterComponent.Timing.VariableDuration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ParticleEmitterComponent.Timing.VariableDuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0D3KitE6TimingO16VariableDurationV10CodingKeys33_31E119A518A7B63AF3C0FF5FAD501B2DLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.VariableDuration.CodingKeys and conformance ParticleEmitterComponent.Timing.VariableDuration.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15[15] = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = v9;
    v15[14] = 1;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ParticleEmitterComponent.Timing.VariableDuration(uint64_t a1, uint64_t a2)
{
  if (vabdd_f64(*a2, *a1) > 0.00001)
  {
    return 0;
  }

  v3 = *(a2 + 16);
  v4 = *(a1 + 16);
  v5 = v4 & v3;
  if ((v4 & 1) == 0 && (v3 & 1) == 0)
  {
    return vabdd_f64(*(a2 + 8), *(a1 + 8)) <= 0.00001;
  }

  return v5;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ParticleEmitterComponent.Timing.CodingKeys()
{
  if (*v0)
  {
    return 0x6E69746165706572;
  }

  else
  {
    return 1701015151;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ParticleEmitterComponent.Timing.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701015151 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E69746165706572 && a2 == 0xE900000000000067)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.Timing.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.CodingKeys and conformance ParticleEmitterComponent.Timing.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.Timing.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.CodingKeys and conformance ParticleEmitterComponent.Timing.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ParticleEmitterComponent.Timing.OnceCodingKeys()
{
  if (*v0)
  {
    return 1953066341;
  }

  else
  {
    return 0x70556D726177;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ParticleEmitterComponent.Timing.OnceCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x70556D726177 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1953066341 && a2 == 0xE400000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.Timing.OnceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.OnceCodingKeys and conformance ParticleEmitterComponent.Timing.OnceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.Timing.OnceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.OnceCodingKeys and conformance ParticleEmitterComponent.Timing.OnceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ParticleEmitterComponent.Timing.RepeatingCodingKeys()
{
  v1 = 1953066341;
  if (*v0 != 1)
  {
    v1 = 1701602409;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x70556D726177;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ParticleEmitterComponent.Timing.RepeatingCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ParticleEmitterComponent.Timing.RepeatingCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ParticleEmitterComponent.Timing.RepeatingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.RepeatingCodingKeys and conformance ParticleEmitterComponent.Timing.RepeatingCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ParticleEmitterComponent.Timing.RepeatingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.RepeatingCodingKeys and conformance ParticleEmitterComponent.Timing.RepeatingCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParticleEmitterComponent.Timing.encode(to:)(void *a1)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0D3KitE6TimingO19RepeatingCodingKeys33_31E119A518A7B63AF3C0FF5FAD501B2DLLOGMd);
  v27 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v25[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0D3KitE6TimingO14OnceCodingKeys33_31E119A518A7B63AF3C0FF5FAD501B2DLLOGMd);
  v5 = *(v4 - 8);
  v34 = v4;
  v35 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v25[-v6];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation24ParticleEmitterComponentV0D3KitE6TimingO10CodingKeys33_31E119A518A7B63AF3C0FF5FAD501B2DLLOGMd);
  v39 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v8 = &v25[-v7];
  v36 = *v1;
  v44 = *(v1 + 8);
  v9 = v1[3];
  v28 = v1[2];
  v29 = v9;
  v30 = *(v1 + 32);
  v11 = v1[5];
  v10 = v1[6];
  v12 = *(v1 + 56);
  v13 = *(v1 + 57);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.CodingKeys and conformance ParticleEmitterComponent.Timing.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v13 < 0)
  {
    v26 = v13;
    LODWORD(v33) = v12;
    v34 = v10;
    v35 = v11;
    v19 = v27;
    LOBYTE(v40) = 1;
    lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.RepeatingCodingKeys and conformance ParticleEmitterComponent.Timing.RepeatingCodingKeys();
    v20 = v31;
    v21 = v37;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v40) = 0;
    v22 = v20;
    v23 = v32;
    v24 = v38;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    if (!v24)
    {
      v40 = v28;
      v41 = v29;
      v42 = v30 & 1;
      v45 = 1;
      lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.VariableDuration and conformance ParticleEmitterComponent.Timing.VariableDuration();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v40 = v35;
      v41 = v34;
      v42 = v33;
      v43 = v26 & 1;
      v45 = 2;
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    }

    (*(v19 + 8))(v22, v23);
    return (*(v39 + 8))(v8, v21);
  }

  else
  {
    LOBYTE(v40) = 0;
    lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.OnceCodingKeys and conformance ParticleEmitterComponent.Timing.OnceCodingKeys();
    v14 = v33;
    v15 = v37;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v40) = 0;
    v16 = v34;
    v17 = v38;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    if (!v17)
    {
      v40 = v28;
      v41 = v29;
      v42 = v30 & 1;
      v45 = 1;
      lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.VariableDuration and conformance ParticleEmitterComponent.Timing.VariableDuration();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v35 + 8))(v14, v16);
    return (*(v39 + 8))(v8, v15);
  }
}

uint64_t ParticleEmitterComponent.Timing.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0D3KitE6TimingO19RepeatingCodingKeys33_31E119A518A7B63AF3C0FF5FAD501B2DLLOGMd);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0D3KitE6TimingO14OnceCodingKeys33_31E119A518A7B63AF3C0FF5FAD501B2DLLOGMd);
  v40 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation24ParticleEmitterComponentV0D3KitE6TimingO10CodingKeys33_31E119A518A7B63AF3C0FF5FAD501B2DLLOGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - v11;
  v13 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.CodingKeys and conformance ParticleEmitterComponent.Timing.CodingKeys();
  v14 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v14)
  {
    v39 = v6;
    v15 = v42;
    v16 = v43;
    v44 = v10;
    v17 = KeyedDecodingContainer.allKeys.getter();
    if (*(v17 + 16) == 1)
    {
      if (*(v17 + 32))
      {
        LOBYTE(v48) = 1;
        lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.RepeatingCodingKeys and conformance ParticleEmitterComponent.Timing.RepeatingCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v18 = v16;
        LOBYTE(v48) = 0;
        v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        LODWORD(v40) = v28;
        LOBYTE(v48) = 1;
        lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.VariableDuration and conformance ParticleEmitterComponent.Timing.VariableDuration();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v36 = v52;
        v37 = v51;
        LODWORD(v39) = v53;
        v54 = 2;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        (*(v41 + 8))(v5, v15);
        (*(v44 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v30 = v48;
        v31 = v40 & 1;
        v47 = v40 & 1;
        v32 = v39;
        v46 = v39;
        v55 = v50;
        v33 = v49 | ((v50 & 1) << 8) | 0x8000;
        v35 = v36;
        v34 = v37;
      }

      else
      {
        LOBYTE(v48) = 0;
        lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.OnceCodingKeys and conformance ParticleEmitterComponent.Timing.OnceCodingKeys();
        v23 = v8;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v18 = v16;
        LOBYTE(v48) = 0;
        v25 = v39;
        v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v27 = v44;
        v38 = v26;
        LODWORD(v42) = v29;
        LOBYTE(v51) = 1;
        lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.VariableDuration and conformance ParticleEmitterComponent.Timing.VariableDuration();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v40 + 8))(v23, v25);
        (*(v27 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v33 = 0;
        v35 = *(&v48 + 1);
        v34 = v48;
        v32 = v49;
        v31 = v42 & 1;
        v54 = v42 & 1;
        v47 = v49;
      }

      *v18 = v38;
      *(v18 + 8) = v31;
      *(v18 + 16) = v34;
      *(v18 + 24) = v35;
      *(v18 + 32) = v32;
      *(v18 + 40) = v30;
      *(v18 + 56) = v33;
    }

    else
    {
      v19 = v12;
      v20 = type metadata accessor for DecodingError();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v22 = &type metadata for ParticleEmitterComponent.Timing;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v44 + 8))(v19, v9);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t ParticleEmitterComponent.timing.getter@<X0>(uint64_t a1@<X8>)
{
  ParticleEmitterComponent.warmupDuration.getter();
  v2 = 0;
  v4 = vabdd_f64(0.0, v3);
  v5 = 0;
  if (v4 > 0.00001)
  {
    ParticleEmitterComponent.warmupDuration.getter();
    v5 = v6;
  }

  ParticleEmitterComponent.emissionDuration.getter();
  v8 = v7;
  ParticleEmitterComponent.emissionDurationVariation.getter();
  v10 = vabdd_f64(0.0, v9);
  if (v10 > 0.00001)
  {
    ParticleEmitterComponent.emissionDurationVariation.getter();
    v2 = v11;
  }

  result = ParticleEmitterComponent.shouldLoop.getter();
  if (result)
  {
    result = ParticleEmitterComponent.idleDuration.getter();
    v13 = 0;
    v15 = vabdd_f64(0.0, v14);
    if (v15 > 0.00001)
    {
      v22 = v8;
      ParticleEmitterComponent.idleDuration.getter();
      v13 = v18;
      result = ParticleEmitterComponent.idleDurationVariation.getter();
      v20 = v19;
      v17 = 0;
      v21 = vabdd_f64(0.0, v20);
      if (v21 > 0.00001)
      {
        result = ParticleEmitterComponent.idleDurationVariation.getter();
      }

      v16 = v21 <= 0.00001;
      v8 = v22;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    *a1 = v5;
    *(a1 + 8) = v4 <= 0.00001;
    *(a1 + 16) = v8;
    *(a1 + 24) = v2;
    *(a1 + 32) = v10 <= 0.00001;
    *(a1 + 40) = v13;
    *(a1 + 48) = v17;
    *(a1 + 56) = v16 & 0xFEFF | ((v15 <= 0.00001) << 8) | 0x8000;
  }

  else
  {
    *a1 = v5;
    *(a1 + 8) = v4 <= 0.00001;
    *(a1 + 15) = 0;
    *(a1 + 13) = 0;
    *(a1 + 9) = 0;
    *(a1 + 16) = v8;
    *(a1 + 24) = v2;
    *(a1 + 32) = v10 <= 0.00001;
    *(a1 + 39) = 0;
    *(a1 + 37) = 0;
    *(a1 + 33) = 0;
    *(a1 + 56) = 0;
  }

  return result;
}

uint64_t ParticleEmitterComponent.timing.setter()
{
  ParticleEmitterComponent.shouldLoop.setter();
  ParticleEmitterComponent.warmupDuration.setter();
  ParticleEmitterComponent.emissionDuration.setter();
  ParticleEmitterComponent.emissionDurationVariation.setter();
  ParticleEmitterComponent.idleDuration.setter();

  return ParticleEmitterComponent.idleDurationVariation.setter();
}

void (*ParticleEmitterComponent.timing.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 64) = v1;
  ParticleEmitterComponent.timing.getter(v3);
  return ParticleEmitterComponent.timing.modify;
}

void ParticleEmitterComponent.timing.modify(void **a1)
{
  v1 = *a1;
  ParticleEmitterComponent.timing.setter();

  free(v1);
}

uint64_t specialized static ParticleEmitterComponent.Timing.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 57);
  v6 = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 56);
  if ((v5 & 0x80000000) == 0)
  {
    if ((v8 & 0x80000000) == 0)
    {
      if (*(a1 + 8))
      {
        if ((*(a2 + 8) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((*(a2 + 8) & 1) != 0 || vabdd_f64(v6, v2) > 0.00001)
      {
        return 0;
      }

      v11 = vabdd_f64(v7, v3) > 0.00001;
      v12 = v11 | v4;
      v13 = (v11 ^ (v11 | v4)) & *(a2 + 32);
      if ((v12 & 1) == 0 && (*(a2 + 32) & 1) == 0)
      {
        v9 = *(a1 + 24);
        v10 = *(a2 + 24);
LABEL_15:
        v13 = vabdd_f64(v10, v9) <= 0.00001;
      }

      return v13 & 1;
    }

    return 0;
  }

  if ((v8 & 0x80000000) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 48);
  v10 = *(a2 + 48);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 8) & 1) != 0 || vabdd_f64(v6, v2) > 0.00001)
  {
    return 0;
  }

  if (vabdd_f64(v7, v3) > 0.00001)
  {
    return 0;
  }

  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 1) != 0 || vabdd_f64(*(a2 + 24), *(a1 + 24)) > 0.00001)
  {
    return 0;
  }

  if ((v5 & 1) == 0)
  {
    if ((v8 & 0x100) != 0 || vabdd_f64(*(a2 + 40), *(a1 + 40)) > 0.00001)
    {
      return 0;
    }

    v13 = *(a1 + 56) & v8;
    if ((*(a1 + 56) & 1) == 0 && (v8 & 1) == 0)
    {
      goto LABEL_15;
    }

    return v13 & 1;
  }

  return (v8 >> 8) & 1;
}

uint64_t specialized static ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((v4 & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      type metadata accessor for NSObject();
      outlined copy of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue(v5, v6, 0);
      outlined copy of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue(v2, v3, 0);
      v8 = static NSObject.== infix(_:_:)();
      v4 = 0;
      v7 = 0;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
LABEL_6:
    outlined copy of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue(*a2, *(a2 + 8), v7);
    outlined copy of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue(v2, v3, v4);
    v8 = 0;
    goto LABEL_10;
  }

  type metadata accessor for NSObject();
  v4 = 1;
  outlined copy of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue(v5, v6, 1);
  outlined copy of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue(v2, v3, 1);
  if (static NSObject.== infix(_:_:)())
  {
    v8 = static NSObject.== infix(_:_:)();
  }

  else
  {
    v8 = 0;
  }

  v7 = 1;
LABEL_10:
  outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue(v2, v3, v4);
  outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue(v5, v6, v7);
  return v8 & 1;
}

uint64_t specialized static ParticleEmitterComponent.ParticleEmitter.ParticleColor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v32 = *(a1 + 24);
  v33 = *(a1 + 32);
  v6 = *a2;
  v5 = *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v34 = *(a1 + 40);
  v35 = *(a2 + 40);
  v30 = *a1;
  v31 = v2;
  if (v34 < 0)
  {
    if (v35 < 0)
    {
      v39 = *a1;
      v40 = v2;
      v41 = v4 & 1;
      v36 = v6;
      v37 = v5;
      v38 = v8 & 1;
      v29 = v4;
      outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor(v3, v2, v4, v32, v33, v34, outlined copy of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue);
      outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor(v6, v5, v8, v7, v9, v35, outlined copy of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue);
      v24 = v34 & 1;
      outlined copy of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue(v32, v33, v34 & 1);
      outlined copy of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue(v7, v9, v35 & 1);
      if (specialized static ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue.== infix(_:_:)(&v39, &v36))
      {
        v39 = v32;
        v40 = v33;
        v41 = v34 & 1;
        v36 = v7;
        v37 = v9;
        v38 = v35 & 1;
        v28 = specialized static ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue.== infix(_:_:)(&v39, &v36);
        outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor(v30, v31, v29, v32, v33, v34, outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue);
        outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor(v6, v5, v8, v7, v9, v35, outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue);
        outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue(v7, v9, v35 & 1);
        outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue(v32, v33, v24);
        v15 = v28;
        return v15 & 1;
      }

      outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue(v7, v9, v35 & 1);
      outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue(v32, v33, v24);
      outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor(v30, v31, v29, v32, v33, v34, outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue);
      v17 = v6;
      v18 = v5;
      v19 = v8;
      v20 = v7;
      v21 = v9;
      v22 = v35;
      goto LABEL_6;
    }

LABEL_5:
    v16 = *(a1 + 16);
    outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor(v3, v2, v4, v32, v33, v34, outlined copy of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue);
    outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor(v6, v5, v8, v7, v9, v35, outlined copy of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue);
    outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor(v30, v31, v16, v32, v33, v34, outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue);
    v17 = v6;
    v18 = v5;
    v19 = v8;
    v20 = v7;
    v21 = v9;
    v22 = v35;
LABEL_6:
    outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor(v17, v18, v19, v20, v21, v22, outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue);
    v15 = 0;
    return v15 & 1;
  }

  if (v35 < 0)
  {
    goto LABEL_5;
  }

  v39 = *a1;
  v40 = v2;
  v41 = v4 & 1;
  v36 = v6;
  v37 = v5;
  v38 = v8 & 1;
  v25 = v9;
  v10 = v4;
  v26 = v7;
  v11 = v7;
  v12 = v9;
  v13 = v2;
  v14 = v3;
  outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor(v6, v5, v8, v11, v12, v35, outlined copy of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue);
  outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor(v14, v13, v10, v32, v33, v34, outlined copy of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue);
  outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor(v14, v13, v10, v32, v33, v34, outlined copy of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue);
  outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor(v6, v5, v8, v26, v25, v35, outlined copy of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue);
  v27 = specialized static ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue.== infix(_:_:)(&v39, &v36);
  outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor(v30, v31, v10, v32, v33, v34, outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue);
  outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor(v6, v5, v8, v26, v25, v35, outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue);
  outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor(v6, v5, v8, v26, v25, v35, outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue);
  outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor(v30, v31, v10, v32, v33, v34, outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue);
  v15 = v27;
  return v15 & 1;
}

void outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t outlined consume of ParticleEmitterComponent.ParticleEmitter.ParticleColor(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, void (*a7)(uint64_t, uint64_t, void))
{
  if (a6 < 0)
  {
    a7(a1, a2, a3 & 1);

    return (a7)(a4, a5, a6 & 1);
  }

  else
  {
    v8 = a3 & 1;

    return (a7)(a1, a2, v8);
  }
}

id outlined copy of ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue(void *a1, void *a2, char a3)
{
  if (a3)
  {
    v5 = a1;
    a1 = a2;
    v3 = vars8;
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.VariableDuration.CodingKeys and conformance ParticleEmitterComponent.Timing.VariableDuration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.VariableDuration.CodingKeys and conformance ParticleEmitterComponent.Timing.VariableDuration.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.VariableDuration.CodingKeys and conformance ParticleEmitterComponent.Timing.VariableDuration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.VariableDuration.CodingKeys and conformance ParticleEmitterComponent.Timing.VariableDuration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.VariableDuration.CodingKeys and conformance ParticleEmitterComponent.Timing.VariableDuration.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.VariableDuration.CodingKeys and conformance ParticleEmitterComponent.Timing.VariableDuration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.VariableDuration.CodingKeys and conformance ParticleEmitterComponent.Timing.VariableDuration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.VariableDuration.CodingKeys and conformance ParticleEmitterComponent.Timing.VariableDuration.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.VariableDuration.CodingKeys and conformance ParticleEmitterComponent.Timing.VariableDuration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.VariableDuration.CodingKeys and conformance ParticleEmitterComponent.Timing.VariableDuration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.VariableDuration.CodingKeys and conformance ParticleEmitterComponent.Timing.VariableDuration.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.VariableDuration.CodingKeys and conformance ParticleEmitterComponent.Timing.VariableDuration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.VariableDuration.CodingKeys and conformance ParticleEmitterComponent.Timing.VariableDuration.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.CodingKeys and conformance ParticleEmitterComponent.Timing.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.CodingKeys and conformance ParticleEmitterComponent.Timing.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.CodingKeys and conformance ParticleEmitterComponent.Timing.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.CodingKeys and conformance ParticleEmitterComponent.Timing.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.CodingKeys and conformance ParticleEmitterComponent.Timing.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.CodingKeys and conformance ParticleEmitterComponent.Timing.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.CodingKeys and conformance ParticleEmitterComponent.Timing.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.CodingKeys and conformance ParticleEmitterComponent.Timing.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.CodingKeys and conformance ParticleEmitterComponent.Timing.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.CodingKeys and conformance ParticleEmitterComponent.Timing.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.CodingKeys and conformance ParticleEmitterComponent.Timing.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.CodingKeys and conformance ParticleEmitterComponent.Timing.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.CodingKeys and conformance ParticleEmitterComponent.Timing.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.RepeatingCodingKeys and conformance ParticleEmitterComponent.Timing.RepeatingCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.RepeatingCodingKeys and conformance ParticleEmitterComponent.Timing.RepeatingCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.RepeatingCodingKeys and conformance ParticleEmitterComponent.Timing.RepeatingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.RepeatingCodingKeys and conformance ParticleEmitterComponent.Timing.RepeatingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.RepeatingCodingKeys and conformance ParticleEmitterComponent.Timing.RepeatingCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.RepeatingCodingKeys and conformance ParticleEmitterComponent.Timing.RepeatingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.RepeatingCodingKeys and conformance ParticleEmitterComponent.Timing.RepeatingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.RepeatingCodingKeys and conformance ParticleEmitterComponent.Timing.RepeatingCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.RepeatingCodingKeys and conformance ParticleEmitterComponent.Timing.RepeatingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.RepeatingCodingKeys and conformance ParticleEmitterComponent.Timing.RepeatingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.RepeatingCodingKeys and conformance ParticleEmitterComponent.Timing.RepeatingCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.RepeatingCodingKeys and conformance ParticleEmitterComponent.Timing.RepeatingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.RepeatingCodingKeys and conformance ParticleEmitterComponent.Timing.RepeatingCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.VariableDuration and conformance ParticleEmitterComponent.Timing.VariableDuration()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.VariableDuration and conformance ParticleEmitterComponent.Timing.VariableDuration;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.VariableDuration and conformance ParticleEmitterComponent.Timing.VariableDuration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.VariableDuration and conformance ParticleEmitterComponent.Timing.VariableDuration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.VariableDuration and conformance ParticleEmitterComponent.Timing.VariableDuration;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.VariableDuration and conformance ParticleEmitterComponent.Timing.VariableDuration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.VariableDuration and conformance ParticleEmitterComponent.Timing.VariableDuration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.Timing.OnceCodingKeys and conformance ParticleEmitterComponent.Timing.OnceCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.OnceCodingKeys and conformance ParticleEmitterComponent.Timing.OnceCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.OnceCodingKeys and conformance ParticleEmitterComponent.Timing.OnceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.OnceCodingKeys and conformance ParticleEmitterComponent.Timing.OnceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.OnceCodingKeys and conformance ParticleEmitterComponent.Timing.OnceCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.OnceCodingKeys and conformance ParticleEmitterComponent.Timing.OnceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.OnceCodingKeys and conformance ParticleEmitterComponent.Timing.OnceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.OnceCodingKeys and conformance ParticleEmitterComponent.Timing.OnceCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.OnceCodingKeys and conformance ParticleEmitterComponent.Timing.OnceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.OnceCodingKeys and conformance ParticleEmitterComponent.Timing.OnceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.OnceCodingKeys and conformance ParticleEmitterComponent.Timing.OnceCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.OnceCodingKeys and conformance ParticleEmitterComponent.Timing.OnceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.Timing.OnceCodingKeys and conformance ParticleEmitterComponent.Timing.OnceCodingKeys);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticleEmitterComponent.ParticleEmitter.ParticleColor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleEmitterComponent.ParticleEmitter.ParticleColor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 40) = 0;
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ParticleEmitterComponent.ParticleEmitter.ParticleColor(uint64_t result, char a2)
{
  v2 = *(result + 40) & 1 | (a2 << 7);
  *(result + 16) &= 1uLL;
  *(result + 40) = v2;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleEmitterComponent.ParticleEmitter.ParticleColor.ColorValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t initializeBufferWithCopyOfBuffer for ParticleEmitterComponent.Timing(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticleEmitterComponent.Timing(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for ParticleEmitterComponent.Timing(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 58) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 2 * -a2;
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 42) = 0u;
      return result;
    }

    *(a1 + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ParticleEmitterComponent.Timing(uint64_t result, __int16 a2)
{
  v2 = *(result + 32) & 1;
  v3 = *(result + 56) & 0x1FF | (a2 << 15);
  *(result + 8) &= 1uLL;
  *(result + 32) = v2;
  *(result + 56) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticleEmitterComponent.Timing.VariableDuration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ParticleEmitterComponent.Timing.VariableDuration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticleEmitterComponent.Presets(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ParticleEmitterComponent.Presets(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticleEmitterComponent.Timing.RepeatingCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleEmitterComponent.Timing.RepeatingCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticleEmitterComponent.Timing.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t specialized ParticleEmitterComponent.Timing.RepeatingCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70556D726177 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953066341 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701602409 && a2 == 0xE400000000000000)
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

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

double ARFrame.displayToCameraMatrix(for:viewportSize:)(uint64_t a1)
{
  [v1 displayTransformForOrientation:a1 viewportSize:?];
  v2.columns[0].i64[1] = *&v4.f64[1];
  v2.columns[1].i64[1] = *&v5.f64[1];
  *v2.columns[0].f32 = vcvt_f32_f64(v4);
  *v2.columns[1].f32 = vcvt_f32_f64(v5);
  *v2.columns[3].f32 = vcvt_f32_f64(v6);
  v2.columns[3].i64[1] = 0x3F80000000000000;
  v2.columns[2] = xmmword_1E1254070;

  *&result = __invert_f4(v2);
  return result;
}

uint64_t key path setter for EntityRotationGestureRecognizer.entity : EntityRotationGestureRecognizer(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  specialized EntityGestureRecognizer.entityWillChange(_:)(v5);
  v6 = (v4 + OBJC_IVAR____TtC10RealityKit31EntityRotationGestureRecognizer_entity);
  swift_beginAccess();
  *v6 = v2;
  v6[1] = v3;
}

uint64_t EntityRotationGestureRecognizer.entity.setter(uint64_t a1, uint64_t a2)
{
  specialized EntityGestureRecognizer.entityWillChange(_:)(a1);
  v5 = (v2 + OBJC_IVAR____TtC10RealityKit31EntityRotationGestureRecognizer_entity);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void (*EntityRotationGestureRecognizer.entity.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC10RealityKit31EntityRotationGestureRecognizer_entity;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return EntityRotationGestureRecognizer.entity.modify;
}

void EntityRotationGestureRecognizer.entity.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = (*(*a1 + 40) + *(*a1 + 48));
  if (a2)
  {

    specialized EntityGestureRecognizer.entityWillChange(_:)(v6);
    *v5 = v3;
    v5[1] = v4;
  }

  else
  {
    specialized EntityGestureRecognizer.entityWillChange(_:)(v3);
    *v5 = v3;
    v5[1] = v4;
  }

  free(v2);
}

void EntityRotationGestureRecognizer.touchesBegan(_:with:)(uint64_t a1, void *a2)
{
  v4 = v2;
  v5 = a2;

  specialized Set._Variant.filter(_:)(v6, v4, v5);

  if ([v4 numberOfTouches])
  {
    type metadata accessor for UITouch();
    lazy protocol witness table accessor for type UITouch and conformance NSObject();
    isa = Set._bridgeToObjectiveC()().super.isa;

    v8.receiver = v4;
    v8.super_class = type metadata accessor for EntityRotationGestureRecognizer();
    objc_msgSendSuper2(&v8, sel_touchesBegan_withEvent_, isa, v5);
  }

  else
  {

    [v4 setState_];
  }
}

Swift::Bool __swiftcall EntityRotationGestureRecognizer.canPrevent(_:)(UIGestureRecognizer *a1)
{
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (!v3)
  {
    goto LABEL_7;
  }

  if (!a1)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC10RealityKit31EntityRotationGestureRecognizer_entity;
  swift_beginAccess();
  v6 = *&v1[v5];
  if (!v6)
  {
    goto LABEL_7;
  }

  ObjectType = swift_getObjectType();
  v8 = *(v4 + 8);
  v9 = a1;

  v10 = v8(ObjectType, v4);
  if (!v10)
  {

LABEL_7:
    v15.receiver = v1;
    v15.super_class = type metadata accessor for EntityRotationGestureRecognizer();
    v13 = [(UIGestureRecognizer *)&v15 canPreventGestureRecognizer:a1];
    return v13 & 1;
  }

  v11 = v10;

  v12 = specialized EntityGestureRecognizer.doesEntity(_:contain:)(v11, v6);

  v13 = v12;
  return v13 & 1;
}

id EntityRotationGestureRecognizer.__allocating_init(target:action:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v6);
    v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v2) initWithTarget:v10 action:a2];
  swift_unknownObjectRelease();
  return v11;
}

id EntityRotationGestureRecognizer.init(target:action:)(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC10RealityKit31EntityRotationGestureRecognizer_entity];
  *v5 = 0;
  *(v5 + 1) = 0;
  outlined init with copy of Any?(a1, v16);
  v6 = v17;
  if (v17)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v8 = *(v6 - 8);
    MEMORY[0x1EEE9AC00](v7);
    v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for EntityRotationGestureRecognizer();
  v15.receiver = v2;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, sel_initWithTarget_action_, v11, a2);
  swift_unknownObjectRelease();
  outlined destroy of ARConfigurationCreateResult?(a1, &_sypSgMd);
  return v13;
}

id EntityRotationGestureRecognizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntityRotationGestureRecognizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for EntityGestureRecognizer.entity.modify in conformance EntityRotationGestureRecognizer(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = EntityRotationGestureRecognizer.entity.modify(v2);
  return protocol witness for EntityGestureRecognizer.entity.modify in conformance EntityTranslationGestureRecognizer;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo7UITouchCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So7I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n066_s10RealityKit23EntityGestureRecognizerPAAE13filterTouches_3forShypi5CGAH_p37UIEventCtFSbAGXEfU_AA0c8RotationdE0C_Q00T3Kit0v8RotationwX0CSo7UIEventCTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a4;
    v11 = a5;
    specialized closure #1 in _NativeSet.filter(_:)(v9, a2, a3, v10, v11);
    v13 = v12;

    return v13;
  }

  return result;
}

uint64_t AnchorEntity.__allocating_init(anchor:)(void *a1)
{
  v2 = type metadata accessor for AnchoringComponent.Target();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 104))(v5, *MEMORY[0x1E697A270], v2);
  v7 = dispatch thunk of AnchorEntity.__allocating_init(_:)();

  return v7;
}

uint64_t AnchoringComponent.AccessoryAnchoringSource.init(device:)()
{
  lazy protocol witness table accessor for type AnchoringComponent.AccessoryAnchoringSource.AccessoryAnchoringSourceError and conformance AnchoringComponent.AccessoryAnchoringSource.AccessoryAnchoringSourceError();
  swift_allocError();
  *v1 = 1;
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

unint64_t lazy protocol witness table accessor for type AnchoringComponent.AccessoryAnchoringSource.AccessoryAnchoringSourceError and conformance AnchoringComponent.AccessoryAnchoringSource.AccessoryAnchoringSourceError()
{
  result = lazy protocol witness table cache variable for type AnchoringComponent.AccessoryAnchoringSource.AccessoryAnchoringSourceError and conformance AnchoringComponent.AccessoryAnchoringSource.AccessoryAnchoringSourceError;
  if (!lazy protocol witness table cache variable for type AnchoringComponent.AccessoryAnchoringSource.AccessoryAnchoringSourceError and conformance AnchoringComponent.AccessoryAnchoringSource.AccessoryAnchoringSourceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnchoringComponent.AccessoryAnchoringSource.AccessoryAnchoringSourceError and conformance AnchoringComponent.AccessoryAnchoringSource.AccessoryAnchoringSourceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnchoringComponent.AccessoryAnchoringSource.AccessoryAnchoringSourceError and conformance AnchoringComponent.AccessoryAnchoringSource.AccessoryAnchoringSourceError;
  if (!lazy protocol witness table cache variable for type AnchoringComponent.AccessoryAnchoringSource.AccessoryAnchoringSourceError and conformance AnchoringComponent.AccessoryAnchoringSource.AccessoryAnchoringSourceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnchoringComponent.AccessoryAnchoringSource.AccessoryAnchoringSourceError and conformance AnchoringComponent.AccessoryAnchoringSource.AccessoryAnchoringSourceError);
  }

  return result;
}

uint64_t static AnchoringComponent.AccessoryAnchoringSource.loadAccessories(url:)()
{
  return MEMORY[0x1EEE6DFA0](static AnchoringComponent.AccessoryAnchoringSource.loadAccessories(url:), 0, 0);
}

{
  lazy protocol witness table accessor for type AnchoringComponent.AccessoryAnchoringSource.AccessoryAnchoringSourceError and conformance AnchoringComponent.AccessoryAnchoringSource.AccessoryAnchoringSourceError();
  swift_allocError();
  *v1 = 1;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

void AnchoringComponent.init(_:)(void *a1)
{
  v2 = type metadata accessor for AnchoringComponent.Target();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 104))(v5, *MEMORY[0x1E697A270], v2);
  AnchoringComponent.init(_:)();
}

ARReferenceObject_optional __swiftcall __ARReferenceProvider.fetchReferenceObject(group:name:)(Swift::String group, Swift::String name)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17ReferenceObjectARVSgMd);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  dispatch thunk of __ARReferenceProvider.fetchReferenceObject(group:name:)();
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v7, v5, &_s17RealityFoundation17ReferenceObjectARVSgMd);
  v8 = type metadata accessor for ReferenceObjectAR();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    outlined destroy of ARConfigurationCreateResult?(v7, &_s17RealityFoundation17ReferenceObjectARVSgMd);
    outlined destroy of ARConfigurationCreateResult?(v5, &_s17RealityFoundation17ReferenceObjectARVSgMd);
    v11 = 0;
  }

  else
  {
    v12 = ReferenceImageAR.image.getter();
    outlined destroy of ARConfigurationCreateResult?(v7, &_s17RealityFoundation17ReferenceObjectARVSgMd);
    (*(v9 + 8))(v5, v8);
    v11 = v12;
  }

  result.value.super.isa = v11;
  result.is_nil = v10;
  return result;
}

uint64_t __ARReferenceProvider.fetchReferenceImage(group:name:physicalWidth:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16ReferenceImageARVSgMd);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - v4;
  dispatch thunk of __ARReferenceProvider.fetchReferenceImage(group:name:physicalWidth:)();
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v5, v3, &_s17RealityFoundation16ReferenceImageARVSgMd);
  v6 = type metadata accessor for ReferenceImageAR();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {
    outlined destroy of ARConfigurationCreateResult?(v5, &_s17RealityFoundation16ReferenceImageARVSgMd);
    outlined destroy of ARConfigurationCreateResult?(v3, &_s17RealityFoundation16ReferenceImageARVSgMd);
    return 0;
  }

  else
  {
    v9 = ReferenceImageAR.image.getter();
    outlined destroy of ARConfigurationCreateResult?(v5, &_s17RealityFoundation16ReferenceImageARVSgMd);
    (*(v7 + 8))(v3, v6);
    return v9;
  }
}

uint64_t static ShapeResource.generateStaticMesh(from:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static ShapeResource.generateStaticMesh(from:);

  return MEMORY[0x1EEDD6360](a1);
}

{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

Swift::Bool __swiftcall __REAnchoringType.isEqualToARAnchor(anchor:)(ARAnchor anchor)
{
  isa = anchor.super.isa;
  v2 = type metadata accessor for __REAnchoringType.Classification();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for __REAnchoringType.Alignment();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for __REAnchoringType();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x1E697A238])
  {
    (*(v11 + 96))(v13, v10);
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeO9AlignmentV9alignment_AC14ClassificationV14classificationtMd) + 48);
    (*(v7 + 32))(v9, v13, v6);
    (*(v3 + 32))(v5, &v13[v15], v2);
    v16 = __REAnchoringType.isSurfaceAnchoringEqualToARAnchor(anchor:alignment:classification:)(isa);
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    if (v14 == *MEMORY[0x1E697A228])
    {
      (*(v11 + 96))(v13, v10);
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass() != 0;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMd) + 48);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd);
      (*(*(v18 - 8) + 8))(&v13[v17], v18);
    }

    else
    {
      if (v14 == *MEMORY[0x1E697A220])
      {
        objc_opt_self();
        v16 = swift_dynamicCastObjCClass() != 0;
        return v16 & 1;
      }

      if (v14 != *MEMORY[0x1E697A230])
      {
        (*(v11 + 8))(v13, v10);
        v16 = 0;
        return v16 & 1;
      }

      (*(v11 + 96))(v13, v10);
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass() != 0;
    }

    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 8))(v13, v19);
  }

  return v16 & 1;
}

uint64_t __REAnchoringType.isSurfaceAnchoringEqualToARAnchor(anchor:alignment:classification:)(void *a1)
{
  v2 = type metadata accessor for __REAnchoringType.Alignment();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = a1;
  v9 = [v7 alignment];
  if (v9 == 1)
  {
    static __REAnchoringType.Classification.floor.getter();
  }

  else
  {
    if (v9)
    {
LABEL_9:

LABEL_10:
      v12 = 0;
      return v12 & 1;
    }

    static __REAnchoringType.Classification.wall.getter();
  }

  lazy protocol witness table accessor for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment(&lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment, MEMORY[0x1E697A240]);
  v10 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v11 = *(v3 + 8);
  v11(v5, v2);
  if ((v10 & 1) == 0)
  {
    static __REAnchoringType.Classification.any.getter();
    lazy protocol witness table accessor for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment(&lazy protocol witness table cache variable for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment, MEMORY[0x1E697A240]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v11(v5, v2);
    if (v14[1] != v14[0])
    {
      goto LABEL_9;
    }
  }

  v12 = __REAnchoringType.isEqualToARPlaneAnchorClassification(_:classification:)(v7);

  return v12 & 1;
}

uint64_t __REAnchoringType.isEqualToARPlaneAnchorClassification(_:classification:)(void *a1)
{
  v2 = type metadata accessor for __REAnchoringType.Classification();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![objc_opt_self() isClassificationSupported] || (static __REAnchoringType.Classification.any.getter(), lazy protocol witness table accessor for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment(&lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification, MEMORY[0x1E697A208]), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v6 = *(v3 + 8), v6(v5, v2), v11[1] == v11[0]))
  {
    v7 = 1;
    return v7 & 1;
  }

  v8 = [a1 classification];
  if (v8 <= 2)
  {
    if (v8 == 1)
    {
      static __REAnchoringType.Classification.wall.getter();
      goto LABEL_15;
    }

    if (v8 == 2)
    {
      static __REAnchoringType.Classification.floor.getter();
      goto LABEL_15;
    }
  }

  else
  {
    switch(v8)
    {
      case 3:
        static __REAnchoringType.Classification.ceiling.getter();
        goto LABEL_15;
      case 4:
        static __REAnchoringType.Classification.table.getter();
        goto LABEL_15;
      case 5:
        static __REAnchoringType.Classification.seat.getter();
LABEL_15:
        lazy protocol witness table accessor for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment(&lazy protocol witness table cache variable for type __REAnchoringType.Classification and conformance __REAnchoringType.Classification, MEMORY[0x1E697A208]);
        v7 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v6(v5, v2);
        return v7 & 1;
    }
  }

  v10 = [a1 classificationStatus];
  if (v10 <= 3)
  {
    v7 = 1u >> (v10 & 0xF);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t lazy protocol witness table accessor for type __REAnchoringType.Alignment and conformance __REAnchoringType.Alignment(unint64_t *a1, void (*a2)(uint64_t))
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

void __swiftcall EntityGestureRecognizer.planeForUnprojection(heightOffset:)(simd_float4x4_optional *__return_ptr retstr, Swift::Float_optional *heightOffset)
{
  v5 = v3;
  v6 = v2;
  v9 = type metadata accessor for AnchoringComponent();
  v10 = *(v9 - 8);
  (MEMORY[0x1EEE9AC00])();
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit12HasAnchoring_p_AA0D9ComponentV6TargetOtSgMd);
  v13 = (MEMORY[0x1EEE9AC00])();
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v62 - v16);
  v18 = (*(v5 + 8))(v6, v5);
  if (!v18)
  {
    goto LABEL_18;
  }

  v64.i64[0] = v4;
  v67 = retstr;
  LODWORD(v19) = heightOffset;
  if ((heightOffset & 0x100000000) != 0)
  {
    *&v19 = 0.0;
  }

  v66 = v19;
  v65.i64[0] = *v18;
  v20 = Entity.anchor.getter();
  if (v20)
  {
    v22 = v20;
    v23 = v21;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit12HasAnchoring_p_AA0D9ComponentV6TargetOtMd);
    *v17 = v22;
    v17[1] = v23;
    v63.i64[0] = v9;

    HasAnchoring.anchoring.getter();
    AnchoringComponent.target.getter();

    (*(v10 + 8))(v12, v63.i64[0]);
    (*(*(v24 - 8) + 56))(v17, 0, 1, v24);
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit12HasAnchoring_p_AA0D9ComponentV6TargetOtMd);
    (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  }

  outlined init with copy of (HasAnchoring, AnchoringComponent.Target)?(v17, v15);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit12HasAnchoring_p_AA0D9ComponentV6TargetOtMd);
  if ((*(*(v26 - 8) + 48))(v15, 1, v26) == 1)
  {
    HasTransform.transformMatrix(relativeTo:)();
    v64 = v27;
    v65 = v28;

    v29 = vmulq_f32(v64, v64);
    *v29.i8 = vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
    v29.i32[0] = vadd_f32(*v29.i8, vdup_lane_s32(*v29.i8, 1)).u32[0];
    v30 = vrsqrte_f32(v29.u32[0]);
    v31 = vmul_f32(v30, vrsqrts_f32(v29.u32[0], vmul_f32(v30, v30)));
    v64 = vmulq_n_f32(v64, vmul_f32(v31, vrsqrts_f32(v29.u32[0], vmul_f32(v31, v31))).f32[0]);
    outlined destroy of (HasAnchoring, AnchoringComponent.Target)?(v17);
    v32 = v64;
    retstr = v67;
LABEL_21:
    v49 = 0;
    v50 = vaddq_f32(v65, vmulq_n_f32(v32, *&v66));
    goto LABEL_22;
  }

  v33 = *(v26 + 48);
  v34 = type metadata accessor for AnchoringComponent.Target();
  v35 = *(v34 - 8);
  v36 = (*(v35 + 88))(&v15[v33], v34);
  retstr = v67;
  if (v36 != *MEMORY[0x1E697A278])
  {
    HasTransform.transformMatrix(relativeTo:)();
    v64 = v44;
    v65 = v45;

    v46 = vmulq_f32(v64, v64);
    *v46.i8 = vadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL));
    v46.i32[0] = vadd_f32(*v46.i8, vdup_lane_s32(*v46.i8, 1)).u32[0];
    v47 = vrsqrte_f32(v46.u32[0]);
    v48 = vmul_f32(v47, vrsqrts_f32(v46.u32[0], vmul_f32(v47, v47)));
    v64 = vmulq_n_f32(v64, vmul_f32(v48, vrsqrts_f32(v46.u32[0], vmul_f32(v48, v48))).f32[0]);
    outlined destroy of (HasAnchoring, AnchoringComponent.Target)?(v17);
    (*(v35 + 8))(&v15[v33], v34);
    v32 = v64;
    goto LABEL_21;
  }

  v37 = [v64.i64[0] view];
  if (!v37)
  {
    outlined destroy of (HasAnchoring, AnchoringComponent.Target)?(v17);

LABEL_18:
    v49 = 1;
    v32 = 0uLL;
    v50 = 0uLL;
LABEL_22:
    retstr->value.columns[0] = 0u;
    retstr->value.columns[1] = v32;
    retstr->value.columns[2] = 0u;
    retstr->value.columns[3] = v50;
    retstr->is_nil = v49;
    return;
  }

  v38 = v37;
  type metadata accessor for ARView();
  v39 = swift_dynamicCastClass();
  if (!v39)
  {

    outlined destroy of (HasAnchoring, AnchoringComponent.Target)?(v17);
    goto LABEL_18;
  }

  if (*(v39 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {

    active = dispatch thunk of Scene.internalActiveCamera.getter();

    if (active)
    {
      type metadata accessor for Entity();
      HasTransform.transformMatrix(relativeTo:)();
      Transform.init(matrix:)();
      v63 = v42;
      v64 = v41;
      v62 = v43;
    }

    else
    {
      Transform.init()();
      v63 = v52;
      v64 = v51;
      v62 = v53;
    }

    specialized simd_float4x4.init(translation:rotation:scale:)(*&v62, v63);
    v63 = v54;
    v64 = v55;
    HasTransform.position(relativeTo:)();
    v65 = v56;

    v57 = vsubq_f32(0, v63);
    v58.i32[0] = vextq_s8(v65, v65, 8uLL).u32[0];
    v58.i32[1] = 1.0;
    v59 = vadd_f32(vmul_f32(vsub_f32(*v65.f32, *v64.f32), *v57.f32), vmul_f32(vsub_f32(v58, *&vextq_s8(v64, v64, 8uLL)), *&vextq_s8(v57, v57, 8uLL)));
    v60 = vmulq_f32(v57, v57);
    *v60.i8 = vadd_f32(*v60.i8, *&vextq_s8(v60, v60, 8uLL));
    v61 = vaddq_f32(v64, vmulq_n_f32(v57, vadd_f32(v59, vdup_lane_s32(v59, 1)).f32[0]));
    v59.i32[0] = vadd_f32(*v60.i8, vdup_lane_s32(*v60.i8, 1)).u32[0];
    *v60.i8 = vrsqrte_f32(v59.u32[0]);
    *v60.i8 = vmul_f32(*v60.i8, vrsqrts_f32(v59.u32[0], vmul_f32(*v60.i8, *v60.i8)));
    v64 = vmulq_n_f32(v57, vmul_f32(*v60.i8, vrsqrts_f32(v59.u32[0], vmul_f32(*v60.i8, *v60.i8))).f32[0]);
    v65 = v61;
    outlined destroy of (HasAnchoring, AnchoringComponent.Target)?(v17);
    v32 = vsubq_f32(0, v64);
    goto LABEL_21;
  }

  __break(1u);
}

id EntityGestureRecognizer.location(in:)(uint64_t a1)
{
  v3 = [v1 view];
  [v1 locationInView_];
  v5 = v4;
  v7 = v6;

  result = [v1 view];
  if (result)
  {
    v9 = result;
    type metadata accessor for ARView();
    if (!swift_dynamicCastClass() || (v15.value.columns[0].i8[0] = 1, EntityGestureRecognizer.planeForUnprojection(heightOffset:)(&v15, 0x100000000), v15.is_nil) || (v10 = ARView.unproject(_:ontoPlane:relativeToCamera:)(0, v5, v7, *v15.value.columns[0].i64, v15.value.columns[1], *v15.value.columns[2].i64, v15.value.columns[3]), (v11 & 1) != 0))
    {

      return 0;
    }

    else if (a1)
    {
      type metadata accessor for Entity();
      HasTransform.convert(position:from:)();
      v14 = v12;

      return v14;
    }

    else
    {
      v13 = v10;

      return v13;
    }
  }

  return result;
}

uint64_t outlined init with copy of (HasAnchoring, AnchoringComponent.Target)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit12HasAnchoring_p_AA0D9ComponentV6TargetOtSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (HasAnchoring, AnchoringComponent.Target)?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit12HasAnchoring_p_AA0D9ComponentV6TargetOtSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id PointLightComponent.color.getter()
{
  v0 = PointLightComponent.__color.getter();
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  return v1;
}

void key path getter for PointLightComponent.color : PointLightComponent(void *a1@<X8>)
{
  v2 = PointLightComponent.__color.getter();
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  *a1 = v3;
}

void PointLightComponent.color.setter(void *a1)
{
  v1 = [a1 CGColor];
  PointLightComponent.__color.setter();
}

void (*PointLightComponent.color.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = PointLightComponent.__color.getter();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  *a1 = v4;
  return PointLightComponent.color.modify;
}

void PointLightComponent.color.modify(void **a1, char a2)
{
  v2 = *a1;
  v6 = *a1;
  if (a2)
  {
    v3 = v2;
    v4 = [v3 CGColor];
    PointLightComponent.__color.setter();
  }

  else
  {
    v5 = [v2 CGColor];
    PointLightComponent.__color.setter();
  }
}

void PointLightComponent.init(color:intensity:attenuationRadius:)(void *a1)
{
  v1 = [a1 CGColor];
  PointLightComponent.init(cgColor:intensity:attenuationRadius:)();
}

void PointLightComponent.init(color:intensity:attenuationRadius:attenuationFalloffExponent:)(void *a1)
{
  v1 = [a1 CGColor];
  PointLightComponent.init(cgColor:intensity:attenuationRadius:attenuationFalloffExponent:)();
}

uint64_t PointLightComponent.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v22 - v7;
  v9 = type metadata accessor for PointLightComponent();
  MEMORY[0x1EEE9AC00](v9);
  (*(v11 + 16))(v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E1254230;
  *(v12 + 32) = 0x726F6C6F63;
  *(v12 + 40) = 0xE500000000000000;
  v13 = PointLightComponent.__color.getter();
  v14 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  v15 = type metadata accessor for UIColor();
  *(v12 + 48) = v14;
  *(v12 + 72) = v15;
  *(v12 + 80) = 0x7469736E65746E69;
  *(v12 + 88) = 0xE900000000000079;
  PointLightComponent.intensity.getter();
  v16 = MEMORY[0x1E69E6448];
  *(v12 + 96) = v17;
  *(v12 + 120) = v16;
  *(v12 + 128) = 0xD000000000000011;
  *(v12 + 136) = 0x80000001E12577C0;
  PointLightComponent.attenuationRadius.getter();
  *(v12 + 144) = v18;
  *(v12 + 168) = v16;
  *(v12 + 176) = 0xD00000000000001ALL;
  *(v12 + 184) = 0x80000001E12577E0;
  PointLightComponent.attenuationFalloffExponent.getter();
  *(v12 + 216) = v16;
  *(v12 + 192) = v19;
  v20 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

unint64_t type metadata accessor for UIColor()
{
  result = lazy cache variable for type metadata for UIColor;
  if (!lazy cache variable for type metadata for UIColor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIColor);
  }

  return result;
}

uint64_t ARView.PostProcessContext.realityViewPostProcessContext.getter()
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16MTLCommandBuffer_pMd);
  return PostProcessEffectContext.init(_:_:_:_:_:_:_:)();
}

void (*ARView.PostProcessContext.realityViewPostProcessContext.read(void *a1))(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24PostProcessEffectContextVySo16MTLCommandBuffer_pGMd);
  a1[1] = v3;
  v4 = *(v3 - 8);
  a1[2] = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(*(v4 + 64));
  }

  a1[3] = v5;
  *a1 = *(v1 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16MTLCommandBuffer_pMd);
  PostProcessEffectContext.init(_:_:_:_:_:_:_:)();
  return ARView.PostProcessContext.realityViewPostProcessContext.read;
}

void ARView.PostProcessContext.realityViewPostProcessContext.read(void *a1)
{
  v1 = a1[3];
  (*(a1[2] + 8))(v1, a1[1]);

  free(v1);
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance ARView.RenderOptions(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance ARView.RenderOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance ARView.RenderOptions@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void ARView.renderOptions.getter(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    *a1 = *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions);
  }

  else
  {
    __break(1u);
  }
}

void ARView.renderOptions.setter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions];
    *&v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions] = *a1;
    v5 = v3;
    v4 = v2;
    RKARSystem.renderOptions.didset(&v5);
  }

  else
  {
    __break(1u);
  }
}

void *ARView.renderOptions.modify(void *result)
{
  v2 = OBJC_IVAR____TtC10RealityKit6ARView_arSystem;
  result[1] = v1;
  result[2] = v2;
  v3 = *(v1 + v2);
  if (v3)
  {
    *result = *(v3 + OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions);
    return ARView.renderOptions.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ARView.renderOptions.modify(void *a1, char a2)
{
  v2 = *(a1[1] + a1[2]);
  if (a2)
  {
    if (v2)
    {
LABEL_5:
      v3 = *&v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions];
      *&v2[OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions] = *a1;
      v5 = v3;
      v4 = v2;
      RKARSystem.renderOptions.didset(&v5);

      return;
    }

    __break(1u);
  }

  if (v2)
  {
    goto LABEL_5;
  }

  __break(1u);
}

Swift::Int ARView.__RenderQuality.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12F47F0](v1);
  return Hasher._finalize()();
}

void ARView.__renderQuality.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    *a1 = *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem___renderQuality);
  }

  else
  {
    __break(1u);
  }
}

_BYTE *ARView.__renderQuality.setter(_BYTE *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem___renderQuality) = *result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*ARView.__renderQuality.modify(uint64_t (*result)(uint64_t result, char a2)))(uint64_t result, char a2)
{
  v2 = OBJC_IVAR____TtC10RealityKit6ARView_arSystem;
  *result = v1;
  *(result + 1) = v2;
  v3 = *(v1 + v2);
  if (v3)
  {
    *(result + 16) = *(v3 + OBJC_IVAR____TtC10RealityKit10RKARSystem___renderQuality);
    return ARView.__renderQuality.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ARView.__renderQuality.modify(uint64_t result, char a2)
{
  v2 = *(*result + *(result + 8));
  if (a2)
  {
    if (v2)
    {
LABEL_5:
      *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem___renderQuality) = *(result + 16);
      return result;
    }

    __break(1u);
  }

  if (v2)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *one-time initialization function for gpuClass()
{
  result = MTLCreateSystemDefaultDevice();
  if (result)
  {
    v1 = result;
    if ([result supportsFamily_])
    {
      result = swift_unknownObjectRelease();
      v2 = 3;
    }

    else if ([v1 supportsFamily_])
    {
      result = swift_unknownObjectRelease();
      v2 = 2;
    }

    else if ([v1 supportsFamily_])
    {
      result = swift_unknownObjectRelease();
      v2 = 1;
    }

    else
    {
      v3 = [v1 supportsFamily_];
      result = swift_unknownObjectRelease();
      if (v3)
      {
        v2 = 0;
      }

      else
      {
        v2 = 4;
      }
    }
  }

  else
  {
    v2 = 4;
  }

  static RKARSystem.gpuClass = v2;
  return result;
}

{
  result = MTLCreateSystemDefaultDevice();
  if (result)
  {
    v1 = result;
    if ([result supportsFamily_])
    {
      result = swift_unknownObjectRelease();
      v2 = 3;
    }

    else if ([v1 supportsFamily_])
    {
      result = swift_unknownObjectRelease();
      v2 = 2;
    }

    else if ([v1 supportsFamily_])
    {
      result = swift_unknownObjectRelease();
      v2 = 1;
    }

    else
    {
      v3 = [v1 supportsFamily_];
      result = swift_unknownObjectRelease();
      if (v3)
      {
        v2 = 0;
      }

      else
      {
        v2 = 4;
      }
    }
  }

  else
  {
    v2 = 4;
  }

  static RealityFusionSession.gpuClass = v2;
  return result;
}

void one-time initialization function for socIdentifier()
{
  if (MTLCreateSystemDefaultDevice())
  {
    v0 = [swift_unknownObjectRetain() name];
    swift_unknownObjectRelease();
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v2;
    swift_unknownObjectRelease();
  }

  else
  {
    v1 = 0;
    v3 = 0xE000000000000000;
  }

  static RKARSystem.socIdentifier = v1;
  unk_1ECEAB120 = v3;
}

uint64_t one-time initialization function for modelIdentifier()
{
  result = specialized static RKARSystem.__queryModelIdentifier()();
  static RKARSystem.modelIdentifier = result;
  unk_1ECEAB130 = v1;
  return result;
}

Swift::Void __swiftcall RKARSystem.setDefaultRenderSettings()()
{
  v1 = v0;
  v2 = type metadata accessor for __AssetRef();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    __break(1u);
    goto LABEL_26;
  }

  v6 = dispatch thunk of __Engine.services.getter();

  if (!v6)
  {
LABEL_26:
    __break(1u);
    return;
  }

  dispatch thunk of __ServiceLocator.renderService.getter();

  v7 = v29;
  v8 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v8 + 24))(v7, v8);
  v9 = OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions;
  RERenderManagerSetEnableProbeLighting();

  dispatch thunk of __RERenderGraphEmitter.__handle.getter();

  __AssetRef.__as<A>(_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  RERenderGraphEmitterAssetSetRuntimeSettingBool();

  dispatch thunk of __RERenderGraphEmitter.__handle.getter();

  __AssetRef.__as<A>(_:)();
  v10(v5, v2);
  RERenderGraphEmitterAssetSetRuntimeSettingBool();

  dispatch thunk of __RERenderGraphEmitter.__handle.getter();

  __AssetRef.__as<A>(_:)();
  v10(v5, v2);
  RERenderGraphEmitterAssetSetRuntimeSettingBool();

  dispatch thunk of __RERenderGraphEmitter.__handle.getter();

  __AssetRef.__as<A>(_:)();
  v10(v5, v2);
  RERenderGraphEmitterAssetSetRuntimeSettingBool();
  if (one-time initialization token for gpuClass != -1)
  {
    swift_once();
  }

  if (static RKARSystem.gpuClass <= 1u)
  {
    if (static RKARSystem.gpuClass)
    {
      v18 = *(v1 + v9);
      *(v1 + v9) = v18 | 0x10;
      v26 = v18;
      RKARSystem.renderOptions.didset(&v26);
      v19 = *(v1 + v9);
      *(v1 + v9) = v19 | 8;
      v26 = v19;
      RKARSystem.renderOptions.didset(&v26);
      if (one-time initialization token for socIdentifier != -1)
      {
        swift_once();
      }

      v26 = static RKARSystem.socIdentifier;
      v27 = unk_1ECEAB120;
      v25[1] = 57;
      v25[2] = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v20 = StringProtocol.contains<A>(_:)();
      if ((v20 & 1) == 0)
      {
        goto LABEL_19;
      }

      v11 = *(v1 + v9);
      v12 = v11 | 0x20;
      goto LABEL_17;
    }
  }

  else
  {
    if (static RKARSystem.gpuClass == 2)
    {
      v17 = *(v1 + v9);
      *(v1 + v9) = v17 | 0x10;
      v26 = v17;
      RKARSystem.renderOptions.didset(&v26);
      v15 = *(v1 + v9);
      v16 = v15 | 8;
      goto LABEL_12;
    }

    if (static RKARSystem.gpuClass == 3)
    {
      v11 = *(v1 + v9);
      v12 = v11 | 0x10;
LABEL_17:
      *(v1 + v9) = v12;
      v26 = v11;
      goto LABEL_18;
    }
  }

  v13 = *(v1 + v9);
  *(v1 + v9) = v13 | 0x10;
  v26 = v13;
  RKARSystem.renderOptions.didset(&v26);
  v14 = *(v1 + v9);
  *(v1 + v9) = v14 | 8;
  v26 = v14;
  RKARSystem.renderOptions.didset(&v26);
  v15 = *(v1 + v9);
  v16 = v15 | 0x20;
LABEL_12:
  *(v1 + v9) = v16;
  v26 = v15;
LABEL_18:
  v20 = RKARSystem.renderOptions.didset(&v26);
LABEL_19:
  if (one-time initialization token for modelIdentifier != -1)
  {
    v20 = swift_once();
  }

  v26 = static RKARSystem.modelIdentifier;
  v27 = unk_1ECEAB130;
  MEMORY[0x1EEE9AC00](v20);
  v25[-2] = &v26;

  v21 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v25[-4], &outlined read-only object #0 of one-time initialization function for nonARKitModelIdentifiers);

  if (v21)
  {
    RKARSystem.cameraRenderGraph.getter();
    RERenderGraphAssetSetRuntimeNodeStringSetting();
    RERenderGraphAssetSetRuntimeNodeStringSetting();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = OBJC_IVAR____TtC10RealityKit6ARView___nonARKitDevices;
      v24 = Strong;
      swift_beginAccess();
      v24[v23] = 1;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
}

unint64_t lazy protocol witness table accessor for type ARView.RenderOptions and conformance ARView.RenderOptions()
{
  result = lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions;
  if (!lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions;
  if (!lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions;
  if (!lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions;
  if (!lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARView.__RenderQuality and conformance ARView.__RenderQuality()
{
  result = lazy protocol witness table cache variable for type ARView.__RenderQuality and conformance ARView.__RenderQuality;
  if (!lazy protocol witness table cache variable for type ARView.__RenderQuality and conformance ARView.__RenderQuality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.__RenderQuality and conformance ARView.__RenderQuality);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ARView.RenderOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ARView.RenderOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ARView.__RenderQuality(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ARView.__RenderQuality(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized static RKARSystem.__queryModelIdentifier()()
{
  v42 = *MEMORY[0x1E69E9840];
  v0 = type metadata accessor for Mirror();
  v25 = *(v0 - 8);
  v26 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(&v35, 0x500uLL);
  uname(&v35);
  v29 = *&v35.machine[16];
  v30 = *v35.machine;
  v27 = *&v35.machine[48];
  v28 = *&v35.machine[32];
  v32 = *&v35.machine[80];
  v33 = *&v35.machine[64];
  v31 = *&v35.machine[96];
  *(&v40 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss4Int8V_A255BtMd);
  v3 = swift_allocObject();
  *&v39 = v3;
  v4 = v29;
  v3[1] = v30;
  v3[2] = v4;
  v5 = v27;
  v3[3] = v28;
  v3[4] = v5;
  v6 = *&v35.machine[112];
  v7 = v32;
  v3[5] = v33;
  v3[6] = v7;
  v3[7] = v31;
  v3[8] = v6;
  v8 = *&v35.machine[144];
  v3[9] = *&v35.machine[128];
  v3[10] = v8;
  v9 = *&v35.machine[176];
  v3[11] = *&v35.machine[160];
  v3[12] = v9;
  v10 = *&v35.machine[208];
  v3[13] = *&v35.machine[192];
  v3[14] = v10;
  v11 = *&v35.machine[240];
  v3[15] = *&v35.machine[224];
  v3[16] = v11;
  Mirror.init(reflecting:)();
  *&v33 = v2;
  *&v32 = Mirror.children.getter();
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  if (*(&v41 + 1))
  {
    v12 = 0;
    v13 = 0xE000000000000000;
    v14 = MEMORY[0x1E69E7CA0];
    v15 = MEMORY[0x1E69E7230];
    do
    {
      v38[0] = v39;
      v38[1] = v40;
      v38[2] = v41;
      outlined init with copy of (label: String?, value: Any)(v38, &v36);

      if (swift_dynamicCast() && v34)
      {
        if ((v34 & 0x80) != 0)
        {
          __break(1u);
        }

        v36 = v34;
        v16 = static String._uncheckedFromUTF8(_:)();
        v17 = v12;
        v18 = v15;
        v19 = v14;
        v20 = v16;
        v22 = v21;
        v36 = v17;
        v37 = v13;

        v23 = v20;
        v14 = v19;
        v15 = v18;
        MEMORY[0x1E12F4010](v23, v22);

        v12 = v36;
        v13 = v37;
      }

      outlined destroy of (label: String?, value: Any)(v38);
      dispatch thunk of _AnyIteratorBoxBase.next()();
    }

    while (*(&v41 + 1));
  }

  else
  {
    v12 = 0;
  }

  (*(v25 + 8))(v33, v26);
  return v12;
}

uint64_t outlined init with copy of (label: String?, value: Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg5label_yp5valuetMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (label: String?, value: Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg5label_yp5valuetMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

void specialized SIMD.subscript.getter(__n128 a1, double a2)
{
  v2 = a1.n128_u8[0] & 3;
  if (a1.n128_i64[0] <= 0)
  {
    v2 = -(-a1.n128_u64[0] & 3);
  }

  v3 = a1.n128_u8[8] & 3;
  if (a1.n128_i64[1] <= 0)
  {
    v3 = -(-a1.n128_u64[1] & 3);
  }

  v4 = LOBYTE(a2) & 3;
  if (*&a2 <= 0)
  {
    v4 = -(-*&a2 & 3);
  }

  if (((v2 | v4 | v3) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }
}

uint64_t ARView.project(_:)(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    return ARView.project(_:isAR:)((*(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraMode) & 1) == 0, a1);
  }

  __break(1u);
  return result;
}

uint64_t ARView.project(_:isAR:)(uint64_t result, double a2)
{
  v3 = v2;
  if ((result & 1) == 0)
  {
    if (!*&v2[OBJC_IVAR____TtC10RealityKit6ARView__scene])
    {
      __break(1u);
      goto LABEL_27;
    }

    active = dispatch thunk of Scene.internalActiveCamera.getter();

    if (!active)
    {
      return 0;
    }

    Entity.coreEntity.getter();
    REPerspectiveCameraComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      [v3 bounds];
      REPerspectiveCameraComponentCalculateProjectionWithAspectRatio();
      [v3 bounds];
      REPerspectiveCameraComponentAdjustProjectionAspect();
    }

    else
    {
      Entity.coreEntity.getter();
      RECustomMatrixCameraComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        RECustomMatrixCameraComponentCalculateProjection();
        [v3 bounds];
        RECustomMatrixCameraComponentAdjustProjectionAspect();
      }

      else
      {
        Entity.coreEntity.getter();
        REOrthographicCameraComponentGetComponentType();
        if (!REEntityGetComponentByClass())
        {
          v17 = 1;
          goto LABEL_20;
        }

        [v3 bounds];
        REOrthographicCameraComponentCalculateProjectionWithAspectRatio();
        [v3 bounds];
        REOrthographicCameraComponentAdjustProjectionAspect();
      }
    }

    REConvertProjectionToMatrix4x4();
    v17 = 0;
LABEL_20:
    Entity.coreEntity.getter();
    RETransformComponentGetComponentType();
    if (!REEntityGetComponentByClass())
    {

      return 0;
    }

    RETransformComponentGetWorldMatrix4x4F();
    __invert_f4(v25);
    result = simd_float4x4.transform(position:)();
    if ((v17 & 1) == 0)
    {
      REProjectionProjectPoint();
      v19 = ((v18 + 1.0) * 0.5);
      [v3 bounds];
      v21 = v20 * v19;
      [v3 bounds];
      [v3 bounds];
      v23 = v21 + v22;
      [v3 bounds];

      return *&v23;
    }

LABEL_27:
    __break(1u);
    return result;
  }

  v4 = [v2 session];
  v5 = [v4 currentFrame];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 camera];
  if (v3[OBJC_IVAR____TtC10RealityKit6ARView_viewCounterRotating] == 1)
  {
    v7 = *&v3[OBJC_IVAR____TtC10RealityKit6ARView_lastInterfaceOrientation];
  }

  else
  {
    v9 = [v3 window];
    if (v9 && (v10 = v9, v11 = [v9 windowScene], v10, v11))
    {
      v12 = [v11 interfaceOrientation];
    }

    else
    {
      v11 = [objc_opt_self() sharedApplication];
      v12 = [v11 statusBarOrientation];
    }

    v7 = v12;
  }

  [v3 bounds];
  [v6 projectPoint:v7 orientation:a2 viewportSize:{v13, v14}];
  v16 = v15;

  return v16;
}

uint64_t ARView.unproject(_:viewport:)()
{
  if (!*(v0 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {
    __break(1u);
  }

  active = dispatch thunk of Scene.internalActiveCamera.getter();

  v4 = 0;
  if (active)
  {
    Entity.coreEntity.getter();
    REPerspectiveCameraComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      REPerspectiveCameraComponentCalculateProjectionWithAspectRatio();
      REPerspectiveCameraComponentAdjustProjectionAspect();
    }

    else
    {
      Entity.coreEntity.getter();
      RECustomMatrixCameraComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        RECustomMatrixCameraComponentCalculateProjection();
        RECustomMatrixCameraComponentAdjustProjectionAspect();
        REProjectionClipSpaceNearZ();
        goto LABEL_9;
      }

      Entity.coreEntity.getter();
      REOrthographicCameraComponentGetComponentType();
      if (!REEntityGetComponentByClass())
      {

        return v4;
      }

      REOrthographicCameraComponentCalculateProjectionWithAspectRatio();
      REOrthographicCameraComponentAdjustProjectionAspect();
    }

    REProjectionClipSpaceNearZ();
LABEL_9:
    REConvertProjectionToMatrix4x4();
    REProjectionUnprojectPoint();
    v4 = v2;
  }

  return v4;
}

uint64_t ARView.unproject(_:ontoPlane:relativeToCamera:)(uint64_t result, double a2, double a3, double a4, float32x4_t a5, double a6, float32x4_t a7)
{
  v8 = *&v7[OBJC_IVAR____TtC10RealityKit6ARView_arSystem];
  if (!v8)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v9 = result;
  if (*(v8 + OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraMode))
  {
    if (*&v7[OBJC_IVAR____TtC10RealityKit6ARView__scene])
    {

      active = dispatch thunk of Scene.internalActiveCamera.getter();

      if (active)
      {
        [v7 bounds];
        v11 = ARView.unproject(_:viewport:)();
        if (v12)
        {

          return v11;
        }

        Entity.coreEntity.getter();
        RETransformComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          RETransformComponentGetWorldMatrix4x4F();
          v43 = v22;
          v44 = v23;
          v45 = v24;
          v46 = v25;
          simd_float4x4.transform(position:)();
          v27 = a5;
          v28 = a7;
          if (v9)
          {
            v28 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, a7.f32[0]), v44, *a7.f32, 1), v45, a7, 2), v46, a7, 3);
            v27 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, a5.f32[0]), v44, *a5.f32, 1), v45, a5, 2), v46, a5, 3);
          }

          v29 = vsubq_f32(v26, v46);
          v30 = vmulq_f32(v29, v29);
          *&v31 = v30.f32[2] + vaddv_f32(*v30.f32);
          *v30.f32 = vrsqrte_f32(v31);
          *v30.f32 = vmul_f32(*v30.f32, vrsqrts_f32(v31, vmul_f32(*v30.f32, *v30.f32)));
          v32 = vmulq_n_f32(v29, vmul_f32(*v30.f32, vrsqrts_f32(v31, vmul_f32(*v30.f32, *v30.f32))).f32[0]);
          v33 = vsubq_f32(v28, v46);
          v48 = *v32.i8;
          v50 = vadd_f32(vmul_laneq_f32(*&vzip2q_s32(v33, v32), v27, 2), vadd_f32(vrev64_s32(vmul_f32(__PAIR64__(v33.u32[1], v32.u32[0]), *v27.f32)), vmul_f32(__PAIR64__(v32.u32[1], v33.u32[0]), *v27.f32)));

          if (fabsf(v50.f32[1]) >= 0.00000011921)
          {
            __asm { FMOV            V1.2S, #1.0 }

            v39 = vand_s8(vbsl_s8(0x8000000080000000, _D1, v50), vorr_s8(vcltz_f32(v50), vcgtz_f32(v50)));
            if (vceq_f32(v39, vdup_lane_s32(v39, 1)).u32[0])
            {
              return vadd_f32(*v46.f32, vmul_n_f32(v48, v50.f32[0] / v50.f32[1]));
            }
          }
        }

        else
        {
        }
      }

      return 0;
    }

    goto LABEL_26;
  }

  v13 = [v7 session];
  v14 = [v13 currentFrame];

  if (!v14)
  {
    return 0;
  }

  if (v9)
  {
    v15 = [v14 camera];
    [v15 transform];
    v41 = v16;
    v42 = v17;
  }

  v18 = [v14 camera];
  if (v7[OBJC_IVAR____TtC10RealityKit6ARView_viewCounterRotating] != 1)
  {
    v19 = [v7 window];
    if (v19 && (v20 = v19, v21 = [v19 windowScene], v20, v21))
    {
      [v21 interfaceOrientation];
    }

    else
    {
      v21 = [objc_opt_self() sharedApplication];
      [v21 statusBarOrientation];
    }
  }

  [v7 bounds];
  v40 = ARCamera.unprojectPoint(_:ontoPlane:orientation:viewportSize:)();

  return v40;
}

void ARView.ray(through:)(float32x4_t *a1@<X8>)
{
  if (*&v1[OBJC_IVAR____TtC10RealityKit6ARView__scene])
  {

    active = dispatch thunk of Scene.internalActiveCamera.getter();

    v4 = 0uLL;
    if (!active)
    {
      v8 = 1;
      v12 = 0uLL;
LABEL_8:
      *a1 = v4;
      a1[1] = v12;
      a1[2].i8[0] = v8;
      return;
    }

    [v1 bounds];
    ARView.unproject(_:viewport:)();
    if ((v5 & 1) == 0)
    {
      Entity.coreEntity.getter();
      RETransformComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        RETransformComponentGetWorldMatrix4x4F();
        v13 = v6;
        simd_float4x4.transform(position:)();
        v14 = v7;

        v4 = v13;
        v8 = 0;
        v9 = vsubq_f32(v14, v13);
        v4.i32[3] = 0;
        v10 = vmulq_f32(v9, v9);
        *&v11 = v10.f32[2] + vaddv_f32(*v10.f32);
        *v10.f32 = vrsqrte_f32(v11);
        *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
        v12 = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
      }

      else
      {

        v8 = 1;
        v12 = 0uLL;
        v4 = 0uLL;
      }

      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void ARView.hitTest(_:query:mask:)()
{
  ARView.ray(through:)(&v1);
  if ((v2 & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
    {

      Scene.raycast(origin:direction:length:query:mask:relativeTo:)();
    }

    else
    {
      __break(1u);
    }
  }
}

void ARView.hitTest(_:requireInputTarget:query:mask:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20InputTargetComponentVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v39 - v4;
  v58 = type metadata accessor for Entity.ComponentSet();
  v6 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InputTargetComponent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for CollisionCastHit();
  v46 = *(v47 - 8);
  v12 = (MEMORY[0x1EEE9AC00])(v47);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v39 - v14;
  ARView.ray(through:)(v61);
  if (v62)
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    if (!*(v1 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
    {
LABEL_39:
      __break(1u);
      return;
    }

    v57 = v61[0];
    v55 = v61[1];

    v15 = Scene.raycast(origin:direction:length:query:mask:relativeTo:)();
  }

  v16 = v48;
  if (a1)
  {
    v45 = *(v15 + 16);
    if (!v45)
    {
LABEL_37:

      return;
    }

    v17 = 0;
    v40 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v43 = v15 + v40;
    v52 = v46 + 16;
    v57.i64[0] = v6 + 8;
    v18 = (v10 + 48);
    v54 = (v10 + 8);
    v55.i64[0] = v10 + 32;
    v42 = (v46 + 8);
    v39 = (v46 + 32);
    v51 = MEMORY[0x1E69E7CC0];
    v19 = v47;
    v44 = v15;
    while (v17 < *(v15 + 16))
    {
      v20 = v17;
      v21 = *(v46 + 72);
      v53 = v20 + 1;
      v49 = v21;
      v50 = *(v46 + 16);
      v50(v16, v43 + v21 * v20, v19);
      v22 = CollisionCastHit.entity.getter();
      swift_getKeyPath();
      v23 = MEMORY[0x1E69E7CC0];

      if (v22)
      {
        while (1)
        {
          dispatch thunk of Entity.components.getter();
          Entity.ComponentSet.subscript.getter();
          v25 = *v57.i64[0];
          (*v57.i64[0])(v8, v58);
          v26 = *v18;
          if ((*v18)(v5, 1, v9) == 1)
          {
            break;
          }

LABEL_19:
          (*v55.i64[0])(v56, v5, v9);
          v28 = InputTargetComponent.isEnabled.getter();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
          }

          v30 = *(v23 + 2);
          v29 = *(v23 + 3);
          if (v30 >= v29 >> 1)
          {
            v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v23);
          }

          (*v54)(v56, v9);
          *(v23 + 2) = v30 + 1;
          v23[v30 + 32] = v28 & 1;
          if (v22)
          {
            v59 = v22;

            swift_getAtKeyPath();

            v24 = v60;

            v22 = v24;
            if (v24)
            {
              continue;
            }
          }

          goto LABEL_24;
        }

        v27 = v22;
        while (1)
        {

          outlined destroy of InputTargetComponent?(v5);
          v59 = v27;

          swift_getAtKeyPath();

          v22 = v60;

          if (!v22)
          {
            break;
          }

          dispatch thunk of Entity.components.getter();
          Entity.ComponentSet.subscript.getter();
          v25(v8, v58);
          v27 = v22;
          if (v26(v5, 1, v9) != 1)
          {
            goto LABEL_19;
          }
        }
      }

LABEL_24:

      v31 = 0;
      v32 = *(v23 + 2);
      v19 = v47;
      v16 = v48;
      v15 = v44;
      while (v32 != v31)
      {
        v33 = &v23[v31++];
        if ((v33[32] & 1) == 0)
        {
          (*v42)(v48, v47);

          goto LABEL_9;
        }
      }

      if (v32)
      {
        v50(v41, v16, v19);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v34 = v51;
        }

        else
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51[2] + 1, 1, v51);
        }

        v35 = v49;
        v37 = v34[2];
        v36 = v34[3];
        if (v37 >= v36 >> 1)
        {
          v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1, v34);
        }

        else
        {
          v51 = v34;
        }

        (*v42)(v16, v19);
        v38 = v51;
        v51[2] = v37 + 1;
        (*v39)(&v38[v40 + v37 * v35], v41, v19);
      }

      else
      {
        (*v42)(v16, v19);
      }

LABEL_9:
      v17 = v53;
      if (v53 == v45)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_39;
  }
}

void ARView.entity(at:)()
{
  v1 = type metadata accessor for CollisionGroup();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Type = type metadata accessor for CollisionCastQueryType();
  v6 = *(Type - 8);
  MEMORY[0x1EEE9AC00](Type);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CollisionCastHit();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *MEMORY[0x1E697A2D8], Type, v11);
  static CollisionGroup.all.getter();
  ARView.ray(through:)(v17);
  if (v18)
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v16 = v1;
    if (!*(v0 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
    {
      __break(1u);
      return;
    }

    v15[0] = v17[1];
    v15[1] = v17[0];

    v14 = Scene.raycast(origin:direction:length:query:mask:relativeTo:)();

    v1 = v16;
  }

  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, Type);
  if (*(v14 + 16))
  {
    (*(v10 + 16))(v13, v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);

    CollisionCastHit.entity.getter();
    (*(v10 + 8))(v13, v9);
  }

  else
  {
  }
}

void ARView.entities(at:)()
{
  v23 = type metadata accessor for CollisionCastHit();
  v1 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CollisionGroup();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Type = type metadata accessor for CollisionCastQueryType();
  v9 = *(Type - 8);
  v10 = MEMORY[0x1EEE9AC00](Type);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x1E697A2D0], Type, v10);
  static CollisionGroup.all.getter();
  ARView.ray(through:)(v26);
  v13 = MEMORY[0x1E69E7CC0];
  if ((v27 & 1) == 0)
  {
    if (!*(v0 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
    {
      __break(1u);
      return;
    }

    v24 = v26[0];
    v22 = v26[1];

    v13 = Scene.raycast(origin:direction:length:query:mask:relativeTo:)();
  }

  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v12, Type);
  v14 = *(v13 + 16);
  if (v14)
  {
    v25 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v16 = *(v1 + 16);
    v15 = v1 + 16;
    v24.i64[0] = v16;
    v17 = *(v15 + 64);
    v22.i64[0] = v13;
    v18 = v13 + ((v17 + 32) & ~v17);
    v19 = *(v15 + 56);
    v20 = v23;
    v21 = (v15 - 8);
    do
    {
      (v24.i64[0])(v3, v18, v20);
      CollisionCastHit.entity.getter();
      (*v21)(v3, v20);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v18 += v19;
      --v14;
    }

    while (v14);
  }
}

uint64_t ARView.hitTest(_:types:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = [v3 session];
  v9 = [v8 currentFrame];

  if (!v9)
  {
    return MEMORY[0x1E69E7CC0];
  }

  [v4 bounds];
  v11 = a2 / v10;
  v13 = a3 / v12;
  if (*(v4 + OBJC_IVAR____TtC10RealityKit6ARView_viewCounterRotating) != 1)
  {
    v15 = [v4 window];
    if (v15 && (v16 = v15, v17 = [v15 windowScene], v16, v17))
    {
      [v17 interfaceOrientation];
    }

    else
    {
      v17 = [objc_opt_self() sharedApplication];
      [v17 statusBarOrientation];
    }
  }

  v18 = [v9 camera];
  [v18 imageResolution];

  ARViewToCameraImageTransform();
  v23.x = v11;
  v23.y = v13;
  v19 = CGPointApplyAffineTransform(v23, &v22);
  v20 = [v9 hitTest:a1 types:{v19.x, v19.y}];
  type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARHitTestResult);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v14;
}

ARRaycastQuery_optional __swiftcall ARView.makeRaycastQuery(from:allowing:alignment:)(CGPoint from, ARRaycastTarget allowing, ARRaycastTargetAlignment alignment)
{
  v4 = v3;
  y = from.y;
  x = from.x;
  v9 = [v4 session];
  v10 = [v9 currentFrame];

  if (v10)
  {
    [v4 bounds];
    v13 = x / v12;
    v15 = y / v14;
    if (*(v4 + OBJC_IVAR____TtC10RealityKit6ARView_viewCounterRotating) != 1)
    {
      v17 = [v4 window];
      if (v17 && (v18 = v17, v19 = [v17 windowScene], v18, v19))
      {
        [v19 interfaceOrientation];
      }

      else
      {
        v19 = [objc_opt_self() sharedApplication];
        [v19 statusBarOrientation];
      }
    }

    v20 = [v10 camera];
    [v20 imageResolution];

    ARViewToCameraImageTransform();
    v25.x = v13;
    v25.y = v15;
    v21 = CGPointApplyAffineTransform(v25, &v23);
    v16 = [v10 raycastQueryFromPoint:allowing allowingTarget:alignment alignment:{v21.x, v21.y}];
  }

  else
  {
    v16 = 0;
  }

  v22 = v16;
  result.value.super.isa = v22;
  result.is_nil = v11;
  return result;
}

id ARView.trackedRaycast(from:allowing:alignment:updateHandler:)(ARRaycastTarget a1, ARRaycastTargetAlignment a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v9 = ARView.makeRaycastQuery(from:allowing:alignment:)(__PAIR128__(*&a6, *&a5), a1, a2);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [v6 session];
  v15[4] = a3;
  v15[5] = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed [ARRaycastResult]) -> ();
  v15[3] = &block_descriptor_2;
  v12 = _Block_copy(v15);

  v13 = [v11 trackedRaycast:v10 updateHandler:v12];
  _Block_release(v12);

  return v13;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [ARRaycastResult]) -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARRaycastResult);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

uint64_t ARView.raycast(from:allowing:alignment:)(ARRaycastTarget a1, ARRaycastTargetAlignment a2, double a3, double a4)
{
  v5 = ARView.makeRaycastQuery(from:allowing:alignment:)(__PAIR128__(*&a4, *&a3), a1, a2);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = v5;
  v7 = [v4 session];
  v8 = [v7 raycast_];

  type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARRaycastResult);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

uint64_t outlined destroy of InputTargetComponent?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20InputTargetComponentVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t GroupActivitiesSynchronizationIdentity.State.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC10RealityKit38GroupActivitiesSynchronizationIdentityP33_7E3E0600D4E33AA58CAA5FAB3E0E71EC5State_participant;
  v2 = type metadata accessor for Participant();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t GroupActivitiesSynchronizationIdentity.init(participant:isLocal:)(_BYTE *a1, int a2)
{
  v3 = v2;
  v30 = a2;
  v32 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Participant();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v10 + 16);
  v14(v13, a1, v9, v11);
  type metadata accessor for GroupActivitiesSynchronizationIdentity.State();
  v15 = swift_allocObject();
  *(v15 + OBJC_IVAR____TtCC10RealityKit38GroupActivitiesSynchronizationIdentityP33_7E3E0600D4E33AA58CAA5FAB3E0E71EC5State_peerID) = 0;
  (v14)(v15 + OBJC_IVAR____TtCC10RealityKit38GroupActivitiesSynchronizationIdentityP33_7E3E0600D4E33AA58CAA5FAB3E0E71EC5State_participant, v13, v9);
  Participant.id.getter();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  v31 = *(v10 + 8);
  v31(v13, v9);
  v19 = (v15 + OBJC_IVAR____TtCC10RealityKit38GroupActivitiesSynchronizationIdentityP33_7E3E0600D4E33AA58CAA5FAB3E0E71EC5State_address);
  *v19 = v16;
  v19[1] = v18;
  *(v15 + OBJC_IVAR____TtCC10RealityKit38GroupActivitiesSynchronizationIdentityP33_7E3E0600D4E33AA58CAA5FAB3E0E71EC5State_isLocal) = v30;
  *(v3 + 16) = v15;
  RESyncDiscoveryIdentityObserverCreate();
  v20 = *(v3 + 16);
  v37 = partial apply for closure #1 in GroupActivitiesSynchronizationIdentity.init(participant:isLocal:);
  v38 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed () -> (@unowned UnsafePointer<Int8>);
  v36 = &block_descriptor_3;
  v21 = _Block_copy(&aBlock);

  RESyncDiscoveryIdentityObserverOnGetDisplayName();
  _Block_release(v21);
  v22 = *(v3 + 16);
  v37 = partial apply for closure #2 in GroupActivitiesSynchronizationIdentity.init(participant:isLocal:);
  v38 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed () -> (@unowned UnsafePointer<Int8>);
  v36 = &block_descriptor_24;
  v23 = _Block_copy(&aBlock);

  RESyncDiscoveryIdentityObserverOnGetAddress();
  _Block_release(v23);
  v24 = *(v3 + 16);
  v37 = partial apply for closure #3 in GroupActivitiesSynchronizationIdentity.init(participant:isLocal:);
  v38 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed () -> (@unowned Bool);
  v36 = &block_descriptor_27_0;
  v25 = _Block_copy(&aBlock);

  RESyncDiscoveryIdentityObserverOnIsLocal();
  _Block_release(v25);
  v26 = RESyncIdentityCreateWithObserver();
  RESyncRelease();
  v31(v32, v9);
  type metadata accessor for RESyncHandle();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v3 + 24) = v27;
  return v3;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UnsafePointer<Int8>)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id closure #1 in GroupActivitiesSynchronizationIdentity.init(participant:isLocal:)(uint64_t a1)
{
  v1 = MEMORY[0x1E12F3F80](*(a1 + OBJC_IVAR____TtCC10RealityKit38GroupActivitiesSynchronizationIdentityP33_7E3E0600D4E33AA58CAA5FAB3E0E71EC5State_address), *(a1 + OBJC_IVAR____TtCC10RealityKit38GroupActivitiesSynchronizationIdentityP33_7E3E0600D4E33AA58CAA5FAB3E0E71EC5State_address + 8));
  v2 = [v1 UTF8String];
  result = v1;
  if (v2)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Bool)(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

uint64_t GroupActivitiesSynchronizationIdentity.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GroupActivitiesSynchronizationIdentity.State()
{
  result = type metadata singleton initialization cache for GroupActivitiesSynchronizationIdentity.State;
  if (!type metadata singleton initialization cache for GroupActivitiesSynchronizationIdentity.State)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for GroupActivitiesSynchronizationIdentity.State()
{
  result = type metadata accessor for Participant();
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

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static ParticleEmitterComponent.Presets.snow.getter()
{
  v0 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.SortOrder();
  v86 = *(v0 - 8);
  v87 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v85 = &v69 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.OpacityCurve();
  v83 = *(v2 - 8);
  v84 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v82 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.BlendMode();
  v80 = *(v4 - 8);
  v81 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v79 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.BillboardMode();
  v77 = *(v6 - 8);
  v78 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for ParticleEmitterComponent.SpawnOccasion();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for ParticleEmitterComponent.SimulationSpace();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ParticleEmitterComponent.EmitterShape();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ParticleEmitterComponent.BirthLocation();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ParticleEmitterComponent.BirthDirection();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  ParticleEmitterComponent.init()();
  (*(v19 + 104))(v21, *MEMORY[0x1E697A7E0], v18);
  ParticleEmitterComponent.birthDirection.setter();
  (*(v15 + 104))(v17, *MEMORY[0x1E697A7C0], v14);
  ParticleEmitterComponent.birthLocation.setter();
  ParticleEmitterComponent.emissionDirection.setter();
  ParticleEmitterComponent.emissionDuration.setter();
  ParticleEmitterComponent.emissionDurationVariation.setter();
  (*(v11 + 104))(v13, *MEMORY[0x1E697A738], v10);
  ParticleEmitterComponent.emitterShape.setter();
  ParticleEmitterComponent.emitterShapeSize.setter();
  ParticleEmitterComponent.idleDuration.setter();
  ParticleEmitterComponent.idleDurationVariation.setter();
  ParticleEmitterComponent.shouldLoop.setter();
  ParticleEmitterComponent.particlesInheritTransform.setter();
  (*(v71 + 104))(v70, *MEMORY[0x1E697A7F0], v72);
  ParticleEmitterComponent.fieldSimulationSpace.setter();
  ParticleEmitterComponent.spawnInheritsParentColor.setter();
  (*(v74 + 104))(v73, *MEMORY[0x1E697A7D8], v75);
  ParticleEmitterComponent.spawnOccasion.setter();
  ParticleEmitterComponent.spawnSpreadFactor.setter();
  ParticleEmitterComponent.spawnSpreadFactorVariation.setter();
  ParticleEmitterComponent.spawnVelocityFactor.setter();
  ParticleEmitterComponent.speed.setter();
  ParticleEmitterComponent.speedVariation.setter();
  ParticleEmitterComponent.warmupDuration.setter();
  ParticleEmitterComponent.resetSimulation()();
  v22 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.acceleration.setter();
  v22(v88, 0);
  v23 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angle.setter();
  v23(v88, 0);
  v24 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angleVariation.setter();
  v24(v88, 0);
  v25 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angularSpeed.setter();
  v25(v88, 0);
  v26 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angularSpeedVariation.setter();
  v26(v88, 0);
  v27 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.attractionCenter.setter();
  v27(v88, 0);
  v28 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.attractionStrength.setter();
  v28(v88, 0);
  (*(v77 + 104))(v76, *MEMORY[0x1E697A770], v78);
  v29 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.billboardMode.setter();
  v29(v88, 0);
  v30 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.birthRate.setter();
  v30(v88, 0);
  v31 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.birthRateVariation.setter();
  v31(v88, 0);
  (*(v80 + 104))(v79, *MEMORY[0x1E697A790], v81);
  v32 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.blendMode.setter();
  v32(v88, 0);
  v33 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.bounce.setter();
  v33(v88, 0);
  v34 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.areCollisionsEnabled.setter();
  v34(v88, 0);
  v35 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.colorEvolutionPower.setter();
  v35(v88, 0);
  v36 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.dampingFactor.setter();
  v36(v88, 0);
  v37 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.friction.setter();
  v37(v88, 0);
  v38 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.isLightingEnabled.setter();
  v38(v88, 0);
  v39 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.lifeSpan.setter();
  v39(v88, 0);
  v40 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.lifeSpanVariation.setter();
  v40(v88, 0);
  v41 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.mass.setter();
  v41(v88, 0);
  v42 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.massVariation.setter();
  v42(v88, 0);
  v43 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.noiseAnimationSpeed.setter();
  v43(v88, 0);
  v44 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.noiseScale.setter();
  v44(v88, 0);
  v45 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.noiseStrength.setter();
  v45(v88, 0);
  (*(v83 + 104))(v82, *MEMORY[0x1E697A760], v84);
  v46 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.opacityCurve.setter();
  v46(v88, 0);
  v47 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.size.setter();
  v47(v88, 0);
  v48 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sizeVariation.setter();
  v48(v88, 0);
  v49 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sizeMultiplierAtEndOfLifespan.setter();
  v49(v88, 0);
  v50 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sizeMultiplierAtEndOfLifespanPower.setter();
  v50(v88, 0);
  v51 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.spreadingAngle.setter();
  v51(v88, 0);
  (*(v86 + 104))(v85, *MEMORY[0x1E697A7B0], v87);
  v52 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sortOrder.setter();
  v52(v88, 0);
  v53 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.stretchFactor.setter();
  v53(v88, 0);
  v54 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.vortexDirection.setter();
  v54(v88, 0);
  v55 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.vortexStrength.setter();
  v55(v88, 0);
  CGColorCreateGenericRGB(255.0, 255.0, 255.0, 1.0);
  v56 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.startColorA.setter();
  v56(v88, 0);
  CGColorCreateGenericRGB(255.0, 255.0, 255.0, 1.0);
  v57 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.startColorB.setter();
  v57(v88, 0);
  CGColorCreateGenericRGB(255.0, 255.0, 255.0, 1.0);
  v58 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.endColorA.setter();
  v58(v88, 0);
  CGColorCreateGenericRGB(255.0, 255.0, 255.0, 1.0);
  v59 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.endColorB.setter();
  v59(v88, 0);
  v60 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.useStartColorRange.setter();
  v60(v88, 0);
  v61 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.useEndColor.setter();
  v61(v88, 0);
  v62 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.useEndColorRange.setter();
  v62(v88, 0);
  type metadata accessor for TextureResource();
  v63 = MEMORY[0x1E12F3F80](0xD000000000000010, 0x80000001E1257190);
  v64 = [objc_opt_self() bundleWithIdentifier_];

  if (one-time initialization token for textureLoader != -1)
  {
    swift_once();
  }

  v65 = textureLoader;
  v88[3] = &type metadata for TextureLoader;
  v88[4] = lazy protocol witness table accessor for type TextureLoader and conformance TextureLoader();
  v88[0] = v65;
  v66 = v65;
  static TextureResource.load(named:in:textureLoader:)();

  __swift_destroy_boxed_opaque_existential_1(v88);
  v67 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.image.setter();
  return v67(v88, 0);
}

uint64_t SpatialTrackingSession.Configuration.supportedConfiguration()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SpatialTrackingSession.Configuration.Camera();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit27ARConfigurationCreateResultVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for ARConfigurationCreateResult();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  createARConfiguration(requestedConfiguration:)(v1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of ARConfigurationCreateResult?(v6, &_s10RealityKit27ARConfigurationCreateResultVSgMd);
    SpatialTrackingSession.Configuration.camera.getter();
    return SpatialTrackingSession.Configuration.init(tracking:sceneUnderstanding:camera:)();
  }

  else
  {
    outlined init with take of ARConfigurationCreateResult(v6, v10);
    v12 = *(v7 + 20);
    v13 = type metadata accessor for SpatialTrackingSession.Configuration();
    (*(*(v13 - 8) + 16))(a1, &v10[v12], v13);
    return outlined destroy of ARConfigurationCreateResult(v10);
  }
}

uint64_t type metadata accessor for ARConfigurationCreateResult()
{
  result = type metadata singleton initialization cache for ARConfigurationCreateResult;
  if (!type metadata singleton initialization cache for ARConfigurationCreateResult)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

ARConfiguration_optional __swiftcall SpatialTrackingSession.Configuration.arConfiguration()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit27ARConfigurationCreateResultVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v8 - v2);
  createARConfiguration(requestedConfiguration:)(v0, &v8 - v2);
  v4 = type metadata accessor for ARConfigurationCreateResult();
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of ARConfigurationCreateResult?(v3, &_s10RealityKit27ARConfigurationCreateResultVSgMd);
    v6 = 0;
  }

  else
  {
    v7 = *v3;
    outlined destroy of ARConfigurationCreateResult(v3);
    v6 = v7;
  }

  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

uint64_t ARConfigurationCreateResult.filteredSpatialTrackingConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ARConfigurationCreateResult() + 20);
  v4 = type metadata accessor for SpatialTrackingSession.Configuration();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ARConfigurationCreateResult.numOfSupportingCapabilities.getter()
{
  type metadata accessor for ARConfigurationCreateResult();
  v0 = *(SpatialTrackingSession.Configuration.anchorCapabilitySet.getter() + 16);

  v1 = *(SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter() + 16);

  result = v0 + v1;
  if (__OFADD__(v0, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized ARConfigurationBuilder.filterSupportingConfiguration(requestedConfiguration:)@<X0>(void (*a1)(__n128)@<X1>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for SpatialTrackingSession.Configuration.Camera();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for SpatialTrackingSession.Configuration();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v12);
  SpatialTrackingSession.Configuration.camera.getter();
  SpatialTrackingSession.Configuration.camera.getter();
  lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera, MEMORY[0x1E697A688]);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v4 + 8);
  v15(v6, v3);
  v15(v9, v3);
  if (a1)
  {
    v16 = SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
    v17 = SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
    specialized _NativeSet.intersection(_:)(v17, v16, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));

    v18 = SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter();
    v19 = SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter();
    specialized _NativeSet.intersection(_:)(v19, v18, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));

    SpatialTrackingSession.Configuration.camera.getter();
    v20 = v24;
    SpatialTrackingSession.Configuration.init(tracking:sceneUnderstanding:camera:)();
    v21 = 0;
  }

  else
  {
    v21 = 1;
    v20 = v24;
  }

  (*(v11 + 8))(v14, v10);
  return (*(v11 + 56))(v20, v21, 1, v10);
}

uint64_t ARConfigurationBuilder.filterSupportingConfiguration(requestedConfiguration:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = type metadata accessor for SpatialTrackingSession.Configuration.Camera();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v26 = type metadata accessor for SpatialTrackingSession.Configuration();
  v12 = *(v26 - 8);
  v13 = MEMORY[0x1EEE9AC00](v26);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2, v13);
  SpatialTrackingSession.Configuration.camera.getter();
  SpatialTrackingSession.Configuration.camera.getter();
  lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera, MEMORY[0x1E697A688]);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v6 + 8);
  v17(v8, v5);
  v17(v11, v5);
  if (v16)
  {
    v18 = SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
    v19 = SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
    specialized _NativeSet.intersection(_:)(v19, v18, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));

    v20 = SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter();
    v21 = SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter();
    specialized _NativeSet.intersection(_:)(v21, v20, specialized closure #1 in _NativeSet.intersection(_:), specialized closure #1 in _NativeSet.intersection(_:));

    SpatialTrackingSession.Configuration.camera.getter();
    v22 = v27;
    SpatialTrackingSession.Configuration.init(tracking:sceneUnderstanding:camera:)();
    v23 = 0;
  }

  else
  {
    v23 = 1;
    v22 = v27;
  }

  v24 = v26;
  (*(v12 + 8))(v15, v26);
  return (*(v12 + 56))(v22, v23, 1, v24);
}

uint64_t ARWorldTrackingConfigurationBuilder.supportingConfiguration()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for SpatialTrackingSession.Configuration.Camera();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARWorldTrackingConfiguration);
  if ([swift_getObjCClassFromMetadata() isSupported])
  {
    v23 = v10;
    v24 = v9;
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMd);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1E1252E70;
    static SpatialTrackingSession.Configuration.AnchorCapability.world.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.plane.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.image.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.object.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.camera.getter();
    v14 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityV_Tt0g5Tf4g_n(v13);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v26 = v14;
    v15 = objc_opt_self();
    if ([v15 supportsUserFaceTracking])
    {
      static SpatialTrackingSession.Configuration.AnchorCapability.face.getter();
      specialized Set._Variant.insert(_:)(v8, v5);
      (*(v3 + 8))(v8, v2);
    }

    v16 = [v15 supportsSceneReconstruction_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd);
    v17 = type metadata accessor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v20 = swift_allocObject();
    if (v16)
    {
      *(v20 + 16) = xmmword_1E1254230;
      static SpatialTrackingSession.Configuration.AnchorCapability.world.getter();
      static SpatialTrackingSession.Configuration.AnchorCapability.image.getter();
      static SpatialTrackingSession.Configuration.AnchorCapability.plane.getter();
      static SpatialTrackingSession.Configuration.AnchorCapability.object.getter();
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityV_Tt0g5Tf4g_n(v20);
      swift_setDeallocating();
      swift_arrayDestroy();
    }

    else
    {
      *(v20 + 16) = xmmword_1E12531A0;
      static SpatialTrackingSession.Configuration.AnchorCapability.world.getter();
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityV_Tt0g5Tf4g_n(v20);
      swift_setDeallocating();
      (*(v18 + 8))(v20 + v19, v17);
    }

    v21 = v24;
    swift_deallocClassInstance();
    (*(v23 + 104))(v12, *MEMORY[0x1E697A678], v21);
  }

  else
  {
    (*(v10 + 104))(v12, *MEMORY[0x1E697A678], v9);
  }

  return SpatialTrackingSession.Configuration.init(tracking:sceneUnderstanding:camera:)();
}

void ARWorldTrackingConfigurationBuilder.filterSupportingConfiguration(requestedConfiguration:arConfiguration:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a1;
  v5 = type metadata accessor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability();
  v75 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v72 - v8;
  v9 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  v93 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v72 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v92 = &v72 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v94 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v88 = &v72 - v19;
  v20 = type metadata accessor for SpatialTrackingSession.Configuration();
  v87 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v91 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SpatialTrackingSession.Configuration.Camera();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v72 - v27;
  objc_opt_self();
  v85 = swift_dynamicCastObjCClass();
  if (!v85)
  {
    v41 = *(v87 + 56);

    v41(a3, 1, 1, v20);
    return;
  }

  v78 = v20;
  v72 = v5;
  v77 = a3;
  v76 = a2;
  SpatialTrackingSession.Configuration.camera.getter();
  v29 = *MEMORY[0x1E697A678];
  v90 = *(v23 + 104);
  v90(v25, v29, v22);
  lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera, MEMORY[0x1E697A688]);
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v31 = *(v23 + 8);
  v31(v25, v22);
  v31(v28, v22);
  if ((v30 & 1) == 0)
  {
    (*(v87 + 56))(v77, 1, 1, v78);

    return;
  }

  v81 = v13;
  v32 = v90;
  v90(v28, v29, v22);
  SpatialTrackingSession.Configuration.init(tracking:sceneUnderstanding:camera:)();
  v32(v28, v29, v22);
  SpatialTrackingSession.Configuration.camera.setter();
  v33 = SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
  v34 = 0;
  v36 = v33 + 56;
  v35 = *(v33 + 56);
  v83 = v33;
  v37 = 1 << *(v33 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v35;
  v40 = (v37 + 63) >> 6;
  v79 = v40;
  v80 = v93 + 32;
  v89 = v93 + 8;
  v90 = (v93 + 16);
  while (1)
  {
    v45 = v92;
    if (!v39)
    {
      break;
    }

LABEL_20:
    v48 = v93;
    v49 = *(v93 + 16);
    v50 = v88;
    v49(v88, *(v83 + 48) + *(v93 + 72) * (__clz(__rbit64(v39)) | (v34 << 6)), v9);
    v51 = v94;
    (*(v48 + 32))(v94, v50, v9);
    v84 = v49;
    v49(v45, v51, v9);
    v52 = v81;
    static SpatialTrackingSession.Configuration.AnchorCapability.plane.getter();
    lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]);
    LOBYTE(v51) = dispatch thunk of static Equatable.== infix(_:_:)();
    v53 = *(v48 + 8);
    v53(v52, v9);
    if (v51)
    {
      v53(v45, v9);
      if ([v85 planeDetection])
      {
        goto LABEL_11;
      }
    }

    else
    {
      static SpatialTrackingSession.Configuration.AnchorCapability.face.getter();
      v54 = dispatch thunk of static Equatable.== infix(_:_:)();
      v53(v52, v9);
      if (v54)
      {
        v53(v45, v9);
        if ([objc_opt_self() supportsUserFaceTracking])
        {
          v42 = v52;
          if ([v85 userFaceTrackingEnabled])
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        static SpatialTrackingSession.Configuration.AnchorCapability.image.getter();
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v53(v52, v9);
        if (v55 & 1) != 0 || (static SpatialTrackingSession.Configuration.AnchorCapability.object.getter(), v56 = dispatch thunk of static Equatable.== infix(_:_:)(), v53(v52, v9), (v56) || (static SpatialTrackingSession.Configuration.AnchorCapability.world.getter(), v57 = dispatch thunk of static Equatable.== infix(_:_:)(), v53(v52, v9), (v57))
        {
          v53(v45, v9);
LABEL_11:
          v42 = v52;
LABEL_12:
          v43 = v82;
          v84(v82, v94, v9);
          v44 = SpatialTrackingSession.Configuration.anchorCapabilitySet.modify();
          specialized Set._Variant.insert(_:)(v42, v43);
          v53(v42, v9);
          v44(v95, 0);
          goto LABEL_13;
        }

        static SpatialTrackingSession.Configuration.AnchorCapability.camera.getter();
        v58 = dispatch thunk of static Equatable.== infix(_:_:)();
        v53(v52, v9);
        v53(v45, v9);
        v42 = v52;
        if (v58)
        {
          goto LABEL_12;
        }
      }
    }

LABEL_13:
    v39 &= v39 - 1;
    v53(v94, v9);
    v40 = v79;
  }

  v46 = v78;
  while (1)
  {
    v47 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      return;
    }

    if (v47 >= v40)
    {
      break;
    }

    v39 = *(v36 + 8 * v47);
    ++v34;
    if (v39)
    {
      v34 = v47;
      goto LABEL_20;
    }
  }

  if (([objc_opt_self() supportsSceneReconstruction_] & 1) != 0 && objc_msgSend(v85, sel_sceneReconstruction))
  {
    SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter();
    SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.setter();
    v59 = v77;
    v60 = v76;
  }

  else
  {
    v61 = [v85 planeDetection];
    v59 = v77;
    v62 = v72;
    v63 = v75;
    v60 = v76;
    if (v61)
    {
      v64 = SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter();
      v65 = v74;
      static SpatialTrackingSession.Configuration.AnchorCapability.world.getter();
      v66 = specialized Set.contains(_:)(v65, v64);

      v67 = *(v63 + 8);
      v67(v65, v62);
      if (v66)
      {
        v68 = v73;
        static SpatialTrackingSession.Configuration.AnchorCapability.world.getter();
        v69 = SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.modify();
        v70 = v74;
        specialized Set._Variant.insert(_:)(v74, v68);
        v71 = v70;
        v46 = v78;
        v67(v71, v62);
        v69(v95, 0);
      }
    }
  }

  (*(v87 + 32))(v59, v91, v46);
  (*(v87 + 56))(v59, 0, 1, v46);
}

uint64_t ARWorldTrackingConfigurationBuilder.createARConfiguration(requestedConfiguration:)@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability();
  v37 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for SpatialTrackingSession.Configuration();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized ARConfigurationBuilder.filterSupportingConfiguration(requestedConfiguration:)(ARWorldTrackingConfigurationBuilder.supportingConfiguration(), v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of ARConfigurationCreateResult?(v10, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd);
    v15 = type metadata accessor for ARConfigurationCreateResult();
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }

  v35 = a1;
  v17 = *(v12 + 32);
  v33 = v2;
  v34 = v17;
  v17(v14, v10, v11);
  v18 = [objc_allocWithZone(MEMORY[0x1E69864E8]) init];
  [v18 setEnvironmentTexturing_];
  v19 = SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
  static SpatialTrackingSession.Configuration.AnchorCapability.face.getter();
  v20 = specialized Set.contains(_:)(v7, v19);

  v21 = *(v5 + 8);
  v21(v7, v4);
  [v18 setUserFaceTrackingEnabled_];
  v22 = SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
  static SpatialTrackingSession.Configuration.AnchorCapability.plane.getter();
  v23 = specialized Set.contains(_:)(v7, v22);

  v21(v7, v4);
  if (v23)
  {
    [v18 setPlaneDetection_];
    [v18 setPlaneDetection_];
  }

  v24 = *(SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter() + 16);

  v25 = v35;
  if (v24)
  {
    if ([objc_opt_self() supportsSceneReconstruction_])
    {
      v26 = &selRef_setSceneReconstruction_;
      v27 = &selRef_sceneReconstruction;
LABEL_10:
      [v18 *v26];
      goto LABEL_11;
    }

    v28 = SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter();
    v29 = v36;
    static SpatialTrackingSession.Configuration.AnchorCapability.world.getter();
    v30 = specialized Set.contains(_:)(v29, v28);

    (*(v37 + 8))(v29, v33);
    if (v30)
    {
      v26 = &selRef_setPlaneDetection_;
      v27 = &selRef_planeDetection;
      goto LABEL_10;
    }
  }

LABEL_11:
  v31 = type metadata accessor for ARConfigurationCreateResult();
  v34(&v25[*(v31 + 20)], v14, v11);
  *v25 = v18;
  return (*(*(v31 - 8) + 56))(v25, 0, 1, v31);
}

uint64_t ARFaceTrackingConfigurationBuilder.supportingConfiguration()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for SpatialTrackingSession.Configuration.Camera();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARFaceTrackingConfiguration);
  if ([swift_getObjCClassFromMetadata() isSupported])
  {
    v16[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMd);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1E1252F40;
    static SpatialTrackingSession.Configuration.AnchorCapability.face.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.camera.getter();
    v14 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityV_Tt0g5Tf4g_n(v13);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v16[1] = v14;
    if ([objc_opt_self() supportsWorldTracking])
    {
      static SpatialTrackingSession.Configuration.AnchorCapability.world.getter();
      specialized Set._Variant.insert(_:)(v8, v5);
      (*(v3 + 8))(v8, v2);
    }

    (*(v10 + 104))(v12, *MEMORY[0x1E697A680], v9);
  }

  else
  {
    (*(v10 + 104))(v12, *MEMORY[0x1E697A678], v9);
  }

  return SpatialTrackingSession.Configuration.init(tracking:sceneUnderstanding:camera:)();
}

uint64_t ARFaceTrackingConfigurationBuilder.filterSupportingConfiguration(requestedConfiguration:arConfiguration:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v5 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for SpatialTrackingSession.Configuration.Camera();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SpatialTrackingSession.Configuration();
  v44 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v40 = v15;
    v41 = a3;
    v38 = v18;
    v19 = *(v12 + 104);
    v19(v14, *MEMORY[0x1E697A678], v11);
    v39 = a2;
    SpatialTrackingSession.Configuration.init(tracking:sceneUnderstanding:camera:)();
    v19(v14, *MEMORY[0x1E697A680], v11);
    SpatialTrackingSession.Configuration.camera.setter();
    v20 = SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.face.getter();
    v21 = specialized Set.contains(_:)(v10, v20);

    v22 = *(v6 + 8);
    v22(v10, v5);
    if (v21)
    {
      v23 = v43;
      static SpatialTrackingSession.Configuration.AnchorCapability.face.getter();
      v24 = SpatialTrackingSession.Configuration.anchorCapabilitySet.modify();
      specialized Set._Variant.insert(_:)(v10, v23);
      v22(v10, v5);
      v24(v45, 0);
    }

    v25 = SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.camera.getter();
    v26 = specialized Set.contains(_:)(v10, v25);

    v22(v10, v5);
    if (v26)
    {
      v27 = v43;
      static SpatialTrackingSession.Configuration.AnchorCapability.camera.getter();
      v28 = SpatialTrackingSession.Configuration.anchorCapabilitySet.modify();
      specialized Set._Variant.insert(_:)(v10, v27);
      v22(v10, v5);
      v28(v45, 0);
    }

    v29 = SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.world.getter();
    v30 = specialized Set.contains(_:)(v10, v29);

    v22(v10, v5);
    v31 = v41;
    if ((v30 & 1) != 0 && [objc_opt_self() supportsWorldTracking])
    {
      if ([v38 isWorldTrackingEnabled])
      {
        v32 = v43;
        static SpatialTrackingSession.Configuration.AnchorCapability.world.getter();
        v33 = SpatialTrackingSession.Configuration.anchorCapabilitySet.modify();
        specialized Set._Variant.insert(_:)(v10, v32);
        v22(v10, v5);
        v33(v45, 0);
        v31 = v41;
      }
    }

    v34 = v40;
    (*(v44 + 32))(v31, v17, v40);
    return (*(v44 + 56))(v31, 0, 1, v34);
  }

  else
  {
    v36 = *(v44 + 56);

    return v36(a3, 1, 1, v15);
  }
}

uint64_t ARFaceTrackingConfigurationBuilder.createARConfiguration(requestedConfiguration:)@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for SpatialTrackingSession.Configuration();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized ARConfigurationBuilder.filterSupportingConfiguration(requestedConfiguration:)(ARFaceTrackingConfigurationBuilder.supportingConfiguration(), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of ARConfigurationCreateResult?(v8, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd);
    v13 = type metadata accessor for ARConfigurationCreateResult();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    v22 = a1;
    v15 = *(v10 + 32);
    v15(v12, v8, v9);
    v16 = [objc_allocWithZone(MEMORY[0x1E6986460]) init];
    v17 = SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.world.getter();
    v18 = specialized Set.contains(_:)(v5, v17);

    (*(v3 + 8))(v5, v2);
    if (v18)
    {
      [v16 setWorldTrackingEnabled_];
    }

    v19 = type metadata accessor for ARConfigurationCreateResult();
    v20 = v22;
    v15(v22 + *(v19 + 20), v12, v9);
    *v20 = v16;
    return (*(*(v19 - 8) + 56))(v20, 0, 1, v19);
  }
}

uint64_t ARBodyTrackingConfigurationBuilder.supportingConfiguration()()
{
  v0 = type metadata accessor for SpatialTrackingSession.Configuration.Camera();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARBodyTrackingConfiguration);
  if ([swift_getObjCClassFromMetadata() isSupported])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMd);
    type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1E1254230;
    static SpatialTrackingSession.Configuration.AnchorCapability.body.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.plane.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.image.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.camera.getter();
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityV_Tt0g5Tf4g_n(v4);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd);
    v5 = type metadata accessor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability();
    v6 = *(v5 - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1E12531A0;
    static SpatialTrackingSession.Configuration.AnchorCapability.world.getter();
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityV_Tt0g5Tf4g_n(v8);
    swift_setDeallocating();
    (*(v6 + 8))(v8 + v7, v5);
    swift_deallocClassInstance();
  }

  (*(v1 + 104))(v3, *MEMORY[0x1E697A678], v0);
  return SpatialTrackingSession.Configuration.init(tracking:sceneUnderstanding:camera:)();
}

void ARBodyTrackingConfigurationBuilder.filterSupportingConfiguration(requestedConfiguration:arConfiguration:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a1;
  v5 = type metadata accessor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability();
  v76 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v72 - v9;
  v10 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  v88 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v72 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v72 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v87 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v72 - v19;
  v20 = type metadata accessor for SpatialTrackingSession.Configuration();
  v84 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v90 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SpatialTrackingSession.Configuration.Camera();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v72 - v27;
  objc_opt_self();
  v81 = swift_dynamicCastObjCClass();
  if (!v81)
  {
    v59 = *(v84 + 56);

    v59(a3, 1, 1, v20);
    return;
  }

  v89 = v20;
  v72 = v7;
  v73 = v5;
  v75 = a3;
  v91 = a2;
  SpatialTrackingSession.Configuration.camera.getter();
  v29 = *MEMORY[0x1E697A678];
  v30 = *(v23 + 104);
  v30(v25, v29, v22);
  v31 = static SpatialTrackingSession.Configuration.Camera.== infix(_:_:)();
  v32 = *(v23 + 8);
  v32(v25, v22);
  v32(v28, v22);
  if ((v31 & 1) == 0)
  {
    (*(v84 + 56))(v75, 1, 1, v89);

    return;
  }

  v30(v28, v29, v22);
  SpatialTrackingSession.Configuration.init(tracking:sceneUnderstanding:camera:)();
  v33 = SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
  v34 = 0;
  v36 = v33 + 56;
  v35 = *(v33 + 56);
  v80 = v33;
  v37 = 1 << *(v33 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v35;
  v40 = (v37 + 63) >> 6;
  v41 = v87;
  v86 = v88 + 16;
  v78 = v88 + 32;
  v79 = v33 + 56;
  v94 = v88 + 8;
  v42 = v93;
  v43 = v83;
  v44 = v91;
  v77 = v40;
  while (1)
  {
    v48 = v89;
    if (!v39)
    {
      break;
    }

    v49 = v43;
LABEL_15:
    v51 = v88;
    v52 = *(v88 + 16);
    v53 = v85;
    v52(v85, *(v80 + 48) + *(v88 + 72) * (__clz(__rbit64(v39)) | (v34 << 6)), v10);
    (*(v51 + 32))(v41, v53, v10);
    v83 = v52;
    v52(v49, v41, v10);
    static SpatialTrackingSession.Configuration.AnchorCapability.plane.getter();
    lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]);
    v43 = v49;
    LOBYTE(v53) = dispatch thunk of static Equatable.== infix(_:_:)();
    v54 = *(v51 + 8);
    v54(v42, v10);
    if (v53)
    {
      v54(v49, v10);
      v55 = [v81 planeDetection];
      v41 = v87;
      v40 = v77;
      if (v55)
      {
        goto LABEL_7;
      }
    }

    else
    {
      static SpatialTrackingSession.Configuration.AnchorCapability.image.getter();
      v56 = dispatch thunk of static Equatable.== infix(_:_:)();
      v54(v42, v10);
      v40 = v77;
      if (v56 & 1) != 0 || (static SpatialTrackingSession.Configuration.AnchorCapability.body.getter(), v57 = dispatch thunk of static Equatable.== infix(_:_:)(), v54(v42, v10), (v57))
      {
        v54(v43, v10);
        v41 = v87;
LABEL_7:
        v45 = v82;
        (v83)(v82, v41, v10);
        v46 = SpatialTrackingSession.Configuration.anchorCapabilitySet.modify();
        v47 = v45;
        v42 = v93;
        specialized Set._Variant.insert(_:)(v93, v47);
        v54(v42, v10);
        v46(v95, 0);
        goto LABEL_8;
      }

      static SpatialTrackingSession.Configuration.AnchorCapability.camera.getter();
      v58 = dispatch thunk of static Equatable.== infix(_:_:)();
      v54(v42, v10);
      v54(v43, v10);
      v41 = v87;
      if (v58)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v39 &= v39 - 1;
    v54(v41, v10);
    v44 = v91;
    v36 = v79;
  }

  while (1)
  {
    v50 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      return;
    }

    if (v50 >= v40)
    {
      break;
    }

    v39 = *(v36 + 8 * v50);
    ++v34;
    if (v39)
    {
      v49 = v43;
      v34 = v50;
      goto LABEL_15;
    }
  }

  v60 = [v81 planeDetection];
  v61 = v73;
  v62 = v76;
  if (v60)
  {
    v63 = SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter();
    v64 = v74;
    static SpatialTrackingSession.Configuration.AnchorCapability.world.getter();
    v65 = specialized Set.contains(_:)(v64, v63);
    v44 = v91;

    v66 = *(v62 + 8);
    v66(v64, v61);
    if (v65)
    {
      v67 = v72;
      static SpatialTrackingSession.Configuration.AnchorCapability.world.getter();
      v68 = SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.modify();
      v69 = v74;
      v70 = v67;
      v48 = v89;
      specialized Set._Variant.insert(_:)(v74, v70);
      v66(v69, v61);
      v68(v95, 0);
      v44 = v91;
    }
  }

  v71 = v75;
  (*(v84 + 32))(v75, v90, v48);
  (*(v84 + 56))(v71, 0, 1, v48);
}

uint64_t ARBodyTrackingConfigurationBuilder.createARConfiguration(requestedConfiguration:)@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability();
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for SpatialTrackingSession.Configuration();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized ARConfigurationBuilder.filterSupportingConfiguration(requestedConfiguration:)(ARBodyTrackingConfigurationBuilder.supportingConfiguration(), v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of ARConfigurationCreateResult?(v10, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd);
    v15 = type metadata accessor for ARConfigurationCreateResult();
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }

  else
  {
    v30 = v2;
    v31 = a1;
    v29 = *(v12 + 32);
    v29(v14, v10, v11);
    v17 = [objc_allocWithZone(MEMORY[0x1E6986428]) init];
    v18 = SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.body.getter();
    v19 = specialized Set.contains(_:)(v7, v18);

    v20 = *(v5 + 8);
    v20(v7, v4);
    if (v19)
    {
      [v17 setAutomaticSkeletonScaleEstimationEnabled_];
    }

    v21 = SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.plane.getter();
    v22 = specialized Set.contains(_:)(v7, v21);

    v20(v7, v4);
    if (v22)
    {
      [v17 setPlaneDetection_];
      [v17 setPlaneDetection_];
    }

    v23 = SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter();
    v24 = v32;
    static SpatialTrackingSession.Configuration.AnchorCapability.world.getter();
    v25 = specialized Set.contains(_:)(v24, v23);

    (*(v33 + 8))(v24, v30);
    v26 = v31;
    if (v25)
    {
      [v17 setPlaneDetection_];
    }

    v27 = type metadata accessor for ARConfigurationCreateResult();
    v29(&v26[*(v27 + 20)], v14, v11);
    *v26 = v17;
    return (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  }
}

uint64_t createARConfiguration(requestedConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v37 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit27ARConfigurationCreateResultVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - v3;
  v41 = type metadata accessor for ARConfigurationCreateResult();
  v5 = *(v41 - 8);
  v6 = MEMORY[0x1EEE9AC00](v41);
  v36 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v38 = &v36 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit22ARConfigurationBuilder_pGMd);
  inited = swift_initStackObject();
  v16 = 0;
  *(inited + 56) = &type metadata for ARWorldTrackingConfigurationBuilder;
  *(inited + 64) = &protocol witness table for ARWorldTrackingConfigurationBuilder;
  *(inited + 96) = &type metadata for ARFaceTrackingConfigurationBuilder;
  *(inited + 104) = &protocol witness table for ARFaceTrackingConfigurationBuilder;
  *(inited + 16) = xmmword_1E12545E0;
  *(inited + 136) = &type metadata for ARBodyTrackingConfigurationBuilder;
  *(inited + 144) = &protocol witness table for ARBodyTrackingConfigurationBuilder;
  v39 = v5;
  v17 = MEMORY[0x1E69E7CC0];
  do
  {
    v19 = *(inited + v16 + 56);
    v18 = *(inited + v16 + 64);
    __swift_project_boxed_opaque_existential_1((inited + v16 + 32), v19);
    (*(v18 + 32))(v40, v19, v18);
    if ((*(v5 + 48))(v4, 1, v41) == 1)
    {
      outlined destroy of ARConfigurationCreateResult?(v4, &_s10RealityKit27ARConfigurationCreateResultVSgMd);
    }

    else
    {
      outlined init with take of ARConfigurationCreateResult(v4, v14);
      outlined init with copy of ARConfigurationCreateResult(v14, v12);
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

      outlined destroy of ARConfigurationCreateResult(v14);
      v17[2] = v21 + 1;
      outlined init with take of ARConfigurationCreateResult(v12, v17 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v21);
    }

    v16 += 40;
  }

  while (v16 != 120);

  v22 = v17[2];
  if (!v22)
  {
    v28 = 1;
    v27 = v37;
    v25 = v41;
    goto LABEL_14;
  }

  v23 = v17 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
  result = outlined init with copy of ARConfigurationCreateResult(v23, v38);
  v25 = v41;
  v26 = v36;
  if (v22 == 1)
  {
LABEL_12:
    v27 = v37;
    outlined init with take of ARConfigurationCreateResult(v38, v37);
    v28 = 0;
LABEL_14:
    (*(v39 + 56))(v27, v28, 1, v25);
  }

  v29 = 1;
  while (v29 < v17[2])
  {
    outlined init with copy of ARConfigurationCreateResult(v23 + *(v39 + 72) * v29, v26);
    v30 = *(SpatialTrackingSession.Configuration.anchorCapabilitySet.getter() + 16);

    v31 = *(SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter() + 16);

    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_24;
    }

    v33 = *(SpatialTrackingSession.Configuration.anchorCapabilitySet.getter() + 16);

    v34 = *(SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter() + 16);

    if (__OFADD__(v33, v34))
    {
      goto LABEL_25;
    }

    if (v32 >= v33 + v34)
    {
      result = outlined destroy of ARConfigurationCreateResult(v26);
    }

    else
    {
      v35 = v38;
      outlined destroy of ARConfigurationCreateResult(v38);
      result = outlined init with take of ARConfigurationCreateResult(v26, v35);
    }

    if (v22 == ++v29)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}