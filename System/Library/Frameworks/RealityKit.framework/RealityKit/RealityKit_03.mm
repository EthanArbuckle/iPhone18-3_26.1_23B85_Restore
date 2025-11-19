uint64_t ARView.__statisticsOptions.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10RealityKit6ARView___statisticsOptions;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t ARView.__statisticsOptions.setter(int *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC10RealityKit6ARView___statisticsOptions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v6 = v4;
  return ARView.__statisticsOptions.didset(&v6);
}

void (*ARView.__statisticsOptions.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC10RealityKit6ARView___statisticsOptions;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return ARView.__statisticsOptions.modify;
}

void ARView.__statisticsOptions.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 40);
  if (a2)
  {
    v7 = v5;
    v6 = &v7;
  }

  else
  {
    v8 = v5;
    v6 = &v8;
  }

  ARView.__statisticsOptions.didset(v6);

  free(v2);
}

Swift::Void __swiftcall ARView.__frameProfilerAddCustomStatistic(_:_:)(Swift::String a1, Swift::Float a2)
{
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  FrameStatisticsHUD = REServiceLocatorGetFrameStatisticsHUD();
  if (FrameStatisticsHUD)
  {
    v4 = FrameStatisticsHUD;
    v5 = String.utf8CString.getter();
    MEMORY[0x1E12F4D30](v4, v5 + 32, a2);
  }
}

uint64_t ARView.__disableStatisticsRendering.getter()
{
  v1 = OBJC_IVAR____TtC10RealityKit6ARView___disableStatisticsRendering;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ARView.__disableStatisticsRendering.setter(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = OBJC_IVAR____TtC10RealityKit6ARView___disableStatisticsRendering;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  *(v2 + v5) = a1;
  if (v7 != v4)
  {
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

    result = REServiceLocatorGetFrameStatisticsHUD();
    if (result)
    {
      return REFrameStatisticsHUDSetDisableRendering();
    }
  }

  return result;
}

void (*ARView.__disableStatisticsRendering.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC10RealityKit6ARView___disableStatisticsRendering;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return ARView.__disableStatisticsRendering.modify;
}

void ARView.__disableStatisticsRendering.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if ((v4 ^ v5))
  {
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

    if (REServiceLocatorGetFrameStatisticsHUD())
    {
      REFrameStatisticsHUDSetDisableRendering();
    }
  }

  free(v1);
}

uint64_t ARView.__getStatisticsStringForSingleOption(statisticOption:)()
{
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  result = REServiceLocatorGetFrameStatisticsHUD();
  if (result)
  {
    REFrameStatisticsHUDGetStatisticsForOption();
    return String.init(cString:)();
  }

  return result;
}

Swift::Void __swiftcall ARView.__setProfilerUpdateInterval(newInterval:)(Swift::Float newInterval)
{
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  if (REServiceLocatorGetFrameStatisticsHUD())
  {

    JUMPOUT(0x1E12F4D90);
  }
}

Swift::Float __swiftcall ARView.__frameTime()()
{
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  if (REServiceLocatorGetFrameStatisticsHUD())
  {

    JUMPOUT(0x1E12F4DA0);
  }

  return 0.0;
}

void ARView.snapshot(saveToHDR:completion:)(int a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v80 = a1;
  v86 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for __SceneRef();
  v78 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v77 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AntialiasingMode();
  v79 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v67 - v13;
  v15 = OBJC_IVAR____TtC10RealityKit6ARView__scene;
  if (!*&v3[OBJC_IVAR____TtC10RealityKit6ARView__scene])
  {
LABEL_45:
    __break(1u);
  }

  active = dispatch thunk of Scene.internalActiveCamera.getter();

  if (active)
  {

    if (*&v3[v15])
    {

      v17 = dispatch thunk of Scene.internalActiveCamera.getter();
      goto LABEL_7;
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (!*&v3[v15])
  {
    goto LABEL_47;
  }

  v17 = dispatch thunk of Scene.defaultCamera.getter();
LABEL_7:
  v18 = v17;

  if (!v18)
  {
    static os_log_type_t.error.getter();
    type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for OS_os_log);
    v41 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    a2(0);
    return;
  }

  v19 = [v3 layer];
  [v19 contentsScale];
  v21 = v20;

  v22 = v21;
  [v4 frame];
  v24 = v23;
  v25 = v22 * v24;
  [v4 frame];
  if (v25 == 0.0 || (v27 = v26, v28 = v22 * v27, v28 == 0.0))
  {
    static os_log_type_t.error.getter();
    type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for OS_os_log);
    v42 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    a2(0);

    goto LABEL_24;
  }

  v29 = objc_opt_self();
  if (v25 <= -9.2234e18)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (v25 >= 9.2234e18)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if ((LODWORD(v25) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(v28) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_42;
  }

  if (v28 <= -9.2234e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v28 >= 9.2234e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v74 = v18;
  v71 = v7;
  v75 = a2;
  v76 = a3;
  v30 = [v29 texture2DDescriptorWithPixelFormat:115 width:v25 height:v28 mipmapped:0];
  [v30 setUsage_];
  [v30 setStorageMode_];
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  v31 = dispatch thunk of __Engine.services.getter();

  if (!v31)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  dispatch thunk of __ServiceLocator.renderService.getter();

  v32 = v83;
  v33 = v84;
  __swift_project_boxed_opaque_existential_1(aBlock, v83);
  v34 = [(*(v33 + 1))(v32 v33)];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  v73 = v34;
  if (!v34)
  {
    static os_log_type_t.error.getter();
    type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for OS_os_log);
    v43 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    v75(0);
LABEL_24:

    return;
  }

  v72 = v30;
  static __ServiceLocator.shared.getter();
  v35 = dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  v36 = MEMORY[0x1E12F53C0](v35);
  v37 = v75;
  if (!v36 || ((v38 = v36, LODWORD(v70) = REColorManagerGetWorkingColorGamut(), TargetDisplayColorGamut = REColorManagerGetTargetDisplayColorGamut(), (v80 & 1) == 0) ? (LDRColorSpaceForColorGamut = REColorManagerGetLDRColorSpaceForColorGamut()) : (LDRColorSpaceForColorGamut = REColorManagerGetWorkingColorSpace()), (v44 = LDRColorSpaceForColorGamut) == 0))
  {
    static os_log_type_t.error.getter();
    type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for OS_os_log);
    v52 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    v37(0);
    swift_unknownObjectRelease();
    goto LABEL_24;
  }

  v45 = v44;
  v69 = TargetDisplayColorGamut;

  Entity.coreEntity.getter();

  RECameraViewDescriptorsComponentGetComponentType();
  v46 = REEntityGetOrAddComponentByClass();
  v47 = *&v4[OBJC_IVAR____TtC10RealityKit6ARView_arSystem];
  if (!v47)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v48 = v46;
  v49 = *&v47[OBJC_IVAR____TtC10RealityKit10RKARSystem_renderOptions];
  v50 = v47;
  v68 = v45;
  if ((v49 & 0x20) != 0)
  {
    v51 = RKARSystem.postProcessingCombinedRenderGraph.getter();
  }

  else
  {
    v51 = RKARSystem.postProcessingCombinedHDRRenderGraph.getter();
  }

  v53 = v51;
  v67[1] = v48;

  v67[0] = 0x80000001E1257CF0;
  if (v80)
  {
    LOBYTE(aBlock[0]) = 0;
    RERenderGraphAssetSetRuntimeNodeSetting();
    REColorManagerSetTargetDisplayColorGamut();
  }

  RenderGraphDataStruct = RERenderGraphCreateRenderGraphDataStruct();
  RERenderGraphDataStructAddFloat4();
  v55 = OBJC_IVAR____TtC10RealityKit6ARView_antialiasingMode;
  swift_beginAccess();
  v70 = v53;
  v56 = v79;
  (*(v79 + 16))(v14, &v4[v55], v9);
  (*(v56 + 104))(v11, *MEMORY[0x1E697A508], v9);
  LOBYTE(v55) = static AntialiasingMode.== infix(_:_:)();
  v57 = *(v56 + 8);
  v57(v11, v9);
  v57(v14, v9);
  MEMORY[0x1E12F5190](RenderGraphDataStruct, "disableAA", v55 & 1);
  v58 = swift_allocObject();
  *(v58 + 16) = v73;
  *(v58 + 24) = 16;
  v59 = v76;
  *(v58 + 32) = v75;
  *(v58 + 40) = v59;
  *(v58 + 48) = v80 & 1;
  *(v58 + 56) = v70;
  *(v58 + 64) = 0xD000000000000015;
  *(v58 + 72) = v67[0];
  *(v58 + 80) = v38;
  *(v58 + 88) = v69;
  v60 = v68;
  *(v58 + 96) = v68;
  *(v58 + 104) = 4353;
  *(v58 + 112) = v4;
  v84 = partial apply for closure #1 in ARView.snapshot(saveToHDR:completion:);
  v85 = v58;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  v82 = thunk for @escaping @callee_guaranteed () -> ();
  v83 = &block_descriptor_16;
  v61 = _Block_copy(aBlock);

  v62 = v4;
  v63 = v60;
  swift_unknownObjectRetain();

  RECameraViewDescriptorsComponentSnapshotNextFrameWithSettingsAndReturnHandle();
  _Block_release(v61);
  ARView.renderCallbacks.getter(aBlock);
  v64 = aBlock[0];
  v65 = v82;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed ARView.PostProcessContext) -> ())?(v82);
  sub_1E11CF140(v64);
  sub_1E11CF140(v65);
  if (!v65)
  {
    goto LABEL_39;
  }

  sub_1E11CF140(v65);
  if (*&v4[v15])
  {

    v66 = v77;
    dispatch thunk of Scene.__coreScene.getter();

    __AssetRef.__as<A>(_:)();
    (*(v78 + 8))(v66, v71);
    REScenePostProcessRenderCallbackAddOneOffCameraViewHandle();
LABEL_39:
    RERelease();

    swift_unknownObjectRelease();
    return;
  }

LABEL_50:
  __break(1u);
}

void closure #1 in ARView.snapshot(saveToHDR:completion:)(void *a1, int64_t a2, void (*a3)(id), uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, CGColorSpace *a11, uint32_t a12, uint64_t a13)
{
  v82 = a5;
  v94 = *MEMORY[0x1E69E9840];
  v17 = type metadata accessor for vImage.Size();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v72 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate6vImageO11PixelBufferVy_AC14Interleaved8x4VGMd);
  v75 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v68 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate6vImageO11PixelBufferVy_AC16Interleaved16Fx4VGSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v76 = &v68 - v22;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate6vImageO11PixelBufferVy_AC16Interleaved16Fx4VGMd);
  v78 = *(v79 - 8);
  *&v23 = MEMORY[0x1EEE9AC00](v79).n128_u64[0];
  v73 = &v68 - v24;
  v25 = [a1 width];
  if ((v25 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_33;
  }

  v26 = 4 * v25 * a2;
  if ((4 * v25 * a2) >> 64 != v26 >> 63)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v27 = v26 / 8;
  v28 = [a1 height];
  if ((v28 * v27) >> 64 != (v28 * v27) >> 63)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v83 = malloc(v28 * v27);
  if (!v83)
  {
    static os_log_type_t.error.getter();
    type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for OS_os_log);
    v47 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    a3(0);
    return;
  }

  v71 = v19;
  v80 = a4;
  v81 = a3;
  v77 = a10;
  MTLRegionMake2D([a1 width], objc_msgSend(a1, sel_height), &v88);
  v29 = v88;
  v30 = v89;
  v31 = v90;
  if (v82)
  {
    LOBYTE(v88) = 1;
    v70 = v29;
    v69 = v89;
    v68 = v90;
    String.utf8CString.getter();
    RERenderGraphAssetSetRuntimeNodeSetting();

    REColorManagerSetTargetDisplayColorGamut();
    v31 = v68;
    v30 = v69;
    v29 = v70;
  }

  v88 = v29;
  v89 = v30;
  v90 = v31;
  v32 = v83;
  [a1 getBytes:v83 bytesPerRow:v27 fromRegion:&v88 mipmapLevel:0];
  v33 = __CGBitmapContextCreate(v32, [a1 width], objc_msgSend(a1, sel_height), a2, v27, a11, a12);
  v34 = v81;
  if (v33)
  {
    v35 = v33;
    Image = CGBitmapContextCreateImage(v33);
    if (!Image)
    {
      static os_log_type_t.error.getter();
      type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for OS_os_log);
      v50 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();

      v34(0);
      goto LABEL_24;
    }

    v37 = Image;
    v38 = a13 + OBJC_IVAR____TtC10RealityKit6ARView_environment;
    swift_beginAccess();
    if (*(v38 + 24) == 2)
    {
      v39 = *(v38 + 16);
      outlined copy of ARView.Environment.Background.Value(v39, 2);
      v40 = [a1 width];
      v41 = [a1 height];
      v95.origin.x = 0.0;
      v95.origin.y = 0.0;
      v95.size.width = v40;
      v95.size.height = v41;
      CGContextClearRect(v35, v95);
      v42 = [v39 CGColor];
      CGContextSetFillColorWithColor(v35, v42);

      v96.origin.x = 0.0;
      v96.origin.y = 0.0;
      v96.size.width = v40;
      v96.size.height = v41;
      CGContextFillRect(v35, v96);
      v97.origin.x = 0.0;
      v97.origin.y = 0.0;
      v97.size.width = v40;
      v97.size.height = v41;
      CGContextRef.draw(_:in:byTiling:)(v37, v97, 0);
      v43 = CGBitmapContextCreateImage(v35);
      if (!v43)
      {
        static os_log_type_t.error.getter();
        type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for OS_os_log);
        v54 = static OS_os_log.default.getter();
        os_log(_:dso:log:type:_:)();

        v34(0);
        outlined consume of ARView.Environment.Background.Value(v39, 2);

        goto LABEL_24;
      }

      v44 = v43;
      outlined consume of ARView.Environment.Background.Value(v39, 2);

      v37 = v44;
    }

    if (v82)
    {
LABEL_13:
      v45 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
      v46 = v45;
      v34(v45);

LABEL_24:
LABEL_25:
      v49 = v83;
      goto LABEL_26;
    }

    v51 = REColorManagerGetSRGBLDRColorSpaceForColorGamut();
    if (!v51)
    {
      static os_log_type_t.error.getter();
      type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for OS_os_log);
      v55 = static OS_os_log.default.getter();
      os_log(_:dso:log:type:_:)();

      v34(0);
      goto LABEL_24;
    }

    if ((a2 - 0x2000000000000000) >> 62 == 3)
    {
      v52 = v51;
      vImage_CGImageFormat.init(bitsPerComponent:bitsPerPixel:colorSpace:bitmapInfo:renderingIntent:)(v91, a2, 4 * a2, v52, 0x1103u, kCGRenderingIntentDefault);
      if (*&v91[8] == 1)
      {
        static os_log_type_t.error.getter();
        type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for OS_os_log);
        v53 = static OS_os_log.default.getter();
        os_log(_:dso:log:type:_:)();

        v81(0);
        goto LABEL_24;
      }

      v86 = *&v91[16];
      v87 = *&v91[32];
      v84 = *v91;
      v85 = *&v91[8];
      type metadata accessor for vImage.Interleaved16Fx4();
      v56 = v37;
      v57 = v76;
      vImage.PixelBuffer<>.init(cgImage:cgImageFormat:pixelFormat:)();
      v58 = v78;
      v59 = v79;
      (*(v78 + 56))(v57, 0, 1, v79);
      v60 = v73;
      (*(v58 + 32))(v73, v57, v59);
      vImage.PixelBuffer.size.getter();
      type metadata accessor for vImage.Interleaved8x4();
      v61 = v74;
      vImage.PixelBuffer<>.init(size:pixelFormat:)();
      vImage.PixelBuffer<>.convert(to:)();
      v62 = v52;
      vImage_CGImageFormat.init(bitsPerComponent:bitsPerPixel:colorSpace:bitmapInfo:renderingIntent:)(&v91[40], 8, 32, v62, 3u, kCGRenderingIntentDefault);
      if (*&v91[48] == 1)
      {
        static os_log_type_t.error.getter();
        type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for OS_os_log);
        v63 = static OS_os_log.default.getter();
        os_log(_:dso:log:type:_:)();

        v81(0);
        (*(v75 + 8))(v61, v71);
        (*(v58 + 8))(v60, v59);
        goto LABEL_25;
      }

      v88 = *&v91[40];
      v89 = v92;
      *&v90 = v93;
      v64 = v71;
      v65 = vImage.PixelBuffer<>.makeCGImage(cgImageFormat:)();
      v66 = v61;
      v34 = v81;
      if (!v65)
      {
        static os_log_type_t.error.getter();
        type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for OS_os_log);
        v67 = static OS_os_log.default.getter();
        os_log(_:dso:log:type:_:)();

        v34(0);
        (*(v75 + 8))(v61, v64);
        (*(v78 + 8))(v60, v79);
        goto LABEL_25;
      }

      v37 = v65;

      (*(v75 + 8))(v66, v64);
      (*(v78 + 8))(v60, v79);
      goto LABEL_13;
    }

LABEL_35:
    __break(1u);
  }

  static os_log_type_t.error.getter();
  type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for OS_os_log);
  v48 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)();

  v34(0);
  v49 = v32;
LABEL_26:
  free(v49);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t ARView.__startAudioEngine()(uint64_t (*a1)(void))
{
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  __Engine.coreEngine.getter();

  REEngineGetServiceLocator();
  result = REServiceLocatorGetAudioService();
  if (result)
  {

    return a1();
  }

  return result;
}

void ARView.entityAccessibilityWrappers.getter()
{
  v1 = type metadata accessor for Scene.AnchorCollection();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC15ChildCollectionV16IndexingIteratorVy__AA5SceneC06AnchorE0VGMd);
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - v3;
  if (!*(v0 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {
    goto LABEL_40;
  }

  dispatch thunk of Scene.anchors.getter();

  Scene.AnchorCollection.makeIterator()();
  Entity.ChildCollection.IndexingIterator.next()();
  v5 = v36[0];
  if (!v36[0])
  {
LABEL_35:
    (*(v29 + 8))(v4, v2);
    return;
  }

  v6 = MEMORY[0x1E69E7CC0];
  v30 = v2;
  v34 = v4;
  while (1)
  {

    v7 = Entity.__accessibilityWrappers(rootEntityWrapper:)(0);

    v8 = v7 >> 62;
    if (v7 >> 62)
    {
      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v6 >> 62;
    if (v6 >> 62)
    {
      v27 = __CocoaSet.count.getter();
      v12 = v27 + v9;
      if (__OFADD__(v27, v9))
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    else
    {
      v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v11 + v9;
      if (__OFADD__(v11, v9))
      {
        goto LABEL_34;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v10)
      {
        v13 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      __CocoaSet.count.getter();
      goto LABEL_16;
    }

    if (v10)
    {
      goto LABEL_15;
    }

LABEL_16:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v13 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    if (v8)
    {
      break;
    }

    v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_4;
    }

LABEL_21:
    if (((v15 >> 1) - v14) < v9)
    {
      goto LABEL_37;
    }

    v19 = v13 + 8 * v14 + 32;
    v35 = v13;
    if (v8)
    {
      if (v16 < 1)
      {
        goto LABEL_39;
      }

      v31 = v9;
      v32 = v5;
      v33 = v6;
      lazy protocol witness table accessor for type [__EntityAccessibilityWrapper] and conformance [A]();
      for (i = 0; i != v16; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit28__EntityAccessibilityWrapperCGMd);
        v21 = specialized protocol witness for Collection.subscript.read in conformance [A](v36, i, v7);
        v23 = *v22;
        (v21)(v36, 0);
        *(v19 + 8 * i) = v23;
      }

      v2 = v30;
      v9 = v31;
      v6 = v33;
    }

    else
    {
      type metadata accessor for __EntityAccessibilityWrapper();
      swift_arrayInitWithCopy();
    }

    v4 = v34;
    if (v9 > 0)
    {
      v24 = *(v35 + 16);
      v25 = __OFADD__(v24, v9);
      v26 = v24 + v9;
      if (v25)
      {
        goto LABEL_38;
      }

      *(v35 + 16) = v26;
    }

LABEL_5:
    Entity.ChildCollection.IndexingIterator.next()();
    v5 = v36[0];
    if (!v36[0])
    {
      goto LABEL_35;
    }
  }

  v17 = v13;
  v18 = __CocoaSet.count.getter();
  v13 = v17;
  v16 = v18;
  if (v18)
  {
    goto LABEL_21;
  }

LABEL_4:

  if (v9 <= 0)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t ARView.__distanceInMetersFromEntity(_:)()
{
  if (*(v0 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {

    active = dispatch thunk of Scene.internalActiveCamera.getter();

    if (active)
    {
      type metadata accessor for Entity();
      HasTransform.position(relativeTo:)();
      HasTransform.position(relativeTo:)();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ARView.distanceInMetersFromEntityAccessibilityWrapper(_:)()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(v0 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
    {

      active = dispatch thunk of Scene.internalActiveCamera.getter();

      if (active)
      {
        type metadata accessor for Entity();
        HasTransform.position(relativeTo:)();
        HasTransform.position(relativeTo:)();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t type metadata accessor for ARView()
{
  result = type metadata singleton initialization cache for ARView;
  if (!type metadata singleton initialization cache for ARView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized ARView.commonInit(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for Scene.AnchorCollection();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  REShadowsSetEnableDefaultShadows();
  v6 = [v0 renderLayer];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

    v7 = 0;
  }

  v8 = OBJC_IVAR____TtC10RealityKit6ARView_backingLayer;
  v9 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_backingLayer);
  *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_backingLayer) = v7;

  ARView.setupInteractionGestures()();
  *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_enablePresentsWithTransaction) = 1;
  [v1 setBackgroundColor_];
  [v1 setMultipleTouchEnabled_];
  v10 = OBJC_IVAR____TtC10RealityKit6ARView_pauseEngineOnLeaveForeground;
  if ((*(v1 + OBJC_IVAR____TtC10RealityKit6ARView_pauseEngineOnLeaveForeground) & 1) == 0)
  {
    v11 = [objc_opt_self() defaultCenter];
    [v11 addObserver:v1 selector:sel_willResignActiveWithNotification_ name:*MEMORY[0x1E69DDBC8] object:0];
    [v11 addObserver:v1 selector:sel_restartEngineWithNotification_ name:*MEMORY[0x1E69DDAB0] object:0];

    *(v1 + v10) = 1;
  }

  ARView.setupMetalLayer()();
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  static __ServiceLocator.shared.getter();
  v12 = dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  HaveSharedSimulationByDefault = MEMORY[0x1E12F5410](v12);
  if (HaveSharedSimulationByDefault)
  {
    HaveSharedSimulationByDefault = REPhysicsSimulationServiceSetAnchorShouldHaveSharedSimulationByDefault();
  }

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x390))(HaveSharedSimulationByDefault);
  if (*(v1 + OBJC_IVAR____TtC10RealityKit6ARView_useCAMetalLayer) != 1)
  {
LABEL_10:
    if (one-time initialization token for uniqueTokenGenerator != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    OS_dispatch_semaphore.wait()();
    v17 = static ARView.uniqueTokenGenerator + 1;
    if (__OFADD__(static ARView.uniqueTokenGenerator, 1))
    {
      __break(1u);
    }

    else
    {
      v44 = v3;
      v45 = v2;
      ++static ARView.uniqueTokenGenerator;
      OS_dispatch_semaphore.signal()();
      swift_endAccess();
      type metadata accessor for Scene();
      strcpy(v49, "ARView.scene-");
      HIWORD(v49[1]) = -4864;
      *&v46 = v17;
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1E12F4010](v18);

      v19 = MEMORY[0x1E12F28C0](v49[0], v49[1]);
      v20 = OBJC_IVAR____TtC10RealityKit6ARView__scene;
      *(v1 + OBJC_IVAR____TtC10RealityKit6ARView__scene) = v19;

      dispatch thunk of __ServiceLocator.sceneService.getter();
      v22 = v50;
      v21 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      if (*(v1 + v20))
      {
        v23 = *(v21 + 16);

        v23(v24, v22, v21);

        __swift_destroy_boxed_opaque_existential_1(v49);
        if (*(v1 + v20))
        {
          type metadata accessor for SceneEvents.Render();
          v48 = 0;
          v46 = 0u;
          v47 = 0u;
          swift_allocObject();
          swift_unknownObjectWeakInit();

          Scene.subscribe<A>(to:on:_:)();

          outlined destroy of ARConfigurationCreateResult?(&v46, &_s10RealityKit11EventSource_pSgMd);
          v25 = OBJC_IVAR____TtC10RealityKit6ARView_renderSubscription;
          swift_beginAccess();
          outlined assign with take of Cancellable?(v49, v1 + v25);
          swift_endAccess();
          if (*(v1 + v20))
          {
            type metadata accessor for SceneEvents.Update();
            v48 = 0;
            v46 = 0u;
            v47 = 0u;
            swift_allocObject();
            swift_unknownObjectWeakInit();

            Scene.subscribe<A>(to:on:_:)();

            outlined destroy of ARConfigurationCreateResult?(&v46, &_s10RealityKit11EventSource_pSgMd);
            v26 = OBJC_IVAR____TtC10RealityKit6ARView_updateSubscription;
            swift_beginAccess();
            outlined assign with take of Cancellable?(v49, v1 + v26);
            swift_endAccess();
            *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_initialized) = 1;
            v27 = [objc_opt_self() mainScreen];
            [v27 nativeScale];
            v29 = v28;

            [v1 setContentScaleFactor_];
            [v1 bounds];
            v31 = v30;
            v33 = v32;
            [v1 contentScaleFactor];
            ARView.resizeDrawable(size:scaleFactor:)(v31, v33, v34);
            type metadata accessor for Entity();
            swift_allocObject();
            v35 = Entity.init()();
            v36 = OBJC_IVAR____TtC10RealityKit6ARView___environmentEntity;
            swift_beginAccess();
            *(v1 + v36) = v35;

            dispatch thunk of Entity.name.setter();

            if (*(v1 + v36))
            {

              Entity.turnIntoNinja()();

              if (*(v1 + v20))
              {

                dispatch thunk of Scene.anchors.getter();

                v37 = *(v1 + v36);
                v39 = v44;
                v38 = v45;
                if (v37)
                {

                  Scene.AnchorCollection.appendNinja(_:)();

                  (*(v39 + 8))(v5, v38);
                  ARView.updateEnvironment()();
                  ARView.setupAR()();
                  if (*(v1 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem))
                  {

                    ARView.__renderGraphEmitter.setter(v40);
                    type metadata accessor for RealityFusionSession();
                    v41 = [v1 session];
                    v42 = static RealityFusionSession.createRealityFusionSession(arSession:)();

                    v43 = OBJC_IVAR____TtC10RealityKit6ARView_realityFusionSession;
                    swift_beginAccess();
                    *(v1 + v43) = v42;

                    return;
                  }

                  goto LABEL_28;
                }

LABEL_27:
                __break(1u);
LABEL_28:
                __break(1u);
                goto LABEL_29;
              }

LABEL_26:
              __break(1u);
              goto LABEL_27;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  dispatch thunk of __ServiceLocator.renderService.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__RenderService_pMd);
  type metadata accessor for RERenderManager();
  swift_dynamicCast();
  v14 = *(v1 + v8);
  if (v14)
  {
    v15 = v14;
    v16 = dispatch thunk of RERenderManager.registerRenderLayer(_:)();

    *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_layerHandle) = v16;
    goto LABEL_10;
  }

LABEL_29:
  __break(1u);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type ARView.DebugOptions and conformance ARView.DebugOptions()
{
  result = lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions;
  if (!lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions;
  if (!lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions;
  if (!lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions;
  if (!lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARView.__StatisticsOptions and conformance ARView.__StatisticsOptions()
{
  result = lazy protocol witness table cache variable for type ARView.__StatisticsOptions and conformance ARView.__StatisticsOptions;
  if (!lazy protocol witness table cache variable for type ARView.__StatisticsOptions and conformance ARView.__StatisticsOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.__StatisticsOptions and conformance ARView.__StatisticsOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARView.__StatisticsOptions and conformance ARView.__StatisticsOptions;
  if (!lazy protocol witness table cache variable for type ARView.__StatisticsOptions and conformance ARView.__StatisticsOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.__StatisticsOptions and conformance ARView.__StatisticsOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARView.__StatisticsOptions and conformance ARView.__StatisticsOptions;
  if (!lazy protocol witness table cache variable for type ARView.__StatisticsOptions and conformance ARView.__StatisticsOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.__StatisticsOptions and conformance ARView.__StatisticsOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ARView.__StatisticsOptions and conformance ARView.__StatisticsOptions;
  if (!lazy protocol witness table cache variable for type ARView.__StatisticsOptions and conformance ARView.__StatisticsOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.__StatisticsOptions and conformance ARView.__StatisticsOptions);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t keypath_set_30Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t keypath_get_29Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t type metadata completion function for ARView()
{
  result = type metadata accessor for AntialiasingMode();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ARView.EDRHeadroomPolicy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
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

uint64_t storeEnumTagSinglePayload for ARView.EDRHeadroomPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for ARView.EDRHeadroomPolicy(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for ARView.EDRHeadroomPolicy(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ARView.IBLType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ARView.IBLType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARView.IBLType and conformance ARView.IBLType()
{
  result = lazy protocol witness table cache variable for type ARView.IBLType and conformance ARView.IBLType;
  if (!lazy protocol witness table cache variable for type ARView.IBLType and conformance ARView.IBLType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARView.IBLType and conformance ARView.IBLType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [__EntityAccessibilityWrapper] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [__EntityAccessibilityWrapper] and conformance [A];
  if (!lazy protocol witness table cache variable for type [__EntityAccessibilityWrapper] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10RealityKit28__EntityAccessibilityWrapperCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [__EntityAccessibilityWrapper] and conformance [A]);
  }

  return result;
}

uint64_t MTLRegionMake2D@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = result;
  a3[4] = a2;
  a3[5] = 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type Scene.AnchorCollection and conformance Scene.AnchorCollection()
{
  result = lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection;
  if (!lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection)
  {
    type metadata accessor for Scene.AnchorCollection();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection);
  }

  return result;
}

unint64_t specialized ARView.hasTapInteractions(_:)(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_34;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v10 = v1 & 0xFFFFFFFFFFFFFF8;
  v12 = v2;
  v13 = v1;
  v11 = v1 & 0xC000000000000001;
  while (1)
  {
    if (v4)
    {
      MEMORY[0x1E12F44E0](v3, v1);
      v5 = __OFADD__(v3++, 1);
      if (v5)
      {
        goto LABEL_33;
      }

      goto LABEL_11;
    }

    if (v3 >= *(v10 + 16))
    {
      break;
    }

    v5 = __OFADD__(v3++, 1);
    if (v5)
    {
      goto LABEL_33;
    }

LABEL_11:
    dispatch thunk of __RKEntityInteraction.trigger.getter();
    type metadata accessor for __RKEntityTriggerGroup();
    if (swift_dynamicCastClass())
    {
      v6 = dispatch thunk of __RKEntityTriggerGroup.triggers.getter();
      v7 = v6;
      if (v6 >> 62)
      {
        v8 = __CocoaSet.count.getter();
        if (v8)
        {
LABEL_14:
          v9 = 0;
          do
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1E12F44E0](v9, v7);
              v1 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                goto LABEL_31;
              }
            }

            else
            {
              if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_32;
              }

              v1 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
LABEL_31:
                __break(1u);
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
LABEL_34:
                result = __CocoaSet.count.getter();
                v2 = result;
                if (!result)
                {
                  return 0;
                }

                goto LABEL_3;
              }
            }

            type metadata accessor for __RKEntityTapTrigger();
            if (swift_dynamicCastClass())
            {

              goto LABEL_30;
            }

            ++v9;
          }

          while (v1 != v8);
        }
      }

      else
      {
        v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v8)
        {
          goto LABEL_14;
        }
      }

      v2 = v12;
      v1 = v13;
      v4 = v11;
      if (v3 == v12)
      {
        return 0;
      }
    }

    else
    {

      dispatch thunk of __RKEntityInteraction.trigger.getter();

      type metadata accessor for __RKEntityTapTrigger();
      if (swift_dynamicCastClass())
      {
LABEL_30:

        return 1;
      }

      if (v3 == v2)
      {
        return 0;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t outlined assign with take of Cancellable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11Cancellable_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t GroupActivitiesSynchronizationProtocolLayer.__allocating_init<A>(session:)(uint64_t a1)
{
  v2 = swift_allocObject();
  GroupActivitiesSynchronizationProtocolLayer.init<A>(session:)(a1);
  return v2;
}

uint64_t GroupActivitiesSynchronizationMessage.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit37GroupActivitiesSynchronizationMessageV10CodingKeys33_C8ACE28DEBEF4D337B220B077987CB71LLOGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GroupActivitiesSynchronizationMessage.CodingKeys and conformance GroupActivitiesSynchronizationMessage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = a2;
  v12 = a3;
  outlined copy of Data._Representation(a2, a3);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v11, v12);
  return (*(v7 + 8))(v9, v6);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GroupActivitiesSynchronizationMessage.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GroupActivitiesSynchronizationMessage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GroupActivitiesSynchronizationMessage.CodingKeys and conformance GroupActivitiesSynchronizationMessage.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GroupActivitiesSynchronizationMessage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GroupActivitiesSynchronizationMessage.CodingKeys and conformance GroupActivitiesSynchronizationMessage.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance GroupActivitiesSynchronizationMessage@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = specialized GroupActivitiesSynchronizationMessage.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t GroupActivitiesSynchronizationProtocolHandle.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10RealityKitP33_C8ACE28DEBEF4D337B220B077987CB7144GroupActivitiesSynchronizationProtocolHandle_participant;
  v2 = type metadata accessor for Participant();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GroupActivitiesSynchronizationProtocolHandle()
{
  result = type metadata singleton initialization cache for GroupActivitiesSynchronizationProtocolHandle;
  if (!type metadata singleton initialization cache for GroupActivitiesSynchronizationProtocolHandle)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for GroupActivitiesSynchronizationProtocolHandle()
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

uint64_t Array<A>.first(with:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v7 = 0;
    while ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E12F44E0](v7, a3);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_16;
      }

LABEL_7:
      v10 = *(v8 + OBJC_IVAR____TtC10RealityKitP33_C8ACE28DEBEF4D337B220B077987CB7144GroupActivitiesSynchronizationProtocolHandle_address) == a1 && *(v8 + OBJC_IVAR____TtC10RealityKitP33_C8ACE28DEBEF4D337B220B077987CB7144GroupActivitiesSynchronizationProtocolHandle_address + 8) == a2;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return v8;
      }

      ++v7;
      if (v9 == i)
      {
        return 0;
      }
    }

    if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v8 = *(a3 + 8 * v7 + 32);

    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return 0;
}

void one-time initialization function for useUnreliableMessenger()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x1E12F3F80](0xD00000000000003BLL, 0x80000001E1258670);
  v2 = [v0 BOOLForKey_];

  static GroupActivitiesSynchronizationProtocolLayer.useUnreliableMessenger = v2;
}

uint64_t GroupActivitiesSynchronizationProtocolLayer.State.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *GroupActivitiesSynchronizationProtocolLayer.init<A>(session:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = &v55 - v5;
  v6 = type metadata accessor for GroupSessionMessenger.DeliveryMode();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Participant();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GroupActivitiesSynchronizationProtocolLayer.State();
  v17 = swift_allocObject();
  v17[2] = MEMORY[0x1E69E7CC0];
  v17[3] = dispatch_semaphore_create(0);
  v17[4] = 0;
  v2[2] = v17;
  v2[4] = 0;
  v2[5] = 0;
  GroupSession.localParticipant.getter();
  Participant.id.getter();
  (*(v14 + 8))(v16, v13);
  v18 = UUID.uuidString.getter();
  v57 = v19;
  v58 = v18;
  (*(v10 + 8))(v12, v9);
  type metadata accessor for GroupSessionMessenger();

  v59 = a1;
  v20 = GroupSessionMessenger.__allocating_init<A>(session:)();
  (*(v55 + 104))(v8, *MEMORY[0x1E696B260], v56);

  v21 = GroupSessionMessenger.__allocating_init<A>(session:deliveryMode:)();
  RESyncProtocolLayerObserverCreate();
  v65 = protocol witness for static Equatable.== infix(_:_:) in conformance GroupActivitiesSynchronizationComponent.CodingKeys;
  v66 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned Bool);
  v64 = &block_descriptor_7;
  v22 = _Block_copy(&aBlock);
  RESyncProtocolLayerObserverOnInit();
  _Block_release(v22);
  v23 = v2[2];
  v65 = partial apply for closure #2 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:);
  v66 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = thunk for @escaping @callee_guaranteed () -> ();
  v64 = &block_descriptor_33;
  v24 = _Block_copy(&aBlock);

  RESyncProtocolLayerObserverOnDeinit();
  _Block_release(v24);
  v25 = v2[2];
  v65 = partial apply for closure #3 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:);
  v66 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>) -> (@unowned OpaquePointer?);
  v64 = &block_descriptor_36;
  v26 = _Block_copy(&aBlock);

  RESyncProtocolLayerObserverOnOpenNullable();
  _Block_release(v26);
  v27 = v2[2];
  v65 = partial apply for closure #4 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:);
  v66 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned Bool) -> ();
  v64 = &block_descriptor_39;
  v28 = _Block_copy(&aBlock);

  RESyncProtocolLayerObserverOnClose();
  _Block_release(v28);
  v29 = v2[2];
  v65 = partial apply for closure #5 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:);
  v66 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned Bool) -> ();
  v64 = &block_descriptor_42;
  v30 = _Block_copy(&aBlock);

  RESyncProtocolLayerObserverOnDisconnect();
  _Block_release(v30);
  v31 = v2[2];
  v32 = swift_allocObject();
  v32[2] = v31;
  v32[3] = v21;
  v56 = v21;
  v32[4] = v20;
  v65 = partial apply for closure #6 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:);
  v66 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @guaranteed @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@unowned RESyncChannelId, @unowned UnsafeRawPointer, @unowned UInt32, @unowned RESyncPacketDeliveryMethodType) -> (@unowned Bool)) -> ()) -> ();
  v64 = &block_descriptor_45;
  v33 = _Block_copy(&aBlock);

  RESyncProtocolLayerObserverOnSend();
  _Block_release(v33);
  v34 = v2[2];
  v65 = partial apply for closure #7 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:);
  v66 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = thunk for @escaping @callee_guaranteed () -> ();
  v64 = &block_descriptor_48;
  v35 = _Block_copy(&aBlock);

  RESyncProtocolLayerObserverOnWait();
  _Block_release(v35);
  v36 = v2[2];
  v65 = partial apply for closure #8 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:);
  v66 = v36;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = thunk for @escaping @callee_guaranteed () -> ();
  v64 = &block_descriptor_51;
  v37 = _Block_copy(&aBlock);

  RESyncProtocolLayerObserverOnWakeup();
  _Block_release(v37);
  v38 = swift_allocObject();
  v39 = v57;
  *(v38 + 16) = v58;
  *(v38 + 24) = v39;
  v65 = partial apply for closure #9 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:);
  v66 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = thunk for @escaping @callee_guaranteed () -> (@unowned OpaquePointer);
  v64 = &block_descriptor_57;
  v40 = _Block_copy(&aBlock);

  RESyncProtocolLayerObserverOnLocalAddresses();
  _Block_release(v40);
  v65 = getEnumTag for AccessibilityEvents;
  v66 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutablePointer<RESyncProtocolConnectionStats>) -> (@unowned Bool);
  v64 = &block_descriptor_60;
  v41 = _Block_copy(&aBlock);
  RESyncProtocolLayerObserverOnHostStats();
  _Block_release(v41);
  v65 = ARView.PostProcessContext.device.modify;
  v66 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = thunk for @escaping @callee_guaranteed (@unowned UInt32) -> ();
  v64 = &block_descriptor_63;
  v42 = _Block_copy(&aBlock);
  RESyncProtocolLayerObserverOnSetDisconnectTimeout();
  _Block_release(v42);
  v65 = closure #12 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:);
  v66 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = thunk for @escaping @callee_guaranteed () -> (@unowned UInt32);
  v64 = &block_descriptor_66;
  v43 = _Block_copy(&aBlock);
  RESyncProtocolLayerObserverOnPreferredPacketSize();
  _Block_release(v43);
  v44 = RESyncCustomProtocolLayerCreate();
  type metadata accessor for RESyncHandle();
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  v2[3] = v45;
  *(v2[2] + 32) = v44;
  v46 = type metadata accessor for TaskPriority();
  v47 = *(*(v46 - 8) + 56);
  v48 = v60;
  v47(v60, 1, 1, v46);
  v49 = swift_allocObject();
  swift_weakInit();
  v50 = swift_allocObject();
  v50[2] = 0;
  v50[3] = 0;
  v50[4] = v20;
  v50[5] = v49;

  v2[4] = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v48, &async function pointer to partial apply for closure #13 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:), v50);

  v47(v48, 1, 1, v46);
  v51 = swift_allocObject();
  swift_weakInit();

  v52 = swift_allocObject();
  v52[2] = 0;
  v52[3] = 0;
  v52[4] = v56;
  v52[5] = v51;
  v53 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v48, &async function pointer to partial apply for closure #14 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:), v52);

  RESyncRelease();
  v2[5] = v53;

  return v2;
}

uint64_t closure #3 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a2 + 16);

  v4 = String.init(cString:)();
  v6 = Array<A>.first(with:)(v4, v5, v3);

  if (!v6)
  {
    return v6;
  }

  v7 = *(v6 + OBJC_IVAR____TtC10RealityKitP33_C8ACE28DEBEF4D337B220B077987CB7144GroupActivitiesSynchronizationProtocolHandle_handle);

  v6 = *(v7 + 16);

  if (!v6)
  {
    return v6;
  }

  result = *(a2 + 32);
  if (result)
  {
    RESyncCustomProtocolLayerOnConnected();
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>) -> (@unowned OpaquePointer?)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

uint64_t closure #4 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  if (v5 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E12F44E0](j, v5);
      }

      else
      {
        if (j >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }
      }

      v9 = *(*(v8 + OBJC_IVAR____TtC10RealityKitP33_C8ACE28DEBEF4D337B220B077987CB7144GroupActivitiesSynchronizationProtocolHandle_handle) + 16);

      if (v9)
      {
        v10 = v9 == a1;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        specialized Array.remove(at:)(j);

        return swift_endAccess();
      }

      v11 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (v11 == i)
      {
        return swift_endAccess();
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return swift_endAccess();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned Bool) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t closure #5 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  if (v5 >> 62)
  {
LABEL_22:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v6)
  {
  }

  for (i = 0; ; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E12F44E0](i, v5);
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
LABEL_16:
        __break(1u);
      }
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

      v8 = *(v5 + 8 * i + 32);

      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_16;
      }
    }

    v10 = *(*(v8 + OBJC_IVAR____TtC10RealityKitP33_C8ACE28DEBEF4D337B220B077987CB7144GroupActivitiesSynchronizationProtocolHandle_handle) + 16);
    if (v10 && v10 == a1)
    {
      break;
    }

    if (v9 == v6)
    {
    }
  }

  if (*(a3 + 32))
  {
    String.utf8CString.getter();

    RESyncCustomProtocolLayerOnDisconnected();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #6 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:)(uint64_t a1, void (*a2)(uint64_t (*)(uint64_t a1, uint64_t a2, unsigned int a3, int a4), uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Participant();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v38 = &v38 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  swift_beginAccess();
  v20 = *(a4 + 16);
  v45 = a2;
  v46 = v12;
  v43 = v13;
  v44 = a3;
  v41 = a5;
  v42 = a6;
  v40 = v19;
  if (v20 >> 62)
  {
LABEL_21:
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21)
  {
    v22 = 0;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1E12F44E0](v22, v20);
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_16:
          __break(1u);
        }
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v23 = *(v20 + 8 * v22 + 32);

        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_16;
        }
      }

      v25 = *(*(v23 + OBJC_IVAR____TtC10RealityKitP33_C8ACE28DEBEF4D337B220B077987CB7144GroupActivitiesSynchronizationProtocolHandle_handle) + 16);
      if (v25)
      {
        v26 = v25 == a1;
      }

      else
      {
        v26 = 0;
      }

      if (v26)
      {

        v28 = v43;
        v29 = *(v43 + 16);
        v30 = v38;
        v31 = v46;
        v29(v38, v23 + OBJC_IVAR____TtC10RealityKitP33_C8ACE28DEBEF4D337B220B077987CB7144GroupActivitiesSynchronizationProtocolHandle_participant, v46);

        v32 = *(v28 + 32);
        v33 = v40;
        v32(v40, v30, v31);
        v34 = v39;
        v29(v39, v33, v31);
        v35 = (*(v28 + 80) + 32) & ~*(v28 + 80);
        v36 = swift_allocObject();
        v37 = v42;
        *(v36 + 16) = v41;
        *(v36 + 24) = v37;
        v32((v36 + v35), v34, v31);

        v45(partial apply for closure #1 in closure #6 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:), v36);

        return (*(v28 + 8))(v33, v31);
      }

      ++v22;
    }

    while (v24 != v21);
  }
}

uint64_t closure #1 in closure #6 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:)(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v7 = type metadata accessor for Participants();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Data.Deallocator();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v14, *MEMORY[0x1E6969010], v12);
  v16 = specialized Data.init(bytesNoCopy:count:deallocator:)(a2, a3, v14);
  if (a4 && one-time initialization token for useUnreliableMessenger != -1)
  {
    v21 = v16;
    v22 = v17;
    swift_once();
    v17 = v22;
    v16 = v21;
  }

  v23 = v16;
  v24 = v17;
  v18 = v16;
  v19 = v17;

  outlined copy of Data._Representation(v18, v19);
  static Participants.only(_:)();
  lazy protocol witness table accessor for type GroupActivitiesSynchronizationMessage and conformance GroupActivitiesSynchronizationMessage();
  lazy protocol witness table accessor for type GroupActivitiesSynchronizationMessage and conformance GroupActivitiesSynchronizationMessage();
  GroupSessionMessenger.send<A>(_:to:completion:)();

  outlined consume of Data._Representation(v18, v19);
  (*(v8 + 8))(v10, v7);
  outlined consume of Data._Representation(v23, v24);
  return 1;
}

void closure #1 in closure #1 in closure #6 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:)(void *a1)
{
  if (a1)
  {
    if (one-time initialization token for groupActivities != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.groupActivities);
    v3 = a1;
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v7 = Optional.debugDescription.getter();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1E11CD000, oslog, v4, "Messenger send error: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1E12F6150](v6, -1, -1);
      MEMORY[0x1E12F6150](v5, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @guaranteed @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@unowned RESyncChannelId, @unowned UnsafeRawPointer, @unowned UInt32, @unowned RESyncPacketDeliveryMethodType) -> (@unowned Bool)) -> ()) -> ()(uint64_t a1, uint64_t a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  v4(a2, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned @escaping @callee_unowned @convention(block) (@unowned RESyncChannelId, @unowned UnsafeRawPointer, @unowned UInt32, @unowned RESyncPacketDeliveryMethodType) -> (@unowned Bool)) -> (), v6);
}

uint64_t thunk for @escaping @callee_unowned @convention(block) (@unowned @escaping @callee_unowned @convention(block) (@unowned RESyncChannelId, @unowned UnsafeRawPointer, @unowned UInt32, @unowned RESyncPacketDeliveryMethodType) -> (@unowned Bool)) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed (@unowned RESyncChannelId, @unowned UnsafeRawPointer, @unowned UInt32, @unowned RESyncPacketDeliveryMethodType) -> (@unowned Bool);
  v7[3] = &block_descriptor_87;
  v4 = _Block_copy(v7);
  v5 = *(a3 + 16);

  v5(a3, v4);
  _Block_release(v4);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned RESyncChannelId, @unowned UnsafeRawPointer, @unowned UInt32, @unowned RESyncPacketDeliveryMethodType) -> (@unowned Bool)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  LOBYTE(a5) = v9(a2, a3, a4, a5);

  return a5 & 1;
}

uint64_t closure #9 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:)()
{
  v0 = MEMORY[0x1E12F3F80]();
  v1 = [v0 UTF8String];
  v2 = v0;
  if (!v1)
  {
    __break(1u);
  }

  return RESyncAddressListCreate();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafeMutablePointer<RESyncProtocolConnectionStats>) -> (@unowned Bool)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UInt32) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt32)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

uint64_t closure #13 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = type metadata accessor for Participant();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit37GroupActivitiesSynchronizationMessageV_0cD00C16SessionMessengerC0F7ContextVtSgMd);
  v5[17] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC8MessagesVy_10RealityKit0aB22SynchronizationMessageVGMd);
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_10RealityKit0aB22SynchronizationMessageV_GMd);
  v5[21] = v9;
  v5[22] = *(v9 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #13 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:), 0, 0);
}

uint64_t closure #13 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:)()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  lazy protocol witness table accessor for type GroupActivitiesSynchronizationMessage and conformance GroupActivitiesSynchronizationMessage();
  lazy protocol witness table accessor for type GroupActivitiesSynchronizationMessage and conformance GroupActivitiesSynchronizationMessage();
  GroupSessionMessenger.messages<A>(of:)();
  GroupSessionMessenger.Messages.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = lazy protocol witness table accessor for type GroupSessionMessenger.Messages<GroupActivitiesSynchronizationMessage>.Iterator and conformance GroupSessionMessenger.Messages<A>.Iterator();
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = closure #13 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:);
  v6 = v0[21];
  v7 = v0[17];

  return MEMORY[0x1EEE6D8C8](v7, v6, v4);
}

{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = closure #13 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:);
  }

  else
  {
    v2 = closure #13 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  return MEMORY[0x1EEE6DFA0](closure #13 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:), 0, 0);
}

{
  v1 = v0[17];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit37GroupActivitiesSynchronizationMessageV_0cD00C16SessionMessengerC0F7ContextVtMd);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = *v1;
    v6 = v1[1];
    (*(v0[15] + 32))(v0[16], v1 + *(v2 + 48), v0[14]);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = v0[13];
      outlined copy of Data._Representation(v5, v6);
      GroupSessionMessenger.MessageContext.source.getter();
      v10 = *(v8 + 16);
      swift_beginAccess();
      v11 = *(v10 + 16);
      v12 = swift_task_alloc();
      *(v12 + 16) = v9;

      v13 = specialized Sequence.first(where:)(closure #1 in Array<A>.first(with:)partial apply, v12, v11);

      if (v13)
      {

        specialized Data._Representation.withUnsafeBytes<A>(_:)(v5, v6, v8, v13);
      }

      v15 = v0[15];
      v14 = v0[16];
      v17 = v0[13];
      v16 = v0[14];
      v18 = v0[11];
      v19 = v0[12];

      outlined consume of Data._Representation(v5, v6);
      outlined consume of Data._Representation(v5, v6);
      (*(v15 + 8))(v14, v16);
      (*(v19 + 8))(v17, v18);
    }

    else
    {
      v21 = v0[15];
      v20 = v0[16];
      v22 = v0[14];
      outlined consume of Data._Representation(v5, v6);
      (*(v21 + 8))(v20, v22);
    }

    v23 = lazy protocol witness table accessor for type GroupSessionMessenger.Messages<GroupActivitiesSynchronizationMessage>.Iterator and conformance GroupSessionMessenger.Messages<A>.Iterator();
    v24 = swift_task_alloc();
    v0[24] = v24;
    *v24 = v0;
    v24[1] = closure #13 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:);
    v25 = v0[21];
    v26 = v0[17];

    return MEMORY[0x1EEE6D8C8](v26, v25, v23);
  }
}

{
  *(v0 + 64) = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t closure #14 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = type metadata accessor for Participant();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit37GroupActivitiesSynchronizationMessageV_0cD00C16SessionMessengerC0F7ContextVtSgMd);
  v5[17] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC8MessagesVy_10RealityKit0aB22SynchronizationMessageVGMd);
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_10RealityKit0aB22SynchronizationMessageV_GMd);
  v5[21] = v9;
  v5[22] = *(v9 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #14 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:), 0, 0);
}

uint64_t closure #14 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:)()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  lazy protocol witness table accessor for type GroupActivitiesSynchronizationMessage and conformance GroupActivitiesSynchronizationMessage();
  lazy protocol witness table accessor for type GroupActivitiesSynchronizationMessage and conformance GroupActivitiesSynchronizationMessage();
  GroupSessionMessenger.messages<A>(of:)();
  GroupSessionMessenger.Messages.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = lazy protocol witness table accessor for type GroupSessionMessenger.Messages<GroupActivitiesSynchronizationMessage>.Iterator and conformance GroupSessionMessenger.Messages<A>.Iterator();
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = closure #14 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:);
  v6 = v0[21];
  v7 = v0[17];

  return MEMORY[0x1EEE6D8C8](v7, v6, v4);
}

{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = closure #14 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:);
  }

  else
  {
    v2 = closure #14 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  return MEMORY[0x1EEE6DFA0](closure #14 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:), 0, 0);
}

{
  v1 = v0[17];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit37GroupActivitiesSynchronizationMessageV_0cD00C16SessionMessengerC0F7ContextVtMd);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = *v1;
    v6 = v1[1];
    (*(v0[15] + 32))(v0[16], v1 + *(v2 + 48), v0[14]);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = v0[13];
      outlined copy of Data._Representation(v5, v6);
      GroupSessionMessenger.MessageContext.source.getter();
      v10 = *(v8 + 16);
      swift_beginAccess();
      v11 = *(v10 + 16);
      v12 = swift_task_alloc();
      *(v12 + 16) = v9;

      v13 = specialized Sequence.first(where:)(partial apply for closure #1 in Array<A>.first(with:), v12, v11);

      if (v13)
      {

        specialized Data._Representation.withUnsafeBytes<A>(_:)(v5, v6, v8, v13);
      }

      v15 = v0[15];
      v14 = v0[16];
      v17 = v0[13];
      v16 = v0[14];
      v18 = v0[11];
      v19 = v0[12];

      outlined consume of Data._Representation(v5, v6);
      outlined consume of Data._Representation(v5, v6);
      (*(v15 + 8))(v14, v16);
      (*(v19 + 8))(v17, v18);
    }

    else
    {
      v21 = v0[15];
      v20 = v0[16];
      v22 = v0[14];
      outlined consume of Data._Representation(v5, v6);
      (*(v21 + 8))(v20, v22);
    }

    v23 = lazy protocol witness table accessor for type GroupSessionMessenger.Messages<GroupActivitiesSynchronizationMessage>.Iterator and conformance GroupSessionMessenger.Messages<A>.Iterator();
    v24 = swift_task_alloc();
    v0[24] = v24;
    *v24 = v0;
    v24[1] = closure #14 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:);
    v25 = v0[21];
    v26 = v0[17];

    return MEMORY[0x1EEE6D8C8](v26, v25, v23);
  }
}

void GroupActivitiesSynchronizationProtocolLayer.__deallocating_deinit()
{
  if (!*(v0 + 32))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = MEMORY[0x1E69E7CA8];
  MEMORY[0x1E12F4140](v1, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);

  if (!*(v0 + 40))
  {
LABEL_7:
    __break(1u);
    return;
  }

  MEMORY[0x1E12F4140](v3, v2 + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);

  swift_deallocClassInstance();
}

uint64_t GroupActivitiesSynchronizationProtocolLayer.add(participant:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Participant();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 16);
  v13 = *(v8 + 16);
  v13(v11, a1, v7, v9);
  type metadata accessor for GroupActivitiesSynchronizationProtocolHandle();
  v14 = swift_allocObject();
  (v13)(v14 + OBJC_IVAR____TtC10RealityKitP33_C8ACE28DEBEF4D337B220B077987CB7144GroupActivitiesSynchronizationProtocolHandle_participant, v11, v7);

  Participant.id.getter();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v4 + 8))(v6, v3);
  v18 = (v14 + OBJC_IVAR____TtC10RealityKitP33_C8ACE28DEBEF4D337B220B077987CB7144GroupActivitiesSynchronizationProtocolHandle_address);
  *v18 = v15;
  v18[1] = v17;
  v19 = RESyncProtocolHandleCreate();
  (*(v8 + 8))(v11, v7);
  type metadata accessor for RESyncHandle();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v14 + OBJC_IVAR____TtC10RealityKitP33_C8ACE28DEBEF4D337B220B077987CB7144GroupActivitiesSynchronizationProtocolHandle_handle) = v20;
  v21 = swift_beginAccess();
  MEMORY[0x1E12F4070](v21);
  if (*((*(v12 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v12 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #2 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:)()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
}

uint64_t partial apply for closure #13 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for ARKitRunnable.runARKitSession(withSupportedCapabilities:) in conformance ARSessionManager;

  return closure #13 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:)(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_71Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t partial apply for closure #14 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for ARKitRunnable.stop() in conformance ARSessionManager;

  return closure #14 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:)(a1, v4, v5, v7, v6);
}

unint64_t lazy protocol witness table accessor for type GroupActivitiesSynchronizationMessage and conformance GroupActivitiesSynchronizationMessage()
{
  result = lazy protocol witness table cache variable for type GroupActivitiesSynchronizationMessage and conformance GroupActivitiesSynchronizationMessage;
  if (!lazy protocol witness table cache variable for type GroupActivitiesSynchronizationMessage and conformance GroupActivitiesSynchronizationMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivitiesSynchronizationMessage and conformance GroupActivitiesSynchronizationMessage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivitiesSynchronizationMessage and conformance GroupActivitiesSynchronizationMessage;
  if (!lazy protocol witness table cache variable for type GroupActivitiesSynchronizationMessage and conformance GroupActivitiesSynchronizationMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivitiesSynchronizationMessage and conformance GroupActivitiesSynchronizationMessage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupSessionMessenger.Messages<GroupActivitiesSynchronizationMessage>.Iterator and conformance GroupSessionMessenger.Messages<A>.Iterator()
{
  result = lazy protocol witness table cache variable for type GroupSessionMessenger.Messages<GroupActivitiesSynchronizationMessage>.Iterator and conformance GroupSessionMessenger.Messages<A>.Iterator;
  if (!lazy protocol witness table cache variable for type GroupSessionMessenger.Messages<GroupActivitiesSynchronizationMessage>.Iterator and conformance GroupSessionMessenger.Messages<A>.Iterator)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15GroupActivities0A16SessionMessengerC8MessagesV8IteratorVy_10RealityKit0aB22SynchronizationMessageV_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionMessenger.Messages<GroupActivitiesSynchronizationMessage>.Iterator and conformance GroupSessionMessenger.Messages<A>.Iterator);
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t closure #1 in GroupActivitiesSynchronizationProtocolLayer.receive(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(*(a3 + 24) + 16);
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!*(*(a4 + OBJC_IVAR____TtC10RealityKitP33_C8ACE28DEBEF4D337B220B077987CB7144GroupActivitiesSynchronizationProtocolHandle_handle) + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a1)
  {
    if (a2 - a1 <= 0xFFFFFFFFLL)
    {
      return RESyncCustomProtocolLayerOnReceiveData();
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v20[2] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      memset(v20, 0, 14);
      v8 = v20;
      v7 = v20;
      goto LABEL_23;
    }

    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    v11 = a1;
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v9, a1))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v11 += v9 - a1;
    }

    v12 = __OFSUB__(v10, v9);
    v13 = v10 - v9;
    if (!v12)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v20[0] = a1;
    LOWORD(v20[1]) = a2;
    BYTE2(v20[1]) = BYTE2(a2);
    BYTE3(v20[1]) = BYTE3(a2);
    BYTE4(v20[1]) = BYTE4(a2);
    BYTE5(v20[1]) = BYTE5(a2);
    v7 = v20 + BYTE6(a2);
    v8 = v20;
    goto LABEL_23;
  }

  v14 = a1;
  v13 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_25;
  }

  v11 = __DataStorage._bytes.getter();
  if (v11)
  {
    v15 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v15))
    {
      v11 += v14 - v15;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v16 = MEMORY[0x1E12F1840]();
  if (v16 >= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  v18 = (v17 + v11);
  if (v11)
  {
    v7 = v18;
  }

  else
  {
    v7 = 0;
  }

  v8 = v11;
  a3 = v5;
  a4 = v4;
LABEL_23:
  closure #1 in GroupActivitiesSynchronizationProtocolLayer.receive(_:from:)(v8, v7, a3, a4);
}

uint64_t partial apply for closure #1 in closure #6 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:)(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  type metadata accessor for Participant();

  return closure #1 in closure #6 in GroupActivitiesSynchronizationProtocolLayer.init<A>(session:)(a1, a2, a3, a4);
}

void *specialized GroupActivitiesSynchronizationMessage.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit37GroupActivitiesSynchronizationMessageV10CodingKeys33_C8ACE28DEBEF4D337B220B077987CB71LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GroupActivitiesSynchronizationMessage.CodingKeys and conformance GroupActivitiesSynchronizationMessage.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t specialized Data._Representation.init(_:count:)(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = __DataStorage._bytes.getter();
  if (v3)
  {
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = MEMORY[0x1E12F1840]();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = specialized Data.InlineData.init(_:)(v3, v7);

  return v8;
}

uint64_t specialized Data.init(bytesNoCopy:count:deallocator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Data.Deallocator();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Data.Deallocator._deallocator.getter();
  if (a2)
  {
    type metadata accessor for __DataStorage();
    swift_allocObject();

    v10 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E6969010])
    {
      v11 = __DataStorage._capacity.modify();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = specialized Data._Representation.init(_:count:)(v10, a2);
  }

  else
  {
    v13 = Data.Deallocator._deallocator.getter();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
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

uint64_t getEnumTagSinglePayload for GroupActivitiesSynchronizationMessage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for GroupActivitiesSynchronizationMessage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupActivitiesSynchronizationMessage.CodingKeys and conformance GroupActivitiesSynchronizationMessage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GroupActivitiesSynchronizationMessage.CodingKeys and conformance GroupActivitiesSynchronizationMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupActivitiesSynchronizationMessage.CodingKeys and conformance GroupActivitiesSynchronizationMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivitiesSynchronizationMessage.CodingKeys and conformance GroupActivitiesSynchronizationMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivitiesSynchronizationMessage.CodingKeys and conformance GroupActivitiesSynchronizationMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupActivitiesSynchronizationMessage.CodingKeys and conformance GroupActivitiesSynchronizationMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivitiesSynchronizationMessage.CodingKeys and conformance GroupActivitiesSynchronizationMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivitiesSynchronizationMessage.CodingKeys and conformance GroupActivitiesSynchronizationMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupActivitiesSynchronizationMessage.CodingKeys and conformance GroupActivitiesSynchronizationMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivitiesSynchronizationMessage.CodingKeys and conformance GroupActivitiesSynchronizationMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivitiesSynchronizationMessage.CodingKeys and conformance GroupActivitiesSynchronizationMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupActivitiesSynchronizationMessage.CodingKeys and conformance GroupActivitiesSynchronizationMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivitiesSynchronizationMessage.CodingKeys and conformance GroupActivitiesSynchronizationMessage.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t SpatialTrackingSession.run(_:session:arConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = type metadata accessor for SpatialTrackingSession.UnavailableCapabilities();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd);
  v4[19] = swift_task_alloc();
  v6 = type metadata accessor for SpatialTrackingSession.Configuration();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for MainActor();
  v4[25] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[26] = v8;
  v4[27] = v7;

  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.run(_:session:arConfiguration:), v8, v7);
}

uint64_t SpatialTrackingSession.run(_:session:arConfiguration:)()
{
  type metadata accessor for SpatialTrackingManager();
  v1 = static SpatialTrackingManager.shared.getter();
  v0[28] = v1;
  if (!v1)
  {
    v13 = v0[21];
    v12 = v0[22];
    v14 = v0[20];
    v15 = v0[15];
    v16 = v0[16];
    v18 = v0[11];
    v17 = v0[12];

    (*(v13 + 16))(v12, v17, v14);
    SpatialTrackingSession.UnavailableCapabilities.init(unsupportedConfiguration:)();
    (*(v16 + 56))(v18, 0, 1, v15);
    goto LABEL_7;
  }

  dispatch thunk of SpatialTrackingManager.isRunningUserSession.setter();
  SpatialTrackingManager.arkitRunnable.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation13ARKitRunnable_pMd);
  type metadata accessor for ARSessionManager();
  if (!swift_dynamicCast())
  {
    v20 = v0[21];
    v19 = v0[22];
    v21 = v0[20];
    v22 = v0[15];
    v23 = v0[16];
    v25 = v0[11];
    v24 = v0[12];

    (*(v20 + 16))(v19, v24, v21);
    SpatialTrackingSession.UnavailableCapabilities.init(unsupportedConfiguration:)();

    (*(v23 + 56))(v25, 0, 1, v22);
    goto LABEL_7;
  }

  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[14];
  v6 = v0[10];
  v0[29] = v6;
  swift_beginAccess();
  *(v6 + 40) = 1;
  SpatialTrackingSession.Configuration.filteredBy(arConfiguration:)(v5, v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v7 = v0[19];
    v9 = v0[16];
    v8 = v0[17];
    v10 = v0[15];
    v11 = v0[11];

    outlined destroy of ARConfigurationCreateResult?(v7, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd);
    SpatialTrackingSession.UnavailableCapabilities.init()();
    SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter();
    SpatialTrackingSession.UnavailableCapabilities.internalUnsupportedSceneUnderstandingCapabilities.setter();
    SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
    SpatialTrackingSession.UnavailableCapabilities.internalUnsupportedAnchorCapabilities.setter();

    (*(v9 + 32))(v11, v8, v10);
    (*(v9 + 56))(v11, 0, 1, v10);
LABEL_7:

    v26 = v0[1];

    return v26();
  }

  (*(v0[21] + 32))(v0[23], v0[19], v0[20]);

  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.run(_:session:arConfiguration:), 0, 0);
}

{
  *(v0 + 240) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.run(_:session:arConfiguration:), v2, v1);
}

{
  v1 = *(v0 + 232);
  v2 = *(v0 + 104);

  closure #1 in ARSessionManager.configureViewUsingSession(_:supportedCapabilities:)(v1, v2);

  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.run(_:session:arConfiguration:), 0, 0);
}

{
  return MEMORY[0x1EEE6DFA0](SpatialTrackingSession.run(_:session:arConfiguration:), *(v0 + 208), *(v0 + 216));
}

{

  SpatialTrackingSession.UnavailableCapabilities.init()();
  v1 = SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
  v2 = SpatialTrackingSession.Configuration.anchorCapabilitySet.getter();
  if (*(v2 + 16) <= *(v1 + 16) >> 3)
  {
    specialized Set._subtract<A>(_:)(v2, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVSgMR, MEMORY[0x1E697A640], specialized Set._Variant.remove(_:));
  }

  else
  {
    specialized _NativeSet.subtracting<A>(_:)(v2, v1);
  }

  SpatialTrackingSession.UnavailableCapabilities.internalUnsupportedAnchorCapabilities.setter();
  v3 = SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter();
  v4 = SpatialTrackingSession.Configuration.sceneUnderstandingCapabilities.getter();
  if (*(v4 + 16) <= *(v3 + 16) >> 3)
  {
    specialized Set._subtract<A>(_:)(v4, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVSgMR, MEMORY[0x1E697A660], specialized Set._Variant.remove(_:));
  }

  else
  {
    specialized _NativeSet.subtracting<A>(_:)(v4, v3);
  }

  v5 = v0[23];
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[16];
  SpatialTrackingSession.UnavailableCapabilities.internalUnsupportedSceneUnderstandingCapabilities.setter();
  v9 = SpatialTrackingSession.UnavailableCapabilities.anyUnavailableCapabilities.getter();

  (*(v7 + 8))(v5, v6);
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[11];
  if (v9)
  {
    (*(v10 + 32))(v0[11], v0[18], v0[15]);
    v13 = 0;
  }

  else
  {
    (*(v10 + 8))(v0[18], v0[15]);
    v13 = 1;
  }

  (*(v8 + 56))(v12, v13, 1, v11);

  v14 = v0[1];

  return v14();
}

void specialized Set._subtract<A>(_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void, __n128), void (*a5)(char *))
{
  v25 = a3;
  v26 = a5;
  v24 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  v12 = a4(0, v9);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - v14;
  if (*(*v5 + 16))
  {
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(a1 + 56);
    v19 = (v16 + 63) >> 6;
    v23[1] = v13 + 8;
    v23[2] = v13 + 16;

    v20 = 0;
    while (v18)
    {
      v21 = v20;
LABEL_10:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v13 + 16))(v15, *(a1 + 48) + *(v13 + 72) * (v22 | (v21 << 6)), v12);
      v26(v15);
      (*(v13 + 8))(v15, v12);
      outlined destroy of ARConfigurationCreateResult?(v11, v24);
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return;
      }

      v18 = *(a1 + 56 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v65 - v9);
  v11 = type metadata accessor for Participant();
  MEMORY[0x1EEE9AC00](v11);
  v85 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v65 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v66 = v10;
  v68 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      outlined destroy of ARConfigurationCreateResult?(v30, &_s15GroupActivities11ParticipantVSgMd);
      goto LABEL_52;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x1E696B330]);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v15, *(a2 + 48) + v84 * v24, v11);
    v35 = lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x1E696B330]);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v87 = *v88;
    v87(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x1EEE9AC00](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        outlined destroy of ARConfigurationCreateResult?(v24, &_s15GroupActivities11ParticipantVSgMd);
        a2 = specialized _NativeSet.extractSubset(using:count:)(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v15, *(v52 + 48) + v54 * v84, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v87(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v15, *(v52 + 48) + v54 * v84, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v87(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v80 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v80;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v82, v61);
  specialized closure #1 in _NativeSet.subtracting<A>(_:)(v63, v65, v80, v24, &v89);
  a2 = v64;

  MEMORY[0x1E12F6150](v63, -1, -1);
LABEL_52:
  outlined consume of Set<UITouch>.Iterator._Variant();
  return a2;
}

{
  v94 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v65 - v9);
  v11 = type metadata accessor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability();
  MEMORY[0x1EEE9AC00](v11);
  v85 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v65 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v66 = v10;
  v68 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      outlined destroy of ARConfigurationCreateResult?(v30, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVSgMd);
      goto LABEL_52;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x1E697A660]);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v15, *(a2 + 48) + v84 * v24, v11);
    v35 = lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x1E697A660]);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v87 = *v88;
    v87(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x1EEE9AC00](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        outlined destroy of ARConfigurationCreateResult?(v24, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVSgMd);
        a2 = specialized _NativeSet.extractSubset(using:count:)(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v15, *(v52 + 48) + v54 * v84, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v87(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v15, *(v52 + 48) + v54 * v84, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v87(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v80 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v80;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v82, v61);
  specialized closure #1 in _NativeSet.subtracting<A>(_:)(v63, v65, v80, v24, &v89);
  a2 = v64;

  MEMORY[0x1E12F6150](v63, -1, -1);
LABEL_52:
  outlined consume of Set<UITouch>.Iterator._Variant();
  return a2;
}

{
  v94 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v65 - v9);
  v11 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  MEMORY[0x1EEE9AC00](v11);
  v85 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v65 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v66 = v10;
  v68 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      outlined destroy of ARConfigurationCreateResult?(v30, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVSgMd);
      goto LABEL_52;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v15, *(a2 + 48) + v84 * v24, v11);
    v35 = lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v87 = *v88;
    v87(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x1EEE9AC00](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        outlined destroy of ARConfigurationCreateResult?(v24, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVSgMd);
        a2 = specialized _NativeSet.extractSubset(using:count:)(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v15, *(v52 + 48) + v54 * v84, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v87(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v15, *(v52 + 48) + v54 * v84, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v87(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v80 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v80;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v82, v61);
  specialized closure #1 in _NativeSet.subtracting<A>(_:)(v63, v65, v80, v24, &v89);
  a2 = v64;

  MEMORY[0x1E12F6150](v63, -1, -1);
LABEL_52:
  outlined consume of Set<UITouch>.Iterator._Variant();
  return a2;
}

void specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for Participant();
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          outlined destroy of ARConfigurationCreateResult?(v11, &_s15GroupActivities11ParticipantVSgMd);
          v45 = v61;

          specialized _NativeSet.extractSubset(using:count:)(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x1E696B330]);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x1E696B330]);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability();
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          outlined destroy of ARConfigurationCreateResult?(v11, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVSgMd);
          v45 = v61;

          specialized _NativeSet.extractSubset(using:count:)(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x1E697A660]);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x1E697A660]);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          outlined destroy of ARConfigurationCreateResult?(v11, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVSgMd);
          v45 = v61;

          specialized _NativeSet.extractSubset(using:count:)(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x1E697A660]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v35 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMd);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v35 = type metadata accessor for Participant();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities11ParticipantVGMd);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x1E696B330]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  return specialized _NativeSet.extractSubset(using:count:)(a1, a2, a3, a4, &_ss11_SetStorageCySo7UITouchCGMd);
}

{
  return specialized _NativeSet.extractSubset(using:count:)(a1, a2, a3, a4, &_ss11_SetStorageCySo16ARReferenceImageCGMd);
}

{
  return specialized _NativeSet.extractSubset(using:count:)(a1, a2, a3, a4, &_ss11_SetStorageCySo17ARReferenceObjectCGMd);
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a4;
  if (!a3)
  {
    v10 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v10;
  }

  v6 = a3;
  if (*(a4 + 16) == a3)
  {
    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    v17 = *(v10 + 40);
    v18 = *(*(v5 + 48) + 8 * (v14 | (v12 << 6)));
    result = NSObject._rawHashValue(seed:)(v17);
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v13 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v10 + 48) + 8 * v22) = v18;
    ++*(v10 + 16);
    if (__OFSUB__(v6--, 1))
    {
      goto LABEL_32;
    }

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_6;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ARView.ARSessionComponents(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for ARView.ARSessionComponents(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Void __swiftcall ARView.updateARSession(restartIfPaused:)(Swift::Bool restartIfPaused)
{
  v2 = v1;
  v4 = type metadata accessor for OSSignpostID();
  MEMORY[0x1EEE9AC00](v4 - 8);
  static __REOSLog.UpdateLoop.getter();
  static __RESignpostID.UpdateLoop.getter();
  type metadata accessor for __REOSSignpostScope();
  swift_allocObject();
  __REOSSignpostScope.init(osLog:signpostID:name:)();

  v5 = *&v1[OBJC_IVAR____TtC10RealityKit6ARView_arSystem];
  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((*(v5 + OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraMode) & 1) == 0)
  {
    v6 = &v1[OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents];
    swift_beginAccess();
    if ((v6[1] & 1) != 0 || *v6 == 1)
    {
      ARView.updateReferenceObjectsAndImages()();
    }

    if (v6[2] == 1)
    {
      v6[3] = 1;
      v15 = *(v6 + 1);
      v7 = v15;
      if ((ARView.requiredSessionConfiguration(currentConfig:)(&v15) & 1) == 0)
      {
        if (!restartIfPaused || (v13 = [v1 session], v14 = objc_msgSend(v13, sel_state), v13, v14))
        {
          v12 = v15;
          goto LABEL_13;
        }
      }

      v8 = [v2 session];
      v9 = v15;
      if (v15)
      {
        v10 = v8;
        v11 = v15;
        [v10 runWithConfiguration:v11 options:0];

        v12 = *(v6 + 1);
        *(v6 + 1) = v9;
LABEL_13:

        v6[3] = 0;
        return;
      }

LABEL_16:
      __break(1u);
    }
  }
}

uint64_t ARView.updateReferenceObjectsAndImages()()
{
  v1 = type metadata accessor for AnchoringComponent();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for AnchoringComponent.Target();
  v5 = *(v94 - 8);
  v6 = MEMORY[0x1EEE9AC00](v94);
  v8 = (&v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v6);
  v84 = (&v75 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v75 - v11;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySS_12CoreGraphics7CGFloatVtGTt0g5Tf4g_nTm(MEMORY[0x1E69E7CC0], &_ss18_DictionaryStorageCySSSaySS_12CoreGraphics7CGFloatVtGGMd);
  v93 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySS_12CoreGraphics7CGFloatVtGTt0g5Tf4g_nTm(v12, &_ss18_DictionaryStorageCySSSaySSGGMd);
  v76 = v0;
  if (!*(v0 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {
    goto LABEL_60;
  }

  Scene.coreScene.getter();

  ComponentsOfType = RESceneGetComponentsOfType();
  if (v15 < 0)
  {
    goto LABEL_59;
  }

  v16 = v15;
  v85 = v13;
  if (!v15)
  {
LABEL_48:
    v69 = v76 + OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents;
    swift_beginAccess();
    v70 = v85;
    if (*v69 == 1 && (ARView.compareReferenceImageNamesAndWidthByGroup(referenceImageNamesAndWidthByGroup:)(v85) & 1) == 0)
    {
      *(v69 + 16) = v70;

      v71 = *(v69 + 64);
      if (v71)
      {

        ARView.loadReferenceImages(_:)(v70);
        v71();

        sub_1E11CF140(v71);
      }
    }

    v72 = v93;
    if (*(v69 + 1) == 1 && (ARView.compareReferenceObjectNamesByGroup(referenceObjectNamesByGroup:)(v93) & 1) == 0)
    {
      *(v69 + 24) = v72;

      v73 = *(v69 + 48);
      if (v73)
      {

        ARView.loadReferenceObjects(_:)(v72);
        v73();

        sub_1E11CF140(v73);
      }
    }
  }

  v17 = ComponentsOfType;
  v92 = type metadata accessor for Entity();
  v18 = (v76 + OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents);
  swift_beginAccess();
  v88 = (v5 + 16);
  v89 = (v2 + 8);
  v87 = (v5 + 88);
  v83 = *MEMORY[0x1E697A258];
  v90 = (v5 + 8);
  v80 = v1;
  v81 = (v5 + 96);
  v82 = *MEMORY[0x1E697A280];
  v79 = v4;
  v78 = v8;
  v86 = v18;
  while (1)
  {
    REComponentGetEntity();
    static Entity.fromCore(_:ignoringEntityInfo:)();
    if (swift_conformsToProtocol2())
    {
      break;
    }

LABEL_6:
    v17 += 8;
    if (!--v16)
    {
      goto LABEL_48;
    }
  }

  HasAnchoring.anchoring.getter();
  v19 = v91;
  AnchoringComponent.target.getter();
  (*v89)(v4, v1);
  if (*v18 == 1)
  {
    v20 = v84;
    v21 = v94;
    (*v88)(v84, v19, v94);
    v22 = (*v87)(v20, v21);
    if (v22 == v83)
    {
      (*v81)(v20, v21);
      v24 = *v20;
      v23 = v20[1];
      v25 = v20[2];
      v77 = v20[3];
      v26 = v85;
      if (*(v85 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v23), (v28 & 1) != 0))
      {
        v29 = *(*(v26 + 56) + 8 * v27);
      }

      else
      {
        v29 = MEMORY[0x1E69E7CC0];
      }

      type metadata accessor for __RealityFileURLResolver();
      v30._countAndFlagsBits = static __RealityFileURLResolver.schemePrefix.getter();
      v31 = String.hasPrefix(_:)(v30);

      if (!v31 || (, v32 = ARView.findPhysicalWidthForImageAnchoredEntity(root:)(), v34 = v33, , (v34 & 1) != 0))
      {
        v32 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
      }

      v36 = v29[2];
      v35 = v29[3];
      if (v36 >= v35 >> 1)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v29);
      }

      v29[2] = v36 + 1;
      v37 = &v29[3 * v36];
      v38 = v77;
      v37[4] = v25;
      v37[5] = v38;
      v37[6] = v32;
      v39 = v85;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v39;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v24, v23, isUniquelyReferenced_nonNull_native);

      v85 = v95;
      v4 = v79;
      v1 = v80;
      v8 = v78;
      v19 = v91;
    }

    else
    {
      (*v90)(v20, v21);
    }

    v18 = v86;
  }

  if (v18[1] != 1)
  {
    (*v90)(v19, v94);

    goto LABEL_6;
  }

  v41 = v94;
  (*v88)(v8, v19, v94);
  v42 = (*v87)(v8, v41);
  if (v42 != v82)
  {
    v51 = *v90;
    (*v90)(v19, v41);

    v51(v8, v41);
LABEL_47:
    v18 = v86;
    goto LABEL_6;
  }

  (*v81)(v8, v41);
  v43 = *v8;
  v44 = v8[1];
  v45 = v8[2];
  v46 = v8[3];
  v47 = v93;
  if (*(v93 + 16) && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(*v8, v8[1]), (v49 & 1) != 0))
  {
    v50 = *(*(v47 + 56) + 8 * v48);
  }

  else
  {
    v50 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
  }

  v53 = *(v50 + 2);
  v52 = *(v50 + 3);
  if (v53 >= v52 >> 1)
  {
    v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v50);
  }

  *(v50 + 2) = v53 + 1;
  v54 = &v50[16 * v53];
  *(v54 + 4) = v45;
  *(v54 + 5) = v46;
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v95 = v93;
  v57 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v44);
  v58 = *(v93 + 16);
  v59 = (v56 & 1) == 0;
  v60 = v58 + v59;
  if (!__OFADD__(v58, v59))
  {
    v61 = v56;
    if (*(v93 + 24) >= v60)
    {
      if ((v55 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v60, v55);
      v62 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v44);
      if ((v61 & 1) != (v63 & 1))
      {
        goto LABEL_61;
      }

      v57 = v62;
    }

    v64 = v95;
    v93 = v95;
    if (v61)
    {
      *(*(v95 + 56) + 8 * v57) = v50;
    }

    else
    {
      *(v95 + 8 * (v57 >> 6) + 64) |= 1 << v57;
      v65 = (v64[6] + 16 * v57);
      *v65 = v43;
      v65[1] = v44;
      *(v64[7] + 8 * v57) = v50;
      v66 = v64[2];
      v67 = __OFADD__(v66, 1);
      v68 = v66 + 1;
      if (v67)
      {
        goto LABEL_58;
      }

      v64[2] = v68;
    }

    (*v90)(v91, v94);
    v4 = v79;
    v1 = v80;
    v8 = v78;
    goto LABEL_47;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t ARView.requiredSessionConfiguration(currentConfig:)(void **a1)
{
  v121 = a1;
  v131 = type metadata accessor for AnchoringComponent.Target.Alignment();
  v2 = *(v131 - 8);
  v3 = MEMORY[0x1EEE9AC00](v131);
  v130 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v129 = &v120 - v5;
  v139 = type metadata accessor for AnchoringComponent();
  v6 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AnchoringComponent.Target();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v151 = (&v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v10);
  v128 = (&v120 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v137 = &v120 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v153 = &v120 - v16;
  v17 = MEMORY[0x1E69E7CC0];
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySS_12CoreGraphics7CGFloatVtGTt0g5Tf4g_nTm(MEMORY[0x1E69E7CC0], &_ss18_DictionaryStorageCySSSaySS_12CoreGraphics7CGFloatVtGGMd);
  v152 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySS_12CoreGraphics7CGFloatVtGTt0g5Tf4g_nTm(v17, &_ss18_DictionaryStorageCySSSaySSGGMd);
  v122 = v1;
  if (!*(v1 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {
    goto LABEL_80;
  }

  Scene.coreScene.getter();

  ComponentsOfType = RESceneGetComponentsOfType();
  if (v20 < 0)
  {
    goto LABEL_79;
  }

  v21 = v20;
  v142 = v18;
  if (v20)
  {
    v22 = ComponentsOfType;
    v144 = type metadata accessor for Entity();
    v140 = 0;
    v141 = 0;
    v136 = (v6 + 8);
    v23 = (v9 + 16);
    v150 = (v9 + 88);
    v135 = *MEMORY[0x1E697A260];
    v127 = *MEMORY[0x1E697A258];
    v143 = (v9 + 96);
    v126 = (v2 + 32);
    v125 = (v2 + 8);
    v134 = *MEMORY[0x1E697A280];
    v133 = v8;
    v149 = (v9 + 16);
    v145 = (v9 + 8);
    while (1)
    {
      REComponentGetEntity();
      v24 = static Entity.fromCore(_:ignoringEntityInfo:)();
      if (!swift_conformsToProtocol2())
      {

        goto LABEL_6;
      }

      v148 = v21;

      v25 = v150;
      v26 = v138;
      HasAnchoring.anchoring.getter();
      AnchoringComponent.target.getter();
      v27 = v26;
      v28 = v153;
      (*v136)(v27, v139);
      v29 = *v23;
      v30 = v137;
      (*v23)(v137, v28, v8);
      v146 = *v25;
      v31 = v146(v30, v8);
      v147 = v29;
      if (v31 == v135)
      {
        (*v143)(v30, v8);
        v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18AnchoringComponentV6TargetO9AlignmentV_AE14ClassificationV14classifications5SIMD2VySfG13minimumBoundstMd) + 48);
        v33 = v129;
        v34 = v131;
        (*v126)(v129, v30, v131);
        v35 = type metadata accessor for AnchoringComponent.Target.Classification();
        (*(*(v35 - 8) + 8))(&v30[v32], v35);
        v36 = v130;
        static AnchoringComponent.Target.Alignment.horizontal.getter();
        lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type AnchoringComponent.Target.Alignment and conformance AnchoringComponent.Target.Alignment, MEMORY[0x1E697A288]);
        v37 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v38 = *v125;
        (*v125)(v36, v34);
        v141 |= v37;
        static AnchoringComponent.Target.Alignment.vertical.getter();
        LODWORD(v32) = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v38(v36, v34);
        v8 = v133;
        v38(v33, v34);
        v28 = v153;
        v140 |= v32;
        v21 = v148;
        v39 = v145;
        v40 = v146;
      }

      else
      {
        v41 = v145;
        v42 = *v145;
        (*v145)(v30, v8);
        v43 = v128;
        v29(v128, v28, v8);
        v40 = v146;
        v44 = v146(v43, v8);
        if (v44 == v127)
        {
          (*v143)(v43, v8);
          v45 = *v43;
          v46 = v43[1];
          v47 = v43[3];
          v124 = v43[2];
          v123 = v47;
          v48 = *(v142 + 16);
          v21 = v148;
          v132 = v45;
          if (v48 && (v49 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v46), (v50 & 1) != 0))
          {
            v51 = *(*(v142 + 56) + 8 * v49);
          }

          else
          {
            v51 = MEMORY[0x1E69E7CC0];
          }

          type metadata accessor for __RealityFileURLResolver();
          v52._countAndFlagsBits = static __RealityFileURLResolver.schemePrefix.getter();
          v53 = String.hasPrefix(_:)(v52);

          if (!v53 || (, v54 = ARView.findPhysicalWidthForImageAnchoredEntity(root:)(), v56 = v55, , (v56 & 1) != 0))
          {
            v54 = 0;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51[2] + 1, 1, v51);
          }

          v58 = v51[2];
          v57 = v51[3];
          if (v58 >= v57 >> 1)
          {
            v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v51);
          }

          v51[2] = v58 + 1;
          v59 = &v51[3 * v58];
          v60 = v123;
          v59[4] = v124;
          v59[5] = v60;
          v59[6] = v54;
          v61 = v142;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v156 = v61;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v51, v132, v46, isUniquelyReferenced_nonNull_native);

          v142 = v156;
          v28 = v153;
          v39 = v145;
        }

        else
        {
          v42(v43, v8);
          v21 = v148;
          v39 = v41;
        }
      }

      v63 = v151;
      v147(v151, v28, v8);
      v64 = v40(v63, v8);
      if (v64 != v134)
      {
        v74 = *v39;
        (*v39)(v28, v8);

        v74(v151, v8);
        v23 = v149;
        goto LABEL_6;
      }

      v65 = v151;
      v148 = v24;
      (*v143)(v151, v8);
      v66 = v65[1];
      v67 = v65[2];
      v68 = v65[3];
      v69 = v152;
      if (!*(v152 + 16))
      {
        break;
      }

      v70 = *v65;
      v71 = specialized __RawDictionaryStorage.find<A>(_:)(*v65, v65[1]);
      if ((v72 & 1) == 0)
      {
        goto LABEL_30;
      }

      v73 = *(*(v69 + 56) + 8 * v71);

LABEL_31:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 2) + 1, 1, v73);
      }

      v76 = *(v73 + 2);
      v75 = *(v73 + 3);
      if (v76 >= v75 >> 1)
      {
        v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v73);
      }

      *(v73 + 2) = v76 + 1;
      v77 = &v73[16 * v76];
      *(v77 + 4) = v67;
      *(v77 + 5) = v68;
      v78 = swift_isUniquelyReferenced_nonNull_native();
      v156 = v152;
      v80 = specialized __RawDictionaryStorage.find<A>(_:)(v70, v66);
      v81 = *(v152 + 16);
      v82 = (v79 & 1) == 0;
      v83 = v81 + v82;
      if (__OFADD__(v81, v82))
      {
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v84 = v79;
      if (*(v152 + 24) >= v83)
      {
        if ((v78 & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v83, v78);
        v85 = specialized __RawDictionaryStorage.find<A>(_:)(v70, v66);
        if ((v84 & 1) != (v86 & 1))
        {
          goto LABEL_87;
        }

        v80 = v85;
      }

      v87 = v153;
      v23 = v149;
      v88 = v156;
      v152 = v156;
      if (v84)
      {
        *(*(v156 + 56) + 8 * v80) = v73;
      }

      else
      {
        *(v156 + 8 * (v80 >> 6) + 64) |= 1 << v80;
        v89 = (v88[6] + 16 * v80);
        *v89 = v70;
        v89[1] = v66;
        *(v88[7] + 8 * v80) = v73;
        v90 = v88[2];
        v91 = __OFADD__(v90, 1);
        v92 = v90 + 1;
        if (v91)
        {
          goto LABEL_78;
        }

        v88[2] = v92;
      }

      v8 = v133;
      (*v145)(v87, v133);
LABEL_6:
      v22 += 8;
      if (!--v21)
      {
        goto LABEL_47;
      }
    }

    v70 = *v65;
LABEL_30:
    v73 = MEMORY[0x1E69E7CC0];
    goto LABEL_31;
  }

  v140 = 0;
  v141 = 0;
LABEL_47:
  v93 = v121;
  v94 = *v121;
  if (*v121 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v95 = 0;
    v96 = v94;
  }

  else
  {
    v96 = [objc_allocWithZone(MEMORY[0x1E69864E8]) init];

    *v93 = v96;
    [v96 setEnvironmentTexturing_];
    v95 = 1;
  }

  objc_opt_self();
  v97 = swift_dynamicCastObjCClass();
  if (!v97)
  {
    if ((ARView.compareReferenceImageNamesAndWidthByGroup(referenceImageNamesAndWidthByGroup:)(v142) & 1) == 0)
    {
      goto LABEL_82;
    }

    if (ARView.compareReferenceObjectNamesByGroup(referenceObjectNamesByGroup:)(v152))
    {
      if ((v141 & 1) == 0)
      {
        if ((v140 & 1) == 0)
        {
          v98 = 0;
          goto LABEL_71;
        }

        goto LABEL_85;
      }
    }

    else
    {
LABEL_83:
      __break(1u);
    }

    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v98 = v97;
  v99 = v96;
  if ((ARView.compareReferenceImageNamesAndWidthByGroup(referenceImageNamesAndWidthByGroup:)(v142) & 1) == 0)
  {
    v100 = v142;

    v101 = v98;
    ARView.loadReferenceImages(_:)(v100);
    type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARReferenceImage);
    lazy protocol witness table accessor for type ARReferenceImage and conformance NSObject(&lazy protocol witness table cache variable for type ARReferenceImage and conformance NSObject, &lazy cache variable for type metadata for ARReferenceImage);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v101 setDetectionImages_];

    v103 = v101;
    v104 = [v103 detectionImages];
    if (v104)
    {
      v105 = v104;
      v106 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v106 & 0xC000000000000001) != 0)
      {
        v107 = __CocoaSet.count.getter();
      }

      else
      {
        v107 = *(v106 + 16);
      }

      v108 = v122;

      [v103 setMaximumNumberOfTrackedImages_];

      v109 = v108 + OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents;
      v95 = 1;
      swift_beginAccess();
      *(v109 + 16) = v142;

      goto LABEL_63;
    }

LABEL_86:
    __break(1u);
LABEL_87:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_63:
  if ((ARView.compareReferenceObjectNamesByGroup(referenceObjectNamesByGroup:)(v152) & 1) == 0)
  {
    v110 = v98;
    v111 = v152;

    ARView.loadReferenceObjects(_:)(v112);
    type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARReferenceObject);
    lazy protocol witness table accessor for type ARReferenceImage and conformance NSObject(&lazy protocol witness table cache variable for type ARReferenceObject and conformance NSObject, &lazy cache variable for type metadata for ARReferenceObject);
    v113 = v122;
    v114 = Set._bridgeToObjectiveC()().super.isa;

    [v110 setDetectionObjects_];

    v115 = v113 + OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents;
    v95 = 1;
    swift_beginAccess();
    *(v115 + 24) = v111;
  }

  if ((v141 & 1) != 0 && ([v98 planeDetection] & 1) == 0)
  {
    v116 = v98;
    [v116 setPlaneDetection_];

    v95 = 1;
  }

  if ((v140 & 1) != 0 && ([v98 planeDetection] & 2) == 0)
  {
    v117 = v98;
    [v117 setPlaneDetection_];

    v95 = 1;
  }

LABEL_71:
  swift_beginAccess();
  ARView.Environment.sceneUnderstanding.getter(v154);
  v118 = v155;
  ARView.updateEnvironment()();
  if (!v118)
  {
    goto LABEL_74;
  }

  if (!v98)
  {
    goto LABEL_81;
  }

  if ([v98 sceneReconstruction] != 1)
  {
    v95 = 1;
    [v98 setSceneReconstruction_];
  }

  else
  {
LABEL_74:
  }

  return v95;
}

uint64_t ARView.compareReferenceImageNamesAndWidthByGroup(referenceImageNamesAndWidthByGroup:)(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v4 = v1 + OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents;
  swift_beginAccess();
  if (v3 != *(*(v4 + 16) + 16))
  {
    return 0;
  }

  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v42 = v2;
  while (2)
  {
    if (!v8)
    {
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v9)
        {

          return 1;
        }

        v8 = *(v5 + 8 * v11);
        ++v10;
        if (v8)
        {
          v10 = v11;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      result = swift_endAccess();
      __break(1u);
      return result;
    }

LABEL_10:
    v12 = __clz(__rbit64(v8)) | (v10 << 6);
    v13 = (*(v2 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v2 + 56) + 8 * v12);
    swift_beginAccess();
    v17 = *(*(v4 + 16) + 16);

    v46 = v16;

    if (!v17 || (specialized __RawDictionaryStorage.find<A>(_:)(v15, v14), (v18 & 1) == 0) || (swift_endAccess(), swift_beginAccess(), v19 = *(v4 + 16), !*(v19 + 16)) || (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14), (v21 & 1) == 0))
    {
      swift_endAccess();
      goto LABEL_43;
    }

    v22 = *(*(v19 + 56) + 8 * v20);
    swift_endAccess();
    if (*(v22 + 16) != *(v16 + 16))
    {
LABEL_43:

      return 0;
    }

    v39 = v9;
    v40 = v5;
    swift_beginAccess();
    v41 = v4;
    v23 = *(v4 + 16);
    if (!*(v23 + 16))
    {
      goto LABEL_49;
    }

    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
    if ((v25 & 1) == 0)
    {
      goto LABEL_49;
    }

    v8 &= v8 - 1;
    v26 = *(*(v23 + 56) + 8 * v24);
    swift_endAccess();

    v27 = 0;
    v28 = 0;
    v29 = *(v26 + 16);
    v44 = v26;
    v45 = *(v46 + 16);
    v43 = v26 + 32;
    v30 = (v46 + 48);
    while (v28 == v29)
    {
      v31 = 0;
      v32 = 0.0;
      v33 = 0;
      v34 = 0.0;
      v28 = v29;
      if (v45 == v27)
      {
        goto LABEL_35;
      }

LABEL_27:
      if (v27 >= *(v46 + 16))
      {
        goto LABEL_46;
      }

      v36 = *v30;
      v37 = *(v30 - 2);
      v33 = *(v30 - 1);

      if (!v31)
      {
        goto LABEL_35;
      }

      if (!v33)
      {
        goto LABEL_42;
      }

      if ((*&v32 != v37 || v31 != v33) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

LABEL_42:

        goto LABEL_43;
      }

      v30 += 3;
      ++v27;
      if (v34 != v36)
      {
        goto LABEL_43;
      }
    }

    if ((v28 & 0x8000000000000000) != 0)
    {
      goto LABEL_47;
    }

    if (v28 >= *(v44 + 16))
    {
      goto LABEL_48;
    }

    v35 = (v43 + 24 * v28);
    v34 = v35[2];
    v32 = *v35;
    v31 = *(v35 + 1);

    if (v45 != v27)
    {
      ++v28;
      goto LABEL_27;
    }

    if (v31)
    {
      goto LABEL_42;
    }

    v33 = 0;
LABEL_35:

    v4 = v41;
    v2 = v42;
    v9 = v39;
    v5 = v40;
    if (!v33)
    {
      continue;
    }

    break;
  }

  return 0;
}

uint64_t ARView.compareReferenceObjectNamesByGroup(referenceObjectNamesByGroup:)(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v4 = v1 + OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents;
  swift_beginAccess();
  if (v3 != *(*(v4 + 24) + 16))
  {
    return 0;
  }

  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v29 = v2;
  while (v8)
  {
LABEL_10:
    v12 = __clz(__rbit64(v8)) | (v10 << 6);
    v13 = (*(v2 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v2 + 56) + 8 * v12);
    swift_beginAccess();
    v17 = *(*(v4 + 24) + 16);

    if (!v17 || (specialized __RawDictionaryStorage.find<A>(_:)(v15, v14), (v18 & 1) == 0) || (swift_endAccess(), swift_beginAccess(), v19 = *(v4 + 24), !*(v19 + 16)) || (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14), (v21 & 1) == 0))
    {
      swift_endAccess();
LABEL_21:

LABEL_22:

      return 0;
    }

    v22 = *(*(v19 + 56) + 8 * v20);
    swift_endAccess();
    if (*(v22 + 16) != *(v16 + 16))
    {
      goto LABEL_21;
    }

    swift_beginAccess();
    v23 = *(v4 + 24);
    if (!*(v23 + 16))
    {
      goto LABEL_25;
    }

    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
    if ((v25 & 1) == 0)
    {
      goto LABEL_25;
    }

    v8 &= v8 - 1;
    v26 = *(*(v23 + 56) + 8 * v24);
    swift_endAccess();

    v27 = specialized Sequence<>.elementsEqual<A>(_:)(v16, v26);

    v2 = v29;
    if ((v27 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return 1;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_25:
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t specialized Sequence<>.elementsEqual<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = *(result + 16);
  v5 = a2 + 32;
  for (i = (result + 40); ; i += 2)
  {
    if (v2 == v3)
    {
      if (!v4)
      {
        return 1;
      }

      v8 = 0;
      v9 = 0;
      v2 = v3;
      goto LABEL_11;
    }

    if (v2 >= v3)
    {
      break;
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_24;
    }

    v10 = (v5 + 16 * v2);
    v9 = *v10;
    v8 = v10[1];

    if (!v4)
    {
      if (v8)
      {
        goto LABEL_20;
      }

      return 1;
    }

    ++v2;
LABEL_11:
    v12 = *(i - 1);
    v11 = *i;

    if (!v8)
    {
      if (v11)
      {
LABEL_20:

        return 0;
      }

      return 1;
    }

    if (!v11)
    {
      goto LABEL_20;
    }

    if (v9 == v12 && v8 == v11)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    --v4;
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t ARView.findPhysicalWidthForImageAnchoredEntity(root:)()
{
  v0 = type metadata accessor for Entity.ChildCollection();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC15ChildCollectionV16IndexingIteratorVy__AEGMd);
  v37 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v33 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd);
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for __REAnchoringType();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - v16;
  Entity.__anchoringType.getter();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of ARConfigurationCreateResult?(v10, &_s10RealityKit17__REAnchoringTypeOSgMd);
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    (*(v12 + 16))(v15, v17, v11);
    if ((*(v12 + 88))(v15, v11) == *MEMORY[0x1E697A228])
    {
      (*(v12 + 96))(v15, v11);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMd);
      v20 = v35;
      v19 = v36;
      v21 = v33;
      (*(v35 + 32))(v33, &v15[*(v18 + 48)], v36);
      v22 = type metadata accessor for URL();
      (*(*(v22 - 8) + 8))(v15, v22);
      v23 = [objc_opt_self() meters];
      v24 = v34;
      Measurement<>.converted(to:)();

      Measurement.value.getter();
      v26 = v25;
      v27 = *(v20 + 8);
      v27(v24, v19);
      v27(v21, v19);
      (*(v12 + 8))(v17, v11);
      return v26;
    }

    v29 = *(v12 + 8);
    v29(v17, v11);
    v29(v15, v11);
  }

  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  Entity.ChildCollection.makeIterator()();
  while (1)
  {
    Entity.ChildCollection.IndexingIterator.next()();
    if (!v38)
    {
      break;
    }

    v28 = ARView.findPhysicalWidthForImageAnchoredEntity(root:)(v38);
    v31 = v30;

    if ((v31 & 1) == 0)
    {
      (*(v37 + 8))(v3, v1);
      return v28;
    }
  }

  (*(v37 + 8))(v3, v1);
  return 0;
}

uint64_t ARView.loadReferenceImages(_:)(uint64_t a1)
{
  v3 = &_s17RealityFoundation16ReferenceImageARVSgMd;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16ReferenceImageARVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v80 - v5;
  v7 = type metadata accessor for ReferenceImageAR();
  MEMORY[0x1EEE9AC00](v7);
  v94 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 64);
  v101 = MEMORY[0x1E69E7CD0];
  v11 = 1 << *(a1 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v87 = v12 & v10;
  v85 = v1 + OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents;
  v13 = (v11 + 63) >> 6;
  v95 = (v8 + 48);
  v89 = (v8 + 8);
  v90 = (v8 + 32);
  v84 = a1;
  v14 = a1 + 64;

  v15 = 0;
  v83 = 0;
  v88 = v6;
  v91 = v7;
  v81 = v14;
  v82 = v13;
LABEL_5:
  v16 = v87;
  if (v87)
  {
    v17 = v3;
    v18 = v15;
    goto LABEL_11;
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v13)
    {

      return v101;
    }

    v16 = *(v14 + 8 * v18);
    ++v15;
    if (v16)
    {
      v17 = v3;
LABEL_11:
      v87 = (v16 - 1) & v16;
      v19 = __clz(__rbit64(v16)) | (v18 << 6);
      v20 = (*(v84 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = *(*(v84 + 56) + 8 * v19);
      type metadata accessor for __ARReferenceProvider();
      type metadata accessor for __ServiceLocator();

      static __ServiceLocator.shared.getter();
      dispatch thunk of __ServiceLocator.assetService.getter();

      v24 = static __ARReferenceProvider.instance(for:)();
      __swift_destroy_boxed_opaque_existential_1(v100);
      v98 = v21;
      v93 = v24;
      v25 = dispatch thunk of __ARReferenceProvider.supportsGroup(named:)();
      v92 = v22;
      if (v25)
      {
        v3 = v17;
        v97 = *(v23 + 16);
        if (v97)
        {
          v26 = 0;
          v86 = v23;
          v96 = v23 + 32;
          while (1)
          {

            dispatch thunk of __ARReferenceProvider.fetchReferenceImage(group:name:physicalWidth:)();

            if ((*v95)(v6, 1, v7) == 1)
            {
              outlined destroy of ARConfigurationCreateResult?(v6, v3);
            }

            else
            {
              (*v90)(v94, v6, v7);
              v27 = ReferenceImageAR.image.getter();
              v28 = v27;
              v29 = v101;
              if ((v101 & 0xC000000000000001) == 0)
              {
                type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARReferenceImage);
                v33 = NSObject._rawHashValue(seed:)(*(v29 + 40));
                v34 = -1 << *(v29 + 32);
                v35 = v33 & ~v34;
                if ((*(v29 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
                {
                  v36 = ~v34;
                  while (1)
                  {
                    v37 = *(*(v29 + 48) + 8 * v35);
                    v38 = static NSObject.== infix(_:_:)();

                    if (v38)
                    {
                      break;
                    }

                    v35 = (v35 + 1) & v36;
                    if (((*(v29 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
                    {
                      v29 = v101;
                      v3 = &_s17RealityFoundation16ReferenceImageARVSgMd;
                      v6 = v88;
                      goto LABEL_33;
                    }
                  }

                  v7 = v91;
                  (*v89)(v94, v91);
                  v3 = &_s17RealityFoundation16ReferenceImageARVSgMd;
                  v6 = v88;
                  goto LABEL_15;
                }

LABEL_33:
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v100[0] = v29;
                specialized _NativeSet.insertNew(_:at:isUnique:)(v28, v35, isUniquelyReferenced_nonNull_native);
                v101 = v100[0];
                goto LABEL_34;
              }

              if (v101 < 0)
              {
                v30 = v101;
              }

              else
              {
                v30 = v101 & 0xFFFFFFFFFFFFFF8;
              }

              v31 = v27;

              v32 = __CocoaSet.member(for:)();

              if (v32)
              {

                v99 = v32;
                type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARReferenceImage);
                swift_dynamicCast();

LABEL_34:
                v7 = v91;
                (*v89)(v94, v91);
                goto LABEL_15;
              }

              v39 = __CocoaSet.count.getter();
              if (__OFADD__(v39, 1))
              {
                goto LABEL_68;
              }

              v40 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo16ARReferenceImageC_Tt1g5(v30, v39 + 1);
              v100[0] = v40;
              v41 = v40[2];
              if (v40[3] <= v41)
              {
                specialized _NativeSet.resize(capacity:)(v41 + 1);
                v40 = v100[0];
              }

              v42 = v40[5];
              v43 = v31;
              v44 = NSObject._rawHashValue(seed:)(v42);
              v45 = (v40 + 7);
              v46 = -1 << *(v40 + 32);
              v47 = v44 & ~v46;
              v48 = v47 >> 6;
              v7 = v91;
              if (((-1 << v47) & ~v40[(v47 >> 6) + 7]) == 0)
              {
                v51 = 0;
                v52 = (63 - v46) >> 6;
                v6 = v88;
                while (++v48 != v52 || (v51 & 1) == 0)
                {
                  v53 = v48 == v52;
                  if (v48 == v52)
                  {
                    v48 = 0;
                  }

                  v51 |= v53;
                  v54 = *&v45[8 * v48];
                  if (v54 != -1)
                  {
                    v49 = __clz(__rbit64(~v54)) + (v48 << 6);
                    goto LABEL_44;
                  }
                }

                goto LABEL_67;
              }

              v49 = __clz(__rbit64((-1 << v47) & ~v40[(v47 >> 6) + 7])) | v47 & 0x7FFFFFFFFFFFFFC0;
              v6 = v88;
LABEL_44:
              *&v45[(v49 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v49;
              *(v40[6] + 8 * v49) = v43;
              ++v40[2];

              v101 = v40;
              (*v89)(v94, v7);
            }

LABEL_15:
            if (++v26 == v97)
            {

              goto LABEL_63;
            }
          }
        }

        v15 = v18;
      }

      else
      {
        v86 = v23;
        v55 = v85;
        swift_beginAccess();
        v3 = v17;
        if (!*(*(v55 + 32) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v98, v22), (v56 & 1) == 0))
        {
          swift_endAccess();
          v57 = objc_opt_self();
          v58 = MEMORY[0x1E12F3F80](v98, v22);
          v59 = [v57 referenceImagesInGroupNamed:v58 bundle:0];

          if (v59)
          {
            type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARReferenceImage);
            lazy protocol witness table accessor for type ARReferenceImage and conformance NSObject(&lazy protocol witness table cache variable for type ARReferenceImage and conformance NSObject, &lazy cache variable for type metadata for ARReferenceImage);
            v60 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            v60 = MEMORY[0x1E69E7CD0];
          }

          v61 = v85;
          swift_beginAccess();

          v62 = swift_isUniquelyReferenced_nonNull_native();
          v99 = *(v61 + 32);
          *(v61 + 32) = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v60, v98, v22, v62);

          *(v61 + 32) = v99;
        }

        swift_endAccess();
        v63 = v86;
        v64 = *(v86 + 16);
        if (v64)
        {
          v100[0] = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64, 0);
          v65 = v100[0];
          v66 = (v63 + 40);
          do
          {
            v68 = *(v66 - 1);
            v67 = *v66;
            v100[0] = v65;
            v70 = v65[2];
            v69 = v65[3];

            if (v70 >= v69 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1);
              v65 = v100[0];
            }

            v65[2] = v70 + 1;
            v71 = &v65[2 * v70];
            v71[4] = v68;
            v71[5] = v67;
            v66 += 3;
            --v64;
          }

          while (v64);
          v6 = v88;
          v7 = v91;
        }

        else
        {
          v65 = MEMORY[0x1E69E7CC0];
        }

        v72 = v85;
        swift_beginAccess();
        v73 = *(v72 + 32);
        if (!*(v73 + 16))
        {
          goto LABEL_69;
        }

        v74 = specialized __RawDictionaryStorage.find<A>(_:)(v98, v92);
        if ((v75 & 1) == 0)
        {
          goto LABEL_69;
        }

        v76 = *(*(v73 + 56) + 8 * v74);
        swift_endAccess();

        v77 = v83;
        v78 = specialized Set._Variant.filter(_:)(v76, v65);
        v83 = v77;

        specialized Set.formUnion<A>(_:)(v78, &lazy cache variable for type metadata for ARReferenceImage, 0x1E69864C0, &lazy protocol witness table cache variable for type ARReferenceImage and conformance NSObject, specialized Set._Variant.insert(_:));

LABEL_63:
        v15 = v18;
        v14 = v81;
      }

      v13 = v82;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t ARView.loadReferenceObjects(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17ReferenceObjectARVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v71 - v4;
  v6 = type metadata accessor for ReferenceObjectAR();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + 64;
  v10 = *(a1 + 64);
  v92 = MEMORY[0x1E69E7CD0];
  v12 = 1 << *(a1 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v78 = v13 & v10;
  v72 = v1 + OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents;
  v14 = (v12 + 63) >> 6;
  v15 = (v7 + 48);
  v85 = (v7 + 32);
  v81 = (v7 + 8);
  v76 = a1;
  v16 = v5;
  v17 = v11;

  v18 = 0;
  v75 = 0;
  v79 = v16;
  v73 = v17;
  v74 = v14;
  v83 = v9;
  v84 = v6;
  v82 = v15;
  for (i = v78; v78; i = v78)
  {
    v20 = v18;
LABEL_9:
    v78 = (i - 1) & i;
    v21 = __clz(__rbit64(i)) | (v20 << 6);
    v22 = (*(v76 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(*(v76 + 56) + 8 * v21);
    v89 = type metadata accessor for __ARReferenceProvider();
    type metadata accessor for __ServiceLocator();

    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.assetService.getter();

    v26 = static __ARReferenceProvider.instance(for:)();
    __swift_destroy_boxed_opaque_existential_1(v91);
    v88 = v26;
    v89 = v23;
    v80 = v24;
    if (dispatch thunk of __ARReferenceProvider.supportsGroup(named:)())
    {
      v87 = *(v25 + 16);
      if (v87)
      {
        v27 = 0;
        v77 = v25;
        v86 = v25 + 32;
        while (1)
        {

          dispatch thunk of __ARReferenceProvider.fetchReferenceObject(group:name:)();

          if ((*v15)(v16, 1, v6) == 1)
          {
            outlined destroy of ARConfigurationCreateResult?(v16, &_s17RealityFoundation17ReferenceObjectARVSgMd);
          }

          else
          {
            (*v85)(v9, v16, v6);
            v28 = ReferenceImageAR.image.getter();
            v29 = v28;
            v30 = v92;
            if ((v92 & 0xC000000000000001) != 0)
            {
              if (v92 < 0)
              {
                v31 = v92;
              }

              else
              {
                v31 = v92 & 0xFFFFFFFFFFFFFF8;
              }

              v32 = v28;

              v33 = __CocoaSet.member(for:)();

              if (v33)
              {

                v90 = v33;
                type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARReferenceObject);
                swift_dynamicCast();
              }

              else
              {
                v40 = __CocoaSet.count.getter();
                if (__OFADD__(v40, 1))
                {
                  goto LABEL_60;
                }

                v41 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo17ARReferenceObjectC_Tt1g5(v31, v40 + 1);
                v91[0] = v41;
                v42 = v41[2];
                if (v41[3] <= v42)
                {
                  specialized _NativeSet.resize(capacity:)(v42 + 1);
                  v41 = v91[0];
                }

                v43 = v41[5];
                v44 = v32;
                v45 = NSObject._rawHashValue(seed:)(v43);
                v46 = (v41 + 7);
                v47 = -1 << *(v41 + 32);
                v48 = v45 & ~v47;
                v49 = v48 >> 6;
                if (((-1 << v48) & ~v41[(v48 >> 6) + 7]) == 0)
                {
                  v52 = 0;
                  v53 = (63 - v47) >> 6;
                  v16 = v79;
                  while (++v49 != v53 || (v52 & 1) == 0)
                  {
                    v54 = v49 == v53;
                    if (v49 == v53)
                    {
                      v49 = 0;
                    }

                    v52 |= v54;
                    v55 = *&v46[8 * v49];
                    if (v55 != -1)
                    {
                      v50 = __clz(__rbit64(~v55)) + (v49 << 6);
                      goto LABEL_41;
                    }
                  }

                  goto LABEL_59;
                }

                v50 = __clz(__rbit64((-1 << v48) & ~v41[(v48 >> 6) + 7])) | v48 & 0x7FFFFFFFFFFFFFC0;
                v16 = v79;
LABEL_41:
                *&v46[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
                *(v41[6] + 8 * v50) = v44;
                ++v41[2];

                v92 = v41;
              }
            }

            else
            {
              type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARReferenceObject);
              v34 = NSObject._rawHashValue(seed:)(*(v30 + 40));
              v35 = -1 << *(v30 + 32);
              v36 = v34 & ~v35;
              if ((*(v30 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
              {
                v37 = ~v35;
                while (1)
                {
                  v38 = *(*(v30 + 48) + 8 * v36);
                  v39 = static NSObject.== infix(_:_:)();

                  if (v39)
                  {
                    break;
                  }

                  v36 = (v36 + 1) & v37;
                  if (((*(v30 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
                  {
                    v30 = v92;
                    v16 = v79;
                    goto LABEL_31;
                  }
                }

                v9 = v83;
                v6 = v84;
                (*v81)(v83, v84);
                v16 = v79;
                v15 = v82;
                goto LABEL_13;
              }

LABEL_31:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v91[0] = v30;
              specialized _NativeSet.insertNew(_:at:isUnique:)(v29, v36, isUniquelyReferenced_nonNull_native);
              v92 = v91[0];
            }

            v9 = v83;
            v6 = v84;
            (*v81)(v83, v84);
            v15 = v82;
          }

LABEL_13:
          if (++v27 == v87)
          {

            v18 = v20;
            goto LABEL_54;
          }
        }
      }

      v18 = v20;
    }

    else
    {
      v77 = v25;
      v56 = v72;
      swift_beginAccess();
      v57 = v80;
      if (!*(*(v56 + 40) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v89, v80), (v58 & 1) == 0))
      {
        swift_endAccess();
        v59 = objc_opt_self();
        v60 = MEMORY[0x1E12F3F80](v89, v57);
        v61 = [v59 referenceObjectsInGroupNamed:v60 bundle:0];

        if (v61)
        {
          type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARReferenceObject);
          v57 = v80;
          lazy protocol witness table accessor for type ARReferenceImage and conformance NSObject(&lazy protocol witness table cache variable for type ARReferenceObject and conformance NSObject, &lazy cache variable for type metadata for ARReferenceObject);
          v62 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v62 = MEMORY[0x1E69E7CD0];
        }

        swift_beginAccess();

        v63 = swift_isUniquelyReferenced_nonNull_native();
        v90 = *(v56 + 40);
        *(v56 + 40) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v62, v89, v57, v63);

        *(v56 + 40) = v90;
      }

      swift_endAccess();
      swift_beginAccess();
      v64 = *(v56 + 40);
      if (!*(v64 + 16))
      {
        goto LABEL_61;
      }

      v65 = specialized __RawDictionaryStorage.find<A>(_:)(v89, v57);
      if ((v66 & 1) == 0)
      {
        goto LABEL_61;
      }

      v67 = *(*(v64 + 56) + 8 * v65);
      swift_endAccess();

      v68 = v75;
      v69 = specialized Set._Variant.filter(_:)(v67, v77);
      v75 = v68;

      specialized Set.formUnion<A>(_:)(v69, &lazy cache variable for type metadata for ARReferenceObject, 0x1E69864C8, &lazy protocol witness table cache variable for type ARReferenceObject and conformance NSObject, specialized Set._Variant.insert(_:));

      v18 = v20;
      v16 = v79;
LABEL_54:
      v17 = v73;
    }

    v14 = v74;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v14)
    {

      return v92;
    }

    i = *(v17 + 8 * v20);
    ++v18;
    if (i)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  result = swift_endAccess();
  __break(1u);
  return result;
}

void specialized Set.formUnion<A>(_:)(unint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4, void (*a5)(id *))
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for ARReferenceObject(0, a2);
    lazy protocol witness table accessor for type ARReferenceImage and conformance NSObject(a4, a2);
    Set.Iterator.init(_cocoa:)();
    v6 = v22[1];
    v9 = v22[2];
    v10 = v22[3];
    v11 = v22[4];
    v12 = v22[5];
  }

  else
  {
    v11 = 0;
    v13 = -1 << *(a1 + 32);
    v9 = (a1 + 56);
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = (v15 & *(a1 + 56));
  }

  v16 = (v10 + 64) >> 6;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v17 = v11;
    v18 = v12;
    v19 = v11;
    if (!v12)
    {
      break;
    }

LABEL_12:
    v20 = (v18 - 1) & v18;
    if (!*(*(v6 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18))))))
    {
LABEL_18:
      outlined consume of Set<UITouch>.Iterator._Variant();
      return;
    }

    while (1)
    {
      a5(v22);

      v11 = v19;
      v12 = v20;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for ARReferenceObject(0, a2);
        swift_dynamicCast();
        v19 = v11;
        v20 = v12;
        if (v22[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v19 = (v17 + 1);
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_18;
    }

    v18 = v9[v19];
    ++v17;
    if (v18)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC10RealityKit6EntityC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10RealityKit6EntityCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for Entity();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          specialized _NativeSet.resize(capacity:)();
        }

        v2 = v14;
        lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x1E697A3A8]);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo16ARReferenceImageC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16ARReferenceImageCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARReferenceImage);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo17ARReferenceObjectC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo17ARReferenceObjectCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARReferenceObject);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Entity();
  lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x1E697A3A8]);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

char *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo16ARReferenceImageCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So16iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n084_s10RealityKit6ARViewC19loadReferenceImages33_13C3C1EE7E90C9B899AEA8AAB2DF1D7ALLyShyqiJ50CGSDySSSaySS_12CoreGraphics7CGFloatVtGGFSbAGXEfU0_SaySSGTf1nnc_nTm(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = specialized closure #1 in _NativeSet.filter(_:)(v11, a2, a3, a4, a5, a6);
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v13 = *v3;
  lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = a1;
  v6 = type metadata accessor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v13 = *v3;
  lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x1E697A660]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x1E697A660]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  type metadata accessor for Entity();
  lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x1E697A3A8]);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x1E697A3A8]);
    do
    {
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARReferenceImage);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARReferenceObject);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySS_12CoreGraphics7CGFloatVtGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_10RealityKit6EntityCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v24[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    v12 = static _DictionaryStorage.allocate(capacity:)();
    v13 = *(v7 + 48);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);

    while (1)
    {
      outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v14, v10, a2);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v10);
      if (v17)
      {
        break;
      }

      v18 = result;
      *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = v12[6];
      v20 = type metadata accessor for UUID();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v18, v10, v20);
      *(v12[7] + 8 * v18) = *&v10[v13];
      v21 = v12[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v12[2] = v23;
      v14 += v15;
      if (!--v11)
      {

        return v12;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit10RKARSystemC18HitTestScreenPoint33_7C42569567E429B6AB2725E2C535D529LLV_AC013CollisionCastF0VSgTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit10RKARSystemC18HitTestScreenPoint33_7C42569567E429B6AB2725E2C535D529LLV_AA013CollisionCastD0VSgtMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit10RKARSystemC18HitTestScreenPoint33_7C42569567E429B6AB2725E2C535D529LLVAC013CollisionCastF0VSgGMd);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v9, v5, &_s10RealityKit10RKARSystemC18HitTestScreenPoint33_7C42569567E429B6AB2725E2C535D529LLV_AA013CollisionCastD0VSgtMd);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
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
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd);
      result = outlined init with take of CollisionCastHit?(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
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

double specialized ARView.ARSessionComponents.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySS_12CoreGraphics7CGFloatVtGTt0g5Tf4g_nTm(MEMORY[0x1E69E7CC0], &_ss18_DictionaryStorageCySSSaySS_12CoreGraphics7CGFloatVtGGMd);
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySS_12CoreGraphics7CGFloatVtGTt0g5Tf4g_nTm(v2, &_ss18_DictionaryStorageCySSSaySSGGMd);
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySS_12CoreGraphics7CGFloatVtGTt0g5Tf4g_nTm(v2, &_ss18_DictionaryStorageCySSShySo16ARReferenceImageCGGMd);
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySS_12CoreGraphics7CGFloatVtGTt0g5Tf4g_nTm(v2, &_ss18_DictionaryStorageCySSShySo17ARReferenceObjectCGGMd);
  *a1 = 0x10000;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return result;
}

Swift::Int specialized Set._Variant.filter(_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return specialized _NativeSet.filter(_:)(a1, a2, specialized _NativeSet.extractSubset(using:count:), closure #1 in Sequence<>.contains(_:)specialized partial apply, specialized _NativeSet.extractSubset(using:count:), closure #1 in Sequence<>.contains(_:)specialized partial apply);
  }

  v3 = MEMORY[0x1E69E7CD0];
  v27 = MEMORY[0x1E69E7CD0];

  __CocoaSet.makeIterator()();
  v4 = __CocoaSet.Iterator.next()();
  if (!v4)
  {
LABEL_21:

    return v3;
  }

  v5 = v4;
  type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARReferenceImage);
  v6 = v5;
  while (1)
  {
    v25[0] = v6;
    swift_dynamicCast();
    result = [v26 name];
    if (!result)
    {
      break;
    }

    v8 = result;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v25[0] = v9;
    v25[1] = v11;
    MEMORY[0x1EEE9AC00](v12);
    v24[2] = v25;
    LOBYTE(v8) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v24, a2);

    v13 = v26;
    if (v8)
    {
      v14 = *(v3 + 16);
      if (*(v3 + 24) <= v14)
      {
        specialized _NativeSet.resize(capacity:)(v14 + 1);
      }

      v3 = v27;
      result = NSObject._rawHashValue(seed:)(*(v27 + 40));
      v15 = v3 + 56;
      v16 = -1 << *(v3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v3 + 56 + 8 * (v17 >> 6))) != 0)
      {
        v19 = __clz(__rbit64((-1 << v17) & ~*(v3 + 56 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = 0;
        v21 = (63 - v16) >> 6;
        do
        {
          if (++v18 == v21 && (v20 & 1) != 0)
          {
            __break(1u);
            goto LABEL_24;
          }

          v22 = v18 == v21;
          if (v18 == v21)
          {
            v18 = 0;
          }

          v20 |= v22;
          v23 = *(v15 + 8 * v18);
        }

        while (v23 == -1);
        v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      }

      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v3 + 48) + 8 * v19) = v13;
      ++*(v3 + 16);
    }

    else
    {
    }

    v6 = __CocoaSet.Iterator.next()();
    if (!v6)
    {
      goto LABEL_21;
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return specialized _NativeSet.filter(_:)(a1, a2, specialized _NativeSet.extractSubset(using:count:), closure #1 in Sequence<>.contains(_:)specialized partial apply, specialized _NativeSet.extractSubset(using:count:), closure #1 in Sequence<>.contains(_:)specialized partial apply);
  }

  v3 = MEMORY[0x1E69E7CD0];
  v27 = MEMORY[0x1E69E7CD0];

  __CocoaSet.makeIterator()();
  v4 = __CocoaSet.Iterator.next()();
  if (!v4)
  {
LABEL_21:

    return v3;
  }

  v5 = v4;
  type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARReferenceObject);
  v6 = v5;
  while (1)
  {
    v25[0] = v6;
    swift_dynamicCast();
    result = [v26 name];
    if (!result)
    {
      break;
    }

    v8 = result;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v25[0] = v9;
    v25[1] = v11;
    MEMORY[0x1EEE9AC00](v12);
    v24[2] = v25;
    LOBYTE(v8) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v24, a2);

    v13 = v26;
    if (v8)
    {
      v14 = *(v3 + 16);
      if (*(v3 + 24) <= v14)
      {
        specialized _NativeSet.resize(capacity:)(v14 + 1);
      }

      v3 = v27;
      result = NSObject._rawHashValue(seed:)(*(v27 + 40));
      v15 = v3 + 56;
      v16 = -1 << *(v3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v3 + 56 + 8 * (v17 >> 6))) != 0)
      {
        v19 = __clz(__rbit64((-1 << v17) & ~*(v3 + 56 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = 0;
        v21 = (63 - v16) >> 6;
        do
        {
          if (++v18 == v21 && (v20 & 1) != 0)
          {
            __break(1u);
            goto LABEL_24;
          }

          v22 = v18 == v21;
          if (v18 == v21)
          {
            v18 = 0;
          }

          v20 |= v22;
          v23 = *(v15 + 8 * v18);
        }

        while (v23 == -1);
        v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      }

      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v3 + 48) + 8 * v19) = v13;
      ++*(v3 + 16);
    }

    else
    {
    }

    v6 = __CocoaSet.Iterator.next()();
    if (!v6)
    {
      goto LABEL_21;
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

char *specialized closure #1 in _NativeSet.filter(_:)(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void *))
{
  v31 = a4;
  v32 = a6;
  v26 = a2;
  v27 = a5;
  v28 = result;
  v29 = 0;
  v6 = 0;
  v33 = a3;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (1)
  {
    if (!v10)
    {
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v11)
        {
          goto LABEL_16;
        }

        v14 = *(v7 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v35 = (v14 - 1) & v14;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
      return result;
    }

    v12 = __clz(__rbit64(v10));
    v35 = (v10 - 1) & v10;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(v33 + 48);
    v30 = v15;
    v17 = *(v16 + 8 * v15);
    result = [v17 name];
    if (!result)
    {
      goto LABEL_18;
    }

    v18 = result;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v34[0] = v19;
    v34[1] = v21;
    MEMORY[0x1EEE9AC00](v22);
    v25[2] = v34;
    LOBYTE(v18) = specialized Sequence.contains(where:)(v32, v25, v31);

    v10 = v35;
    if (v18)
    {
      *&v28[(v30 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v30;
      if (__OFADD__(v29++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_16:
  v24 = v33;

  return v27(v28, v26, v29, v24);
}

char *specialized _NativeSet.filter(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, int64_t, uint64_t, uint64_t), uint64_t (*a4)(void *), uint64_t (*a5)(char *, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v42 = a4;
  v9 = a1;
  v46[2] = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = (8 * v12);
  v44 = a2;

  if (v11 > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v37 = v12;
    v38 = a3;
    v36[1] = v36;
    MEMORY[0x1EEE9AC00](v14);
    v39 = v36 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v39, v13);
    v40 = 0;
    a6 = 0;
    v43 = v9;
    v16 = *(v9 + 56);
    v9 += 56;
    v15 = v16;
    v17 = 1 << *(v9 - 24);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v15;
    v12 = (v17 + 63) >> 6;
    while (v19)
    {
      v20 = __clz(__rbit64(v19));
      v45 = (v19 - 1) & v19;
LABEL_12:
      v23 = v20 | (a6 << 6);
      v24 = *(v43 + 48);
      v41 = v23;
      v13 = *(v24 + 8 * v23);
      v25 = [v13 name];
      if (!v25)
      {
        __break(1u);
      }

      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a5 = v28;

      a3 = v36;
      v46[0] = v27;
      v46[1] = a5;
      MEMORY[0x1EEE9AC00](v29);
      v36[-2] = v46;
      LOBYTE(v26) = specialized Sequence.contains(where:)(v42, &v36[-4], v44);

      v19 = v45;
      if (v26)
      {
        *&v39[(v41 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v41;
        if (__OFADD__(v40++, 1))
        {
          __break(1u);
LABEL_17:
          v31 = v38(v39, v37, v40, v43);
          goto LABEL_18;
        }
      }
    }

    v21 = a6;
    while (1)
    {
      a6 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (a6 >= v12)
      {
        goto LABEL_17;
      }

      v22 = *(v9 + 8 * a6);
      v21 = (v21 + 1);
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v45 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();
  v34 = v12;
  v35 = v44;

  v31 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo16ARReferenceImageCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So16iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n084_s10RealityKit6ARViewC19loadReferenceImages33_13C3C1EE7E90C9B899AEA8AAB2DF1D7ALLyShyqiJ50CGSDySSSaySS_12CoreGraphics7CGFloatVtGGFSbAGXEfU0_SaySSGTf1nnc_nTm(v33, v34, v9, v35, a5, a6);

  MEMORY[0x1E12F6150](v33, -1, -1);
LABEL_18:

  return v31;
}

uint64_t outlined init with take of CollisionCastHit?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static ParticleEmitterComponent.Presets.rain.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24ParticleEmitterComponentV0cD0VSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v90 = &v77 - v1;
  v87 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.SortOrder();
  v100 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.OpacityCurve();
  v99 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v85 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.BlendMode();
  v97 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v91 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.BillboardMode();
  v98 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for ParticleEmitterComponent.SpawnOccasion();
  v83 = *(v84 - 1);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for ParticleEmitterComponent.SimulationSpace();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for ParticleEmitterComponent.EmitterShape();
  v8 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ParticleEmitterComponent.BirthLocation();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ParticleEmitterComponent.BirthDirection();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  ParticleEmitterComponent.init()();
  ParticleEmitterComponent.ParticleEmitter.init()();
  (*(v16 + 104))(v18, *MEMORY[0x1E697A7E0], v15);
  ParticleEmitterComponent.birthDirection.setter();
  (*(v12 + 104))(v14, *MEMORY[0x1E697A7B8], v11);
  ParticleEmitterComponent.birthLocation.setter();
  v93 = xmmword_1E1252ED0;
  ParticleEmitterComponent.emissionDirection.setter();
  ParticleEmitterComponent.emissionDuration.setter();
  ParticleEmitterComponent.emissionDurationVariation.setter();
  (*(v8 + 104))(v10, *MEMORY[0x1E697A738], v78);
  ParticleEmitterComponent.emitterShape.setter();
  ParticleEmitterComponent.emitterShapeSize.setter();
  ParticleEmitterComponent.idleDuration.setter();
  ParticleEmitterComponent.idleDurationVariation.setter();
  ParticleEmitterComponent.shouldLoop.setter();
  ParticleEmitterComponent.particlesInheritTransform.setter();
  (*(v80 + 13))(v79, *MEMORY[0x1E697A7F0], v81);
  ParticleEmitterComponent.fieldSimulationSpace.setter();
  ParticleEmitterComponent.spawnInheritsParentColor.setter();
  (*(v83 + 104))(v82, *MEMORY[0x1E697A7C8], v84);
  ParticleEmitterComponent.spawnOccasion.setter();
  ParticleEmitterComponent.spawnSpreadFactor.setter();
  ParticleEmitterComponent.spawnSpreadFactorVariation.setter();
  ParticleEmitterComponent.spawnVelocityFactor.setter();
  ParticleEmitterComponent.speed.setter();
  ParticleEmitterComponent.speedVariation.setter();
  ParticleEmitterComponent.warmupDuration.setter();
  ParticleEmitterComponent.resetSimulation()();
  v21 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.acceleration.setter();
  v21(v101, 0);
  v22 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angle.setter();
  v22(v101, 0);
  v23 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angleVariation.setter();
  v23(v101, 0);
  v24 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angularSpeed.setter();
  v24(v101, 0);
  v25 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angularSpeedVariation.setter();
  v25(v101, 0);
  v26 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.attractionCenter.setter();
  v26(v101, 0);
  v27 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.attractionStrength.setter();
  v27(v101, 0);
  LODWORD(v83) = *MEMORY[0x1E697A770];
  v28 = *(v98 + 104);
  v98 += 104;
  v84 = v28;
  v28(v92);
  v29 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.billboardMode.setter();
  v29(v101, 0);
  v30 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.birthRate.setter();
  v30(v101, 0);
  v31 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.birthRateVariation.setter();
  v31(v101, 0);
  LODWORD(v81) = *MEMORY[0x1E697A798];
  v32 = *(v97 + 104);
  v97 += 104;
  v82 = v32;
  (v32)(v91);
  v33 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.blendMode.setter();
  v33(v101, 0);
  v34 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.bounce.setter();
  v34(v101, 0);
  v35 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.areCollisionsEnabled.setter();
  v35(v101, 0);
  v36 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.colorEvolutionPower.setter();
  v36(v101, 0);
  v37 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.dampingFactor.setter();
  v37(v101, 0);
  v38 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.friction.setter();
  v38(v101, 0);
  v39 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.isLightingEnabled.setter();
  v39(v101, 0);
  v40 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.lifeSpan.setter();
  v40(v101, 0);
  v41 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.lifeSpanVariation.setter();
  v41(v101, 0);
  v42 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.mass.setter();
  v42(v101, 0);
  v43 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.massVariation.setter();
  v43(v101, 0);
  v44 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.noiseAnimationSpeed.setter();
  v44(v101, 0);
  v45 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.noiseScale.setter();
  v45(v101, 0);
  v46 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.noiseStrength.setter();
  v46(v101, 0);
  LODWORD(v79) = *MEMORY[0x1E697A768];
  v47 = *(v99 + 104);
  v99 += 104;
  v80 = v47;
  v48 = v85;
  v47(v85);
  v49 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.opacityCurve.setter();
  v49(v101, 0);
  v50 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.size.setter();
  v50(v101, 0);
  v51 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sizeVariation.setter();
  v51(v101, 0);
  v52 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sizeMultiplierAtEndOfLifespan.setter();
  v52(v101, 0);
  v53 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sizeMultiplierAtEndOfLifespanPower.setter();
  v53(v101, 0);
  v54 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.spreadingAngle.setter();
  v54(v101, 0);
  v55 = *MEMORY[0x1E697A7B0];
  v56 = *(v100 + 104);
  v100 += 104;
  v57 = v86;
  v58 = v87;
  v56(v86, v55, v87);
  v59 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sortOrder.setter();
  v59(v101, 0);
  v60 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.stretchFactor.setter();
  v60(v101, 0);
  v61 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.vortexDirection.setter();
  v61(v101, 0);
  v62 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.vortexStrength.setter();
  v62(v101, 0);
  CGColorCreateGenericRGB(228.0, 245.0, 255.0, 0.19);
  v63 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.startColorA.setter();
  v63(v101, 0);
  CGColorCreateGenericRGB(245.0, 250.0, 255.0, 0.14);
  v64 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.startColorB.setter();
  v64(v101, 0);
  v65 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.useStartColorRange.setter();
  v65(v101, 0);
  v66 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.useEndColor.setter();
  v66(v101, 0);
  v67 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.useEndColorRange.setter();
  v67(v101, 0);
  ParticleEmitterComponent.ParticleEmitter.acceleration.setter();
  ParticleEmitterComponent.ParticleEmitter.angle.setter();
  ParticleEmitterComponent.ParticleEmitter.angleVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.angularSpeed.setter();
  ParticleEmitterComponent.ParticleEmitter.angularSpeedVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.attractionCenter.setter();
  ParticleEmitterComponent.ParticleEmitter.attractionStrength.setter();
  (v84)(v92, v83, v94);
  ParticleEmitterComponent.ParticleEmitter.billboardMode.setter();
  ParticleEmitterComponent.ParticleEmitter.birthRate.setter();
  ParticleEmitterComponent.ParticleEmitter.birthRateVariation.setter();
  (v82)(v91, v81, v95);
  ParticleEmitterComponent.ParticleEmitter.blendMode.setter();
  ParticleEmitterComponent.ParticleEmitter.bounce.setter();
  ParticleEmitterComponent.ParticleEmitter.areCollisionsEnabled.setter();
  ParticleEmitterComponent.ParticleEmitter.colorEvolutionPower.setter();
  ParticleEmitterComponent.ParticleEmitter.dampingFactor.setter();
  ParticleEmitterComponent.ParticleEmitter.friction.setter();
  ParticleEmitterComponent.ParticleEmitter.isLightingEnabled.setter();
  ParticleEmitterComponent.ParticleEmitter.lifeSpan.setter();
  ParticleEmitterComponent.ParticleEmitter.lifeSpanVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.mass.setter();
  ParticleEmitterComponent.ParticleEmitter.massVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.noiseAnimationSpeed.setter();
  ParticleEmitterComponent.ParticleEmitter.noiseScale.setter();
  ParticleEmitterComponent.ParticleEmitter.noiseStrength.setter();
  (v80)(v48, v79, v96);
  ParticleEmitterComponent.ParticleEmitter.opacityCurve.setter();
  ParticleEmitterComponent.ParticleEmitter.size.setter();
  ParticleEmitterComponent.ParticleEmitter.sizeVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.sizeMultiplierAtEndOfLifespan.setter();
  ParticleEmitterComponent.ParticleEmitter.sizeMultiplierAtEndOfLifespanPower.setter();
  ParticleEmitterComponent.ParticleEmitter.spreadingAngle.setter();
  v56(v57, *MEMORY[0x1E697A7A0], v58);
  ParticleEmitterComponent.ParticleEmitter.sortOrder.setter();
  ParticleEmitterComponent.ParticleEmitter.stretchFactor.setter();
  ParticleEmitterComponent.ParticleEmitter.vortexDirection.setter();
  ParticleEmitterComponent.ParticleEmitter.vortexStrength.setter();
  CGColorCreateGenericRGB(240.0, 243.0, 236.0, 0.42);
  ParticleEmitterComponent.ParticleEmitter.startColorA.setter();
  CGColorCreateGenericRGB(97.0, 184.0, 26.0, 1.0);
  ParticleEmitterComponent.ParticleEmitter.startColorB.setter();
  ParticleEmitterComponent.ParticleEmitter.useStartColorRange.setter();
  ParticleEmitterComponent.ParticleEmitter.useEndColor.setter();
  ParticleEmitterComponent.ParticleEmitter.useEndColorRange.setter();
  type metadata accessor for TextureResource();
  v68 = MEMORY[0x1E12F3F80](0xD000000000000010, 0x80000001E1257190);
  v69 = [objc_opt_self() bundleWithIdentifier_];

  if (one-time initialization token for textureLoader != -1)
  {
    swift_once();
  }

  v70 = textureLoader;
  v101[3] = &type metadata for TextureLoader;
  v101[4] = lazy protocol witness table accessor for type TextureLoader and conformance TextureLoader();
  v101[0] = v70;
  v71 = v70;
  static TextureResource.load(named:in:textureLoader:)();

  __swift_destroy_boxed_opaque_existential_1(v101);
  v72 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.image.setter();
  v72(v101, 0);
  v73 = v88;
  v75 = v89;
  v74 = v90;
  (*(v88 + 16))(v90, v20, v89);
  (*(v73 + 56))(v74, 0, 1, v75);
  ParticleEmitterComponent.spawnedEmitter.setter();
  return (*(v73 + 8))(v20, v75);
}