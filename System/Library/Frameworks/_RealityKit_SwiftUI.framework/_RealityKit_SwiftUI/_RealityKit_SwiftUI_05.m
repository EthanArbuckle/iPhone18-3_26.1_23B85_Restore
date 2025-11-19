uint64_t CoveragePointRenderer.init()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo22UIInterfaceOrientationVGMd, &_s7Combine9PublishedVySo22UIInterfaceOrientationVGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v64 - v10;
  v12 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer__interfaceOrientation;
  v66 = 1;
  type metadata accessor for UIInterfaceOrientation(0);
  Published.init(initialValue:)();
  (*(v8 + 32))(&v1[v12], v11, v7);
  v13 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_id];
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v3 + 8))(v6, v2);
  *v13 = v14;
  v13[1] = v16;
  v17 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view] = 0;
  v18 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_coveragePointCloud;
  v19 = type metadata accessor for CoveragePointCloud();
  (*(*(v19 - 8) + 56))(&v1[v18], 1, 1, v19);
  v20 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewToWorld];
  v21 = *MEMORY[0x277D860B8];
  v22 = *(MEMORY[0x277D860B8] + 16);
  v23 = *(MEMORY[0x277D860B8] + 32);
  v24 = *(MEMORY[0x277D860B8] + 48);
  *v20 = *MEMORY[0x277D860B8];
  v20[1] = v22;
  v20[2] = v23;
  v20[3] = v24;
  v25 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_projection];
  *v25 = v21;
  v25[1] = v22;
  v25[2] = v23;
  v25[3] = v24;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_cameraTransformProvider] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_commandQueue] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_renderPipelineState] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer____lazy_storage___voxelRenderer] = 1;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer____lazy_storage___captureCircleRenderer] = 1;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_captureCircle] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_localTime] = 0;
  v26 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_inFlightQueue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI13InFlightQueueCyAA21CoveragePointRendererC13ResourceEntry33_5B9EEC18CAADE25D2C0394A3CF8442B0LLVGMd, &_s19_RealityKit_SwiftUI13InFlightQueueCyAA21CoveragePointRendererC13ResourceEntry33_5B9EEC18CAADE25D2C0394A3CF8442B0LLVGMR);
  v27 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = MEMORY[0x277D84F90];
  v27[2] = v28;
  v27[3] = 0;
  v27[4] = v29;
  *&v1[v26] = v27;
  v30 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_inFlightLock;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *&v1[v30] = v31;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_baseRenderer] = 0;
  v32 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_reticleDeltaVector;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CoveragePointRenderer.init());
  *&v1[v32] = v33;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_motionGoodness] = 1065353216;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_captureDialOpacityFloor] = 1036831949;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewportSize] = vdupq_n_s64(0x4059000000000000uLL);
  v34 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_backgroundColor];
  *v34 = 0u;
  v34[1] = 0u;
  v35 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_renderStyle;
  v1[v35] = specialized static ExperimentSettings.loadPointCloudRenderStyle(default:)(0) & 1;
  v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_shouldRenderPointsWithAlphaBlend] = 0;
  v36 = MTLCreateSystemDefaultDevice();
  if (!v36)
  {
    goto LABEL_15;
  }

  v37 = v36;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_device] = v36;
  v38 = objc_allocWithZone(MEMORY[0x277CD71F8]);
  swift_unknownObjectRetain();
  v39 = [v38 initWithFrame:v37 device:{0.0, 0.0, 0.0, 0.0}];
  v40 = *&v1[v17];
  *&v1[v17] = v39;

  v41 = type metadata accessor for CoveragePointRenderer(0);
  v65.receiver = v1;
  v65.super_class = v41;
  v42 = objc_msgSendSuper2(&v65, sel_init);
  CoveragePointRenderer.initRenderPipeline()();
  v43 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view;
  v44 = *&v42[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view];
  if (!v44)
  {
    __break(1u);
    goto LABEL_10;
  }

  [v44 setDelegate_];
  type metadata accessor for BaseRenderer();
  swift_allocObject();
  v45 = swift_unknownObjectRetain();
  specialized BaseRenderer.init(device:width:height:)(v45, 100, 100);
  v47 = v46;
  swift_unknownObjectRelease();
  v48 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_baseRenderer;
  v49 = *&v42[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_baseRenderer];
  *&v42[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_baseRenderer] = v47;

  if (!*&v42[v48])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v50 = [objc_allocWithZone(MEMORY[0x277CD6D60]) init];
  [v50 setDepthCompareFunction_];
  [v50 setDepthWriteEnabled_];
  v51 = [v37 newDepthStencilStateWithDescriptor_];

  v52 = *(v47 + 24);
  *(v47 + 24) = v51;

  swift_unknownObjectRelease();
  v53 = *&v42[v43];
  if (!v53)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v54 = [v53 layer];
  [v54 setOpaque_];

  v55 = *&v42[v43];
  if (!v55)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v56 = [v55 layer];
  GenericGray = CGColorCreateGenericGray(0.0, 0.0);
  [v56 setBackgroundColor_];

  CoveragePointRenderer.setupFeatherMask()();
  v58 = objc_allocWithZone(type metadata accessor for InteractiveCameraTransformManager());
  v59 = InteractiveCameraTransformManager.init(radius:springDelay:springTime:)(1.0, 1.0, 1.0);
  v60 = *&v42[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_cameraTransformProvider];
  *&v42[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_cameraTransformProvider] = v59;
  v61 = v59;

  v62 = *&v42[v43];
  if (v62)
  {
    if (*&v61[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_dragGesture])
    {
      [v62 addGestureRecognizer_];

      swift_unknownObjectRelease();
      return v42;
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void CoveragePointRenderer.setupFeatherMask()()
{
  v1 = v0;
  v2 = specialized static MetalHelpers.loadFeatherMaskLayer(named:)(0xD000000000000019, 0x800000023B925520);
  if (!v2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, logger);
    v17 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23B824000, v17, v15, "Can't load miniview feather mask: miniview_feather_mask.png", v16, 2u);
      MEMORY[0x23EEB0B70](v16, -1, -1);
    }

    goto LABEL_15;
  }

  v3 = v2;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, "Setting miniview feather mask layer...", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view;
  v9 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view);
  if (!v9)
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = [v9 layer];
  [v10 setMask_];

  v11 = *(v1 + v8);
  if (!v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = [v11 layer];
  v17 = [v12 mask];

  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = *(v1 + v8);
  if (!v13)
  {
LABEL_21:
    __break(1u);
    return;
  }

  [v13 bounds];
  [v17 setFrame:?];

LABEL_15:
}

Swift::Void __swiftcall CoveragePointRenderer.mtkView(_:drawableSizeWillChange:)(MTKView _, CGSize drawableSizeWillChange)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view);
  if (!v4)
  {
    goto LABEL_8;
  }

  height = drawableSizeWillChange.height;
  width = drawableSizeWillChange.width;
  type metadata accessor for MTKView();
  v8 = _.super.super.super.isa;
  v9 = v4;
  LOBYTE(_.super.super.super.isa) = static NSObject.== infix(_:_:)();

  if (_.super.super.super.isa)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136446210;
      type metadata accessor for CGSize(0);
      v15 = String.init<A>(describing:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v23);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_23B824000, v11, v12, "mtkView: size changed!  newSize=%{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x23EEB0B70](v14, -1, -1);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }

    v18 = (v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewportSize);
    *v18 = width;
    v18[1] = height;
    CoveragePointRenderer.setupFeatherMask()();
  }

  else
  {
LABEL_8:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, logger);
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23B824000, oslog, v20, "mtkView delegate got unexpected view... ignoring!", v21, 2u);
      MEMORY[0x23EEB0B70](v21, -1, -1);
    }
  }
}

void CoveragePointRenderer.update(time:arCameraTransform:coveragePointCloud:captureCircle:reticleDeltaVector:motionScore:)(uint64_t a1, uint64_t a2, double a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, double a7, float a8)
{
  v183 = a6;
  v184 = a5;
  v187 = a4;
  v175 = type metadata accessor for DispatchTime();
  v174 = *(v175 - 8);
  v14 = *(v174 + 64);
  MEMORY[0x28223BE20](v175);
  v172 = v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v173 = v171 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v171 - v21;
  outlined init with copy of CoveragePointCloud(a1, v171 - v21);
  v23 = type metadata accessor for CoveragePointCloud();
  (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
  v24 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_coveragePointCloud;
  swift_beginAccess();
  outlined assign with take of Cancellable?(v22, v8 + v24, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  swift_endAccess();
  v25 = *(v8 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_captureCircle);
  *(v8 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_captureCircle) = a2;

  *v176.i64 = a3;
  *(v8 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_localTime) = a3;
  *(v8 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_reticleDeltaVector) = a7;
  *(v8 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_motionGoodness) = a8;
  v185.i64[0] = v8;
  CoveragePointRenderer.updateInterfaceOrientationIfNeeded()();
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CoveragePointRenderer.update(time:arCameraTransform:coveragePointCloud:captureCircle:reticleDeltaVector:motionScore:));
  v186 = v26;
  *v27.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*v183.i64, v184);
  v179 = v28;
  v184 = v29;
  v187 = vmlaq_lane_f32(vmulq_n_f32(v27, v186.f32[0]), v30, *v186.f32, 1);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = v171 - v33;
  v35 = *(v23 + 20);
  v36 = a1;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1 + v35, v171 - v33, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v37 = type metadata accessor for ObjectCaptureSession.Frame.Object();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  v40 = v39(v34, 1, v37);
  v41 = MEMORY[0x277D860B8];
  if (v40 == 1)
  {
    v42 = outlined destroy of PerspectiveCameraComponent?(v34, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    v43 = v41[1];
    v183 = *v41;
    v182 = v43;
    v44 = v41[3];
    v181 = v41[2];
    v180 = v44;
  }

  else
  {
    ObjectCaptureSession.Frame.Object.transform.getter();
    v183 = v45;
    v182 = v46;
    v181 = v47;
    v180 = v48;
    v42 = (*(v38 + 8))(v34, v37);
  }

  v187 = vmlaq_laneq_f32(v187, v179, v186, 2);
  v177 = vdupq_lane_s32(*v186.f32, 1);
  v178 = vdupq_laneq_s32(v186, 2);
  v179 = vdupq_laneq_s32(v186, 3);
  MEMORY[0x28223BE20](v42);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v36 + v35, v171 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  if (v39(v171 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v37) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v171 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    v50 = *v41;
    v49 = v41[1];
    v52 = v41[2];
    v51 = v41[3];
  }

  else
  {
    ObjectCaptureSession.Frame.Object.boundingBox.getter();
    v171[3] = v53;
    v171[2] = v54;
    v171[1] = v55;
    v171[0] = v56;
    (*(v38 + 8))(v171 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v37);
  }

  v57 = v185.i64[0];
  v187 = vmlaq_laneq_f32(v187, v184, v186, 3);
  Transform.init(matrix:)();
  v185 = v58;
  v184 = v59;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CoveragePointCloud.objectToInitialBoxWorld.getter);
  *v60.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*v184.i64, v185);
  v183 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v183, v60.f32[0]), v182, *v60.f32, 1), v181, v60, 2), v180, v60, 3), v186.f32[0]), v177, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v183, v61.f32[0]), v182, *v61.f32, 1), v181, v61, 2), v180, v61, 3)), v178, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v183, v62.f32[0]), v182, *v62.f32, 1), v181, v62, 2), v180, v62, 3)), v179, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v183, v63.f32[0]), v182, *v63.f32, 1), v181, v63, 2), v180, v63, 3));
  CoveragePointCloud.bboxWorld.getter();
  Transform.init(matrix:)();
  v67 = v66;
  v69 = *v68.i64;
  v185 = v64;
  v184 = v68;
  if (one-time initialization token for automaticBoundingBoxPaddingFactor != -1)
  {
    v186 = v67;
    swift_once();
    v67 = v186;
    v69 = *v184.i64;
    v64 = v185;
  }

  *v65.f32 = vmul_n_f32(*v67.f32, 1.0 / *&static BoundingBoxHelpers.automaticBoundingBoxPaddingFactor);
  v180 = v65;
  v67.f32[0] = vmuls_lane_f32(1.0 / *&static BoundingBoxHelpers.automaticBoundingBoxPaddingFactor, v67, 2);
  v181 = v67;
  v70.i64[0] = v65.i64[0];
  v70.i64[1] = v67.u32[0];
  v186 = v70;
  *v71.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v69, v64);
  v182 = v71;
  v179 = v72;
  v178 = v73;
  v177 = v74;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static BoundingBoxHelpers.getBoundingSphere(boxWorld:));
  Transform.init(matrix:)();
  v182 = v75;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of CoveragePointRenderer.update(time:arCameraTransform:coveragePointCloud:captureCircle:reticleDeltaVector:motionScore:));
  v78 = sqrtf((v181.f32[0] * v181.f32[0]) + vaddv_f32(vmul_f32(*v180.f32, *v180.f32)));
  if (v77 < v76)
  {
    v76 = v77;
  }

  v79 = (v78 * 0.5) * 1.5;
  v80 = (v79 / tanf(v76 * 0.5)) + 0.001;
  *v81.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*v184.i64, v185);
  v181 = v81;
  v180 = v82;
  v179 = v83;
  v178 = v84;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static BoundingBoxHelpers.getBoundingSphere(boxWorld:));
  Transform.init(matrix:)();
  v86 = vzip1_s32(*v182.f32, *v85.i8);
  v87 = vzip2_s32(*v182.f32, *v85.i8);
  *v85.i8 = vzip1_s32(*&vextq_s8(v182, v182, 8uLL), *&vextq_s8(v85, v85, 8uLL));
  *v85.i8 = vmul_f32(vsqrt_f32(vadd_f32(vmul_f32(*v85.i8, *v85.i8), vadd_f32(vmul_f32(v86, v86), vmul_f32(v87, v87)))), 0x3F0000003F000000);
  *&v88 = 0;
  *(&v88 + 2) = (*v85.i32 + (v80 + *&v85.i32[1])) / (0.001 - (*v85.i32 + (v80 + *&v85.i32[1])));
  HIDWORD(v88) = -1.0;
  *&v89 = 0;
  HIDWORD(v89) = 0;
  *(&v89 + 2) = *(&v88 + 2) * 0.001;
  v90 = v57 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_projection;
  *v90 = xmmword_23B91C4F0;
  *(v90 + 16) = xmmword_23B91C500;
  *(v90 + 32) = v88;
  *(v90 + 48) = v89;
  v91 = v187;
  v91.i32[3] = 0;
  v92 = v183;
  v92.i32[3] = 0;
  *v93.i64 = specialized static MiniViewHelpers.computeLookAt(cameraWorld:objectWorld:objectExtents:)(v91, v92, *v186.f32);
  v183 = v93;
  v94 = vsubq_f32(v93, v187);
  v95 = v93.f32[2];
  v96 = vmulq_f32(v94, v94);
  *&v97 = v96.f32[2] + vaddv_f32(*v96.f32);
  *v96.f32 = vrsqrte_f32(v97);
  *v96.f32 = vmul_f32(*v96.f32, vrsqrts_f32(v97, vmul_f32(*v96.f32, *v96.f32)));
  v187 = vmulq_n_f32(v94, vmul_f32(*v96.f32, vrsqrts_f32(v97, vmul_f32(*v96.f32, *v96.f32))).f32[0]);
  v98 = *v90;
  v99 = *(v90 + 20);
  v100 = *(v90 + 56);
  v101 = *(v90 + 40);
  Transform.init()();
  v182 = v102;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of CoveragePointRenderer.update(time:arCameraTransform:coveragePointCloud:captureCircle:reticleDeltaVector:motionScore:));
  *v104.i64 = simd_quaternion(v103, v187);
  v181 = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91BFD0;
  v106.f32[0] = atanf(1.0 / v98);
  v180 = v106;
  v107 = atanf(1.0 / v99);
  *(inited + 32) = vadd_f32(__PAIR64__(LODWORD(v107), v180.u32[0]), __PAIR64__(LODWORD(v107), v180.u32[0]));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
  v180 = v108;
  swift_setDeallocating();
  v109 = v180.f32[1];
  if (v180.f32[1] >= v180.f32[0])
  {
    v109 = v180.f32[0];
  }

  v110.f32[0] = (v100 / v101) + (v79 / tanf(v109 * 0.5));
  v180 = v110;
  v111 = swift_initStackObject();
  *(v111 + 16) = xmmword_23B91A6D0;
  v112 = v187;
  v113 = v180.f32[0];
  *(v111 + 32) = vsub_f32(*v183.f32, vmul_n_f32(*v187.f32, v180.f32[0]));
  *(v111 + 40) = v95 - vmuls_lane_f32(v113, v112, 2);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v111);
  v187 = v114;
  swift_setDeallocating();
  *v115.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*v187.i64, v181);
  v187 = v115;
  v183 = v116;
  v182 = v117;
  v181 = v118;
  v119 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_cameraTransformProvider;
  v120 = *(v57 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_cameraTransformProvider);
  if (!v120)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v121 = v120;
  *v122.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*v184.i64, v185);
  v126 = v122;
  v127 = *v90;
  v128 = *(v90 + 16);
  v129 = *(v90 + 32);
  v130 = *(v90 + 48);
  *&v121[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_time] = v176.i64[0];
  v131 = OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_ignoreARCameraTracking;
  if (v121[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_ignoreARCameraTracking])
  {
    v132 = v172;
    v186 = v122;
    v185 = v123;
    v184 = v124;
    v180 = v125;
    v179 = v127;
    v178 = v128;
    v177 = v129;
    v176 = v130;
    static DispatchTime.now()();
    v133 = *&v121[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_springDelay];
    v134 = v173;
    - infix(_:_:)();
    v135 = v174;
    v136 = v132;
    v137 = v175;
    (*(v174 + 8))(v136, v175);
    (*(v135 + 56))(v134, 0, 1, v137);
    v138 = OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_startTime;
    swift_beginAccess();
    outlined assign with take of Cancellable?(v134, &v121[v138], &_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
    swift_endAccess();
    v130 = v176;
    v129 = v177;
    v128 = v178;
    v127 = v179;
    v125 = v180;
    v124 = v184;
    v123 = v185;
    v126 = v186;
    v121[v131] = 0;
  }

  v188 = 0;
  v139 = &v121[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_projection];
  *v139 = v127;
  v139[1] = v128;
  v139[2] = v129;
  v139[3] = v130;
  v139[4].i8[0] = 0;
  v140 = &v121[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_boundingBoxWorld];
  *v140 = v126;
  v140[1] = v123;
  v140[2] = v124;
  v140[3] = v125;
  Transform.init(matrix:)();
  v141 = &v121[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_arCameraTransform];
  *v141 = v142;
  v141[1] = v143;
  v141[2] = v144;
  v145 = v140[1];
  v184 = *v140;
  v185 = v145;
  v146 = v140[3];
  v186 = v140[2];
  v187 = v146;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #3 of CoveragePointRenderer.update(time:arCameraTransform:coveragePointCloud:captureCircle:reticleDeltaVector:motionScore:));
  v148 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v184, v147.f32[0]), v185, *v147.f32, 1), v186, v147, 2), v187, v147, 3);
  v149 = v141[2];
  v187 = v148;
  v150 = vsubq_f32(v149, v148);
  v151 = vmulq_f32(v150, v150);
  *&v152 = v151.f32[2] + vaddv_f32(*v151.f32);
  *v151.f32 = vrsqrte_f32(v152);
  *v151.f32 = vmul_f32(*v151.f32, vrsqrts_f32(v152, vmul_f32(*v151.f32, *v151.f32)));
  InteractiveCameraTransformManager.computeRadiusToViewBox(boxToCameraDir:)(vmulq_n_f32(v150, vmul_f32(*v151.f32, vrsqrts_f32(v152, vmul_f32(*v151.f32, *v151.f32))).f32[0]));
  v154 = OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_turnTableCameraControl;
  v155 = *&v121[OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_turnTableCameraControl];
  if (!v155)
  {
    goto LABEL_25;
  }

  v156 = v153;
  v157 = v187;
  v157.i32[3] = 0;
  v155[5] = v157;
  TurnTableCameraControl.update()();
  v158 = *&v121[v154];
  if (!v158)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v159 = v158[15];
  v160 = v158[16];
  if (v160 >= v156)
  {
    v160 = v156;
  }

  if (v160 > v159)
  {
    v159 = v160;
  }

  v158[14] = v159;
  TurnTableCameraControl.update()();

  v161 = *(v57 + v119);
  if (v161)
  {
    v162 = v161;
    *v163.i64 = InteractiveCameraTransformManager.computeCurrentTransform()();
    v187 = v163;
    v186 = v164;
    v185 = v165;

    *&v166 = specialized simd_float4x4.init(translation:rotation:scale:)(*v185.i64, v186);
    v167 = (v57 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewToWorld);
    *v167 = v166;
    v167[1] = v168;
    v167[2] = v169;
    v167[3] = v170;
    return;
  }

LABEL_27:
  __break(1u);
}

Swift::Void __swiftcall CoveragePointRenderer.teardown()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for CoveragePointCloud();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_coveragePointCloud;
  swift_beginAccess();
  outlined assign with take of Cancellable?(v4, v0 + v6, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  swift_endAccess();
  v7 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_captureCircle);
  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_captureCircle) = 0;

  if (!CoveragePointRenderer.captureCircleRenderer.getter())
  {
    __break(1u);
    goto LABEL_7;
  }

  CoveragePointRenderer.clearView()();
  v8 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_cameraTransformProvider);
  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v9 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view;
  v10 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view);
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v8 + OBJC_IVAR____TtC19_RealityKit_SwiftUI33InteractiveCameraTransformManager_dragGesture))
  {
    [v10 removeGestureRecognizer_];
    v11 = *(v0 + v9);
    *(v0 + v9) = 0;

    return;
  }

LABEL_9:
  __break(1u);
}

void *CoveragePointRenderer.updateInterfaceOrientationIfNeeded()()
{
  result = *&v0[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view];
  if (result)
  {
    v2 = v0;
    v3 = [result window];
    if (v3 && (v4 = v3, v5 = [v3 windowScene], v4, v5))
    {
      v6 = [v5 interfaceOrientation];
    }

    else
    {
      v6 = 1;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v6 != v16)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, logger);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v16 = v11;
        *v10 = 136315138;
        type metadata accessor for UIInterfaceOrientation(0);
        v12 = String.init<A>(describing:)();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_23B824000, v8, v9, "Device orientatation: publishing the renderer interfaceOrientation=%s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v11);
        MEMORY[0x23EEB0B70](v11, -1, -1);
        MEMORY[0x23EEB0B70](v10, -1, -1);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v16 = v6;
      v15 = v2;
      return static Published.subscript.setter();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void CoveragePointRenderer.clearView()()
{
  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view;
  v2 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view);
  if (!v2)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v3 = [v2 currentRenderPassDescriptor];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v3 colorAttachments];
  v6 = [v5 objectAtIndexedSubscript_];

  if (!v6)
  {
    goto LABEL_15;
  }

  [v6 setLoadAction_];

  v7 = [v4 colorAttachments];
  v8 = [v7 objectAtIndexedSubscript_];

  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v8 setClearColor_];

  if (!*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_commandQueue))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_commandQueue);
  v10 = [swift_unknownObjectRetain() commandBuffer];
  if (!v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = v10;
  swift_unknownObjectRelease();
  v12 = [v11 renderCommandEncoderWithDescriptor_];
  if (!v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v12 endEncoding];
  v13 = *(v0 + v1);
  if (!v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = [v13 currentDrawable];
  if (!v14)
  {
LABEL_21:
    __break(1u);
    return;
  }

  [v11 presentDrawable_];
  swift_unknownObjectRelease();
  [v11 commit];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall CoveragePointRenderer.draw(in:)(MTKView in)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_coveragePointCloud;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v7, v6, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v8 = type metadata accessor for CoveragePointCloud();
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) || (v9 = type metadata accessor for ObjectCaptureSession.Frame.PointCloud(), v10 = *(v9 - 8), v11 = (*(v10 + 48))(v6, 1, v9), v11))
  {
    outlined destroy of PerspectiveCameraComponent?(v6, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  }

  else
  {
    v12 = v1;
    v13 = *(v10 + 64);
    MEMORY[0x28223BE20](v11);
    v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v15, v6, v9);
    outlined destroy of PerspectiveCameraComponent?(v6, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    ObjectCaptureSession.Frame.PointCloud.points.getter();
    (*(v10 + 8))(v15, v9);
    v16 = dispatch thunk of OCDataBuffer.count.getter();

    if (v16 > 1)
    {
      if (*(v12 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_renderStyle) == 1)
      {
        CoveragePointRenderer.drawCubes(in:)(in.super.super.super.isa);
      }

      else
      {
        CoveragePointRenderer.drawPoints(in:)(in.super.super.super.isa);
      }
    }
  }
}

void CoveragePointRenderer.drawPoints(in:)(void *a1)
{
  v2 = v1;
  v179 = a1;
  v176 = type metadata accessor for CoveragePointRenderer.ResourceEntry(0);
  v3 = *(*(v176 - 8) + 64);
  MEMORY[0x28223BE20](v176);
  *&v178 = v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  *&v175 = v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  *&v174 = v152 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v177 = v152 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v152 - v13;
  v180 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_inFlightLock];
  os_unfair_lock_lock(v180 + 4);
  v181.i64[0] = type metadata accessor for ObjectCaptureSession.Frame.PointCloud();
  v15 = *(v181.i64[0] - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v181.i64[0]);
  v18 = v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v152 - v21;
  v23 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_coveragePointCloud;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v2[v23], v14, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v24 = type metadata accessor for CoveragePointCloud();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v27 = v25 + 48;
  if (v26(v14, 1, v24))
  {
    outlined destroy of PerspectiveCameraComponent?(v14, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    (*(v15 + 56))(v22, 1, 1, v181.i64[0]);
LABEL_4:
    outlined destroy of PerspectiveCameraComponent?(v22, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
LABEL_5:
    os_unfair_lock_unlock(v180 + 4);
    return;
  }

  v169.i64[0] = v27;
  v170.i64[0] = v26;
  v171.i64[0] = v23;
  v172.i64[0] = v24;
  v173 = v18;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v14, v22, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  outlined destroy of PerspectiveCameraComponent?(v14, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v28 = v181.i64[0];
  if ((*(v15 + 48))(v22, 1, v181.i64[0]) == 1)
  {
    goto LABEL_4;
  }

  v29 = v173;
  (*(v15 + 32))(v173, v22, v28);
  v30 = v2;
  v31 = v177;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v2[v171.i64[0]], v177, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  if ((v170.i64[0])(v31, 1, v172.i64[0]) == 1)
  {
    goto LABEL_70;
  }

  v32 = CoveragePointRenderer.createUniforms(coveragePointCloud:)(v31);
  outlined destroy of CoveragePointCloud(v31, type metadata accessor for CoveragePointCloud);
  v33 = v176;
  v34 = *(v176 + 20);
  v35 = v178;
  (*(v15 + 16))(v178 + v34, v29, v28);
  (*(v15 + 56))(&v35[v34], 0, 1, v28);
  ObjectCaptureSession.Frame.PointCloud.points.getter();
  v36 = *&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_device];
  v37 = dispatch thunk of OCDataBuffer.asMTLBuffer(from:)();

  *v35 = v32;
  v38 = *(v33 + 24);
  v177 = v37;
  *&v35[v38] = v37;
  v39 = *&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_inFlightQueue];
  v40 = specialized InFlightQueue.retain(_:)(v35);
  v41 = *&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_commandQueue];
  v42 = v179;
  if (!v41)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v43 = [v41 commandBuffer];
  if (!v43)
  {
    (*(v15 + 8))(v29, v28);
LABEL_63:
    outlined destroy of CoveragePointCloud(v35, type metadata accessor for CoveragePointRenderer.ResourceEntry);
    goto LABEL_5;
  }

  v44 = v43;
  v168 = v32;
  v45 = [v42 currentRenderPassDescriptor];
  if (!v45)
  {
    (*(v15 + 8))(v29, v28);
    swift_unknownObjectRelease();
    goto LABEL_63;
  }

  v46 = v45;
  v165 = v40;
  v166 = v15;
  v47 = [v45 colorAttachments];
  v48 = [v47 objectAtIndexedSubscript_];

  if (!v48)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  [v48 setLoadAction_];

  v49 = [v46 colorAttachments];
  v50 = [v49 objectAtIndexedSubscript_];

  if (!v50)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  [v50 setClearColor_];

  v176 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_baseRenderer;
  if (!*&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_baseRenderer])
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v51 = &v30[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewportSize];
  v52 = *&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewportSize];
  if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_65;
  }

  if (v52 <= -9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v52 >= 9.22337204e18)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v53 = v51[1];
  if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v53 <= -9.22337204e18)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v167 = v44;
  if (v53 >= 9.22337204e18)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v54 = v46;
  v55 = v52;
  v56 = v53;

  BaseRenderer.updateDepthAttachmentTexture(width:height:)(v55, v56);

  v57 = [v46 depthAttachment];
  if (!v57)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v58 = *&v30[v176];
  v59 = v167;
  if (!v58)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (!*(v58 + 32))
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v60 = v57;
  [v57 setTexture_];

  v61 = [v46 depthAttachment];
  if (!v61)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v62 = v61;
  [v61 setLoadAction_];

  v63 = [v46 depthAttachment];
  if (!v63)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v64 = v63;
  [v63 setStoreAction_];

  v65 = [v59 renderCommandEncoderWithDescriptor_];
  if (!v65)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v66 = v65;
  v183[0] = 0uLL;
  v183[1] = *v51;
  v183[2] = xmmword_23B91C510;
  [v65 setViewport_];
  v67 = *&v30[v176];
  if (!v67)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  [v66 setDepthStencilState_];
  if (!*&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_renderPipelineState])
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  [v66 setRenderPipelineState_];
  [v66 setVertexBuffer:v168 offset:0 atIndex:0];
  [v66 setVertexBuffer:v177 offset:0 atIndex:1];
  ObjectCaptureSession.Frame.PointCloud.points.getter();
  v68 = dispatch thunk of OCDataBuffer.count.getter();

  [v66 drawPrimitives:0 vertexStart:0 vertexCount:v68];
  [v66 endEncoding];
  v69 = *&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_captureCircle];
  if (!v69)
  {
    goto LABEL_61;
  }

  v70 = *&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_captureCircle];

  v168 = CoveragePointRenderer.captureCircleRenderer.getter();
  if (!v168)
  {

    goto LABEL_61;
  }

  v177 = v69;
  v71 = v171.i64[0];
  v72 = v174;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v30[v171.i64[0]], v174, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v73 = v172.i64[0];
  v74 = v170.i64[0];
  if ((v170.i64[0])(v72, 1, v172.i64[0]) == 1)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v152[1] = v66;
  *&v159 = v51;
  *&v160 = v54;
  *&v75 = CoveragePointCloud.bboxWorld.getter();
  v163 = v76;
  v164 = v75;
  v161 = v78;
  v162 = v77;
  outlined destroy of CoveragePointCloud(v72, type metadata accessor for CoveragePointCloud);
  *&v79 = specialized static BoundingBoxHelpers.unpaddedBoundingBox(boxWorld:)();
  v174 = v79;
  v163 = v81;
  v164 = v80;
  v162 = v82;
  v83 = &v30[v71];
  v84 = v175;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v83, v175, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  if (v74(v84, 1, v73) == 1)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  *&v161 = v152;
  v86 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85 - 8);
  v88 = v152 - v87;
  *&v158 = *(v73 + 20);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v84 + v158, v152 - v87, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v89 = type metadata accessor for ObjectCaptureSession.Frame.Object();
  v90 = *(v89 - 8);
  v91 = *(v90 + 48);
  v92 = v91(v88, 1, v89);

  v93 = MEMORY[0x277D860B8];
  if (v92 == 1)
  {
    v94 = outlined destroy of PerspectiveCameraComponent?(v88, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    v95 = *v93;
    v171 = v93[1];
    v172 = v95;
    v96 = v93[2];
    v169 = v93[3];
    v170 = v96;
  }

  else
  {
    ObjectCaptureSession.Frame.Object.transform.getter();
    v171 = v98;
    v172 = v97;
    v169 = v100;
    v170 = v99;
    v94 = (*(v90 + 8))(v88, v89);
  }

  MEMORY[0x28223BE20](v94);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v175 + v158, v152 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0), &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  if (v91(v152 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v89) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v152 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0), &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    v101 = *MEMORY[0x277D860B8];
    v102 = *(MEMORY[0x277D860B8] + 16);
    v103 = *(MEMORY[0x277D860B8] + 32);
    v104 = *(MEMORY[0x277D860B8] + 48);
  }

  else
  {
    ObjectCaptureSession.Frame.Object.boundingBox.getter();
    v161 = v105;
    v157 = v107;
    v158 = v106;
    v156 = v108;
    (*(v90 + 8))(v152 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0), v89);
  }

  v35 = v178;
  v28 = v181.i64[0];
  v54 = v160;
  v109 = v159;
  Transform.init(matrix:)();
  v181 = v110;
  v178 = v111;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CoveragePointCloud.objectToInitialBoxWorld.getter);
  *v112.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*&v178, v181);
  v153 = v112;
  v154 = v113;
  v155 = v114;
  v156 = v115;
  outlined destroy of CoveragePointCloud(v175, type metadata accessor for CoveragePointCloud);
  v116 = *&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewToWorld + 16];
  v181 = *&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewToWorld];
  v178 = v116;
  v117 = *&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewToWorld + 48];
  v175 = *&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewToWorld + 32];
  v118 = *&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_projection + 16];
  v160 = *&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_projection];
  v161 = v117;
  v119 = *&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_projection + 48];
  v158 = *&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_projection + 32];
  v159 = v118;
  v157 = v119;
  v120 = *&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_localTime];
  v121 = sqrtf(vaddv_f32(vmul_f32(*&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_reticleDeltaVector], *&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_reticleDeltaVector])));
  if (v121 <= 1.0)
  {
    v122 = v121;
  }

  else
  {
    v122 = 1.0;
  }

  v123 = 1.0 - v122;
  if (v121 <= 0.0)
  {
    v123 = 1.0;
  }

  v124 = *&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_motionGoodness] * v123;
  v153 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v172, v153.f32[0]), v171, *v153.f32, 1), v170, v153, 2), v169, v153, 3);
  v154 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v172, v154.f32[0]), v171, *v154.f32, 1), v170, v154, 2), v169, v154, 3);
  v155 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v172, v155.f32[0]), v171, *v155.f32, 1), v170, v155, 2), v169, v155, 3);
  v172 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v172, v156.f32[0]), v171, *v156.f32, 1), v170, v156, 2), v169, v156, 3);
  if (v124 > 0.1)
  {
    v125 = v124;
  }

  else
  {
    v125 = 0.1;
  }

  v126 = v168;
  v127 = *(v168 + 64);
  v128 = v177;
  *(v168 + 64) = v177;

  v129 = *(v128 + 64);
  if (v125 <= 1.0)
  {
    v130 = v125;
  }

  else
  {
    v130 = 1.0;
  }

  v182[0] = v174;
  v182[1] = v164;
  v182[2] = v163;
  v182[3] = v162;
  v182[4] = v153;
  v182[5] = v154;
  v182[6] = v155;
  v182[7] = v172;
  v182[8] = v181;
  v182[9] = v178;
  v182[10] = v175;
  v182[11] = v161;
  v182[12] = v160;
  v182[13] = v159;
  v182[14] = v158;
  v182[15] = v157;
  LODWORD(v182[16]) = 1056964608;
  *(&v182[16] + 1) = v129;
  *&v182[17] = v130;
  *(&v182[17] + 1) = v120;
  _s19_RealityKit_SwiftUI23CommonCircleRenderStateVSgWOi_(v182);
  memcpy(v126 + 10, v182, 0x121uLL);
  if (!v126[53])
  {
    v131 = CaptureCircleRenderer.makeSingleBinVerticesCapsule(width:)(0.5);
    CaptureCircleRenderer.makeClonedBinVertices(binVerts:modelScale:)(v131, 1.0);
  }

  v132 = v126[50];
  if (!v132)
  {
    goto LABEL_86;
  }

  v133 = v126[50];
  v134 = [swift_unknownObjectRetain() contents];
  v135 = v132;
  CaptureCircleRenderer.makeUniforms()(v183);
  memcpy(v134, v183, 0x1B0uLL);
  CaptureCircleRenderer.updateCaptureBins()();

  v136 = v54;
  v137 = [v136 colorAttachments];
  v138 = [v137 objectAtIndexedSubscript_];

  if (!v138)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  [v138 setLoadAction_];

  v139 = [v136 depthAttachment];
  if (!v139)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v140 = *&v30[v176];
  if (!v140)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (!*(v140 + 32))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v141 = v139;
  [v139 setTexture_];

  v142 = [v136 depthAttachment];
  if (!v142)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v143 = v142;
  [v142 setLoadAction_];

  v144 = [v136 depthAttachment];
  if (v144)
  {
    v145 = v144;
    [v144 setStoreAction_];

    v146 = v167;
    CaptureCircleRenderer.render(into:viewportSize:desc:)(v167, v136, *v109, v109[1]);

    v59 = v146;
LABEL_61:
    v147 = [v179 currentDrawable];
    if (v147)
    {
      [v59 presentDrawable_];
      swift_unknownObjectRelease();
      v148 = swift_allocObject();
      v149 = v165;
      *(v148 + 16) = v30;
      *(v148 + 24) = v149;
      *&v182[2] = partial apply for closure #1 in CoveragePointRenderer.drawPoints(in:);
      *(&v182[2] + 1) = v148;
      *&v182[0] = MEMORY[0x277D85DD0];
      *(&v182[0] + 1) = 1107296256;
      *&v182[1] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MTLCommandBuffer) -> ();
      *(&v182[1] + 1) = &block_descriptor_69;
      v150 = _Block_copy(v182);
      v151 = v30;

      [v59 addCompletedHandler_];
      _Block_release(v150);
      [v59 commit];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v166 + 8))(v173, v28);
      goto LABEL_63;
    }

    goto LABEL_83;
  }

LABEL_92:
  __break(1u);
}

void closure #1 in CoveragePointRenderer.drawPoints(in:)(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v87 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMd, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v84 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v85 = &v80 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = (&v80 - v13);
  v15 = *(a2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_inFlightQueue);
  os_unfair_lock_lock((*(v15 + 16) + 16));
  swift_beginAccess();
  v86 = v15;
  v16 = *(v15 + 32);
  v18 = (v16 + 16);
  v17 = *(v16 + 16);
  if (!v17)
  {
LABEL_5:
    v22 = v17;
    goto LABEL_10;
  }

  v19 = 0;
  v20 = ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v21 = *(v7 + 72);
  v83 = v20;
  while (*&v20[v16] != v87)
  {
    ++v19;
    v20 += v21;
    if (v17 == v19)
    {
      goto LABEL_5;
    }
  }

  v22 = v19 + 1;
  if (__OFADD__(v19, 1))
  {
    __break(1u);
    goto LABEL_59;
  }

  v82 = a1;
  if (v22 != v17)
  {
    v72 = &v20[v21];
    v73 = &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMd;
    v3 = &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMR;
    while (v22 < v17)
    {
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v72[v16], v14, v73, v3);
      v74 = v73;
      v75 = *v14;
      a1 = v74;
      outlined destroy of PerspectiveCameraComponent?(v14, v74, v3);
      if (v75 == v87)
      {
        v73 = a1;
      }

      else
      {
        if (v22 == v19)
        {
          v73 = a1;
        }

        else
        {
          if (v19 < 0)
          {
            goto LABEL_52;
          }

          v76 = v3;
          v3 = *v18;
          if (v19 >= *v18)
          {
            goto LABEL_53;
          }

          v73 = a1;
          v77 = a1;
          a1 = v76;
          outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v83 + v16 + v19 * v21, v85, v77, v76);
          if (v22 >= v3)
          {
            goto LABEL_54;
          }

          outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v72[v16], v84, v73, a1);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v86 + 4) = v16;
          v3 = a1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
            *(v86 + 4) = v16;
          }

          outlined assign with take of Cancellable?(v84, v83 + v16 + v19 * v21, v73, a1);
          v79 = v86;
          *(v86 + 4) = v16;
          if (v22 >= *(v16 + 16))
          {
            goto LABEL_55;
          }

          outlined assign with take of Cancellable?(v85, &v72[v16], v73, a1);
          *(v79 + 4) = v16;
        }

        ++v19;
      }

      ++v22;
      v18 = (v16 + 16);
      v17 = *(v16 + 16);
      v72 += v21;
      if (v22 == v17)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v22 = v17;
LABEL_9:
  v17 = v19;
  a1 = v82;
  if (v22 < v19)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
    goto LABEL_12;
  }

LABEL_10:
  v23 = v86;
  specialized Array.replaceSubrange<A>(_:with:)(v17, v22);
  swift_endAccess();
  os_unfair_lock_unlock((*(v23 + 2) + 16));
  v19 = &unk_278B8A000;
  v24 = [a1 error];
  if (!v24)
  {
    goto LABEL_15;
  }

  v3 = v24;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_57;
  }

LABEL_12:
  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, logger);
  v26 = v3;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v89 = v30;
    *v29 = 136446210;
    v31 = v26;
    v32 = [v31 description];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = a1;
    v36 = v35;

    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v36, &v89);
    a1 = v34;

    *(v29 + 4) = v37;
    _os_log_impl(&dword_23B824000, v27, v28, "Got error rendering PIP CommandBuffer: error=%{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x23EEB0B70](v30, -1, -1);
    MEMORY[0x23EEB0B70](v29, -1, -1);
  }

  else
  {
  }

LABEL_15:
  v38 = [a1 *(v19 + 1776)];
  if (!v38)
  {
    return;
  }

  v83 = v38;
  v39 = [v38 userInfo];
  v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = *MEMORY[0x277CD6940];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v40 + 16))
  {

    goto LABEL_33;
  }

  v44 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v43);
  v46 = v45;

  if ((v46 & 1) == 0)
  {
LABEL_33:

    goto LABEL_34;
  }

  outlined init with copy of Any(*(v40 + 56) + 32 * v44, &v89);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo27MTLCommandBufferEncoderInfo_pGMd, &_sSaySo27MTLCommandBufferEncoderInfo_pGMR);
  if (swift_dynamicCast())
  {
    v19 = v88;
    if (!(v88 >> 62))
    {
      v48 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v48)
      {
LABEL_21:
        if (v48 < 1)
        {
          __break(1u);
          return;
        }

        v49 = 0;
        v50 = v19 & 0xC000000000000001;
        v51 = 0x27E189000uLL;
        *&v47 = 136446210;
        v80 = v47;
        v81 = v19 & 0xC000000000000001;
        v82 = v19;
        do
        {
          if (v50)
          {
            v68 = MEMORY[0x23EEAFC40](v49, v19);
          }

          else
          {
            v68 = *(v19 + 8 * v49 + 32);
            swift_unknownObjectRetain();
          }

          if (*(v51 + 1928) != -1)
          {
            swift_once();
          }

          v69 = type metadata accessor for Logger();
          __swift_project_value_buffer(v69, logger);
          swift_unknownObjectRetain();
          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.error.getter();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v70, v71))
          {
            v52 = swift_slowAlloc();
            v86 = v52;
            v87 = swift_slowAlloc();
            v88 = v87;
            *v52 = v80;
            v53 = [v68 label];
            LODWORD(v85) = v71;
            v54 = v53;
            v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v56 = v55;

            v57 = [v68 debugSignposts];
            v58 = v51;
            v59 = v48;
            v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v89 = v60;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
            v61 = BidirectionalCollection<>.joined(separator:)();
            v63 = v62;
            v48 = v59;
            v51 = v58;

            v89 = v84;
            v90 = v56;

            MEMORY[0x23EEAF590](v61, v63);
            v50 = v81;

            v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, &v88);
            v19 = v82;

            v65 = v86;
            *(v86 + 1) = v64;
            v66 = v65;
            _os_log_impl(&dword_23B824000, v70, v85, "%{public}s", v65, 0xCu);
            v67 = v87;
            __swift_destroy_boxed_opaque_existential_0Tm(v87);
            MEMORY[0x23EEB0B70](v67, -1, -1);
            MEMORY[0x23EEB0B70](v66, -1, -1);

            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          ++v49;
        }

        while (v48 != v49);
        goto LABEL_33;
      }

      goto LABEL_33;
    }

LABEL_59:
    v48 = __CocoaSet.count.getter();
    if (v48)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

LABEL_34:
}

void CoveragePointRenderer.drawCubes(in:)(void *a1)
{
  v97 = a1;
  v95 = type metadata accessor for CoveragePointRenderer.ResourceEntry(0);
  v2 = *(*(v95 - 1) + 64);
  MEMORY[0x28223BE20](v95);
  v98 = (&v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v94 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v96 = &v80 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v80 - v10;
  v99 = *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_inFlightLock];
  os_unfair_lock_lock(v99 + 4);
  v101 = type metadata accessor for ObjectCaptureSession.Frame.PointCloud();
  v12 = *(v101 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v101);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v80 - v16;
  v18 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_coveragePointCloud;
  swift_beginAccess();
  v100 = v1;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v1[v18], v11, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v19 = type metadata accessor for CoveragePointCloud();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v22 = v20 + 48;
  if (v21(v11, 1, v19))
  {
    outlined destroy of PerspectiveCameraComponent?(v11, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    (*(v12 + 56))(v17, 1, 1, v101);
LABEL_4:
    outlined destroy of PerspectiveCameraComponent?(v17, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
LABEL_5:
    os_unfair_lock_unlock(v99 + 4);
    return;
  }

  v91 = v21;
  v92 = v19;
  v93 = v18;
  v89 = v15;
  v90 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v11, v17, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  outlined destroy of PerspectiveCameraComponent?(v11, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v23 = *(v12 + 48);
  v24 = v101;
  if (v23(v17, 1, v101) == 1)
  {
    goto LABEL_4;
  }

  v85 = v23;
  v25 = *(v12 + 32);
  v26 = v90;
  v84 = v12 + 32;
  v83 = v25;
  v25(v90, v17, v24);
  v27 = v96;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v93 + v100, v96, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v88 = v22;
  if (v91(v27, 1, v92) == 1)
  {
    __break(1u);
    goto LABEL_46;
  }

  v28 = CoveragePointRenderer.createUniforms(coveragePointCloud:)(v27);
  outlined destroy of CoveragePointCloud(v27, type metadata accessor for CoveragePointCloud);
  v29 = v95;
  v30 = v95[5];
  v31 = v98;
  (*(v12 + 16))(v98 + v30, v26, v24);
  v32 = *(v12 + 56);
  v87 = v12 + 56;
  v86 = v32;
  v32(v31 + v30, 0, 1, v24);
  swift_unknownObjectRetain();
  ObjectCaptureSession.Frame.PointCloud.points.getter();
  v33 = *&v100[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_device];
  v34 = dispatch thunk of OCDataBuffer.asMTLBuffer(from:)();

  v96 = v28;
  *v31 = v28;
  *(v31 + v29[6]) = v34;
  v35 = *&v100[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_inFlightQueue];
  v36 = specialized InFlightQueue.retain(_:)(v31);
  v37 = v100;
  v38 = v36;
  v39 = *&v100[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_commandQueue];
  if (!v39)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v40 = [v39 commandBuffer];
  if (!v40)
  {
LABEL_26:
    swift_unknownObjectRelease();
LABEL_35:
    outlined destroy of CoveragePointCloud(v31, type metadata accessor for CoveragePointRenderer.ResourceEntry);
    (*(v12 + 8))(v26, v24);
    goto LABEL_5;
  }

  v41 = v40;
  v80 = v12 + 48;
  v42 = [v97 currentRenderPassDescriptor];
  if (!v42)
  {
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  v43 = v42;
  v82 = v38;
  v95 = v41;
  v44 = [v42 colorAttachments];
  v45 = [v44 objectAtIndexedSubscript_];

  if (!v45)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  [v45 setLoadAction_];

  v46 = [v43 colorAttachments];
  v47 = [v46 objectAtIndexedSubscript_];

  if (!v47)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  [v47 setClearColor_];

  v31 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_baseRenderer;
  if (!*&v37[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_baseRenderer])
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v48 = &v37[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewportSize];
  v49 = *&v37[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewportSize];
  if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v49 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v49 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v50 = v48[1];
  if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v50 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v50 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v51 = v49;
  v52 = v50;

  BaseRenderer.updateDepthAttachmentTexture(width:height:)(v51, v52);

  v53 = [v43 depthAttachment];
  if (!v53)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v54 = v100;
  v55 = *(v31 + v100);
  if (!v55)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v56 = v13;
  v31 = v98;
  v57 = v89;
  if (!*(v55 + 32))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v58 = v53;
  [v53 setTexture_];

  v81 = v43;
  v59 = [v95 renderCommandEncoderWithDescriptor_];
  if (!v59)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  aBlock = 0;
  v103 = 0;
  v104 = *v48;
  v105 = xmmword_23B91C510;
  v60 = v59;
  v61 = [v59 setViewport_];
  v62 = MEMORY[0x28223BE20](v61);
  v63 = &v80 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v64 = &v80 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v94;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v93 + v54, v94, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  if (v91(v65, 1, v92))
  {
    swift_unknownObjectRelease();
    outlined destroy of PerspectiveCameraComponent?(v65, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    v86(&v80 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0), 1, 1, v101);
    v48 = v60;
    goto LABEL_29;
  }

  v93 = &v80;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v65, &v80 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0), &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  outlined destroy of PerspectiveCameraComponent?(v65, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v66 = v101;
  if (v85(&v80 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v101) == 1)
  {
    swift_unknownObjectRelease();
    v48 = v60;
LABEL_29:
    outlined destroy of PerspectiveCameraComponent?(&v80 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0), &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
    v13 = v81;
    if (one-time initialization token for logger == -1)
    {
LABEL_30:
      v67 = type metadata accessor for Logger();
      __swift_project_value_buffer(v67, logger);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();
      v70 = os_log_type_enabled(v68, v69);
      v24 = v101;
      if (v70)
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_23B824000, v68, v69, "coveragePoints is nil!  Not rendering voxels!", v71, 2u);
        MEMORY[0x23EEB0B70](v71, -1, -1);
      }

      v72 = v100;
LABEL_33:
      v73 = v97;
      v74 = v82;
      [v48 endEncoding];
      v75 = [v73 currentDrawable];
      if (v75)
      {
        v76 = v95;
        [v95 presentDrawable_];
        swift_unknownObjectRelease();
        v77 = swift_allocObject();
        *(v77 + 16) = v72;
        *(v77 + 24) = v74;
        *&v105 = partial apply for closure #1 in CoveragePointRenderer.drawCubes(in:);
        *(&v105 + 1) = v77;
        aBlock = MEMORY[0x277D85DD0];
        v103 = 1107296256;
        *&v104 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MTLCommandBuffer) -> ();
        *(&v104 + 1) = &block_descriptor_5;
        v78 = _Block_copy(&aBlock);
        v79 = v72;

        [v76 addCompletedHandler_];
        _Block_release(v78);
        [v76 commit];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v26 = v90;
        goto LABEL_35;
      }

      goto LABEL_54;
    }

LABEL_44:
    swift_once();
    goto LABEL_30;
  }

  v13 = v81;
  v83(v63, v64, v66);
  if (CoveragePointRenderer.voxelRenderer.getter())
  {
    v48 = v60;
    VoxelRenderer.render(encoder:uniforms:pointCloud:)(v60, v96);

    swift_unknownObjectRelease();
    (*(v12 + 8))(v63, v66);
    v72 = v100;
    v24 = v66;
    goto LABEL_33;
  }

LABEL_55:
  __break(1u);
}

void closure #1 in CoveragePointRenderer.drawCubes(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMd, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v42 = &v38 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = (&v38 - v12);
  v14 = *(a2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_inFlightQueue);
  os_unfair_lock_lock((*(v14 + 16) + 16));
  swift_beginAccess();
  v43 = v14;
  v15 = *(v14 + 32);
  v17 = v15 + 2;
  v16 = v15[2];
  if (!v16)
  {
LABEL_5:
    v21 = v16;
LABEL_10:
    v22 = v43;
    specialized Array.replaceSubrange<A>(_:with:)(v16, v21);
    swift_endAccess();
    os_unfair_lock_unlock((*(v22 + 16) + 16));
    return;
  }

  v18 = 0;
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v20 = *(v6 + 72);
  v40 = v19;
  while (*(v15 + v19) != a3)
  {
    ++v18;
    v19 += v20;
    if (v16 == v18)
    {
      goto LABEL_5;
    }
  }

  v21 = v18 + 1;
  if (!__OFADD__(v18, 1))
  {
    if (v21 == v16)
    {
      v21 = v16;
LABEL_9:
      v16 = v18;
      if (v21 >= v18)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v23 = v20 + v19;
      v24 = &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMd;
      v25 = &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMR;
      v39 = v13;
      v44 = v20;
      while (v21 < v16)
      {
        outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v15 + v23, v13, v24, v25);
        v27 = v24;
        v28 = *v13;
        v29 = v25;
        v30 = v27;
        v31 = v29;
        outlined destroy of PerspectiveCameraComponent?(v13, v27, v29);
        if (v28 == a3)
        {
          v24 = v30;
          v25 = v31;
          v26 = v44;
        }

        else
        {
          if (v21 == v18)
          {
            v24 = v30;
            v25 = v31;
            v26 = v44;
          }

          else
          {
            if ((v18 & 0x8000000000000000) != 0)
            {
              goto LABEL_27;
            }

            v32 = a3;
            v33 = *v17;
            if (v18 >= *v17)
            {
              goto LABEL_28;
            }

            v34 = v18 * v44;
            v24 = v30;
            v35 = v30;
            v25 = v31;
            outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v15 + v40 + v18 * v44, v42, v35, v31);
            if (v21 >= v33)
            {
              goto LABEL_29;
            }

            outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v15 + v23, v41, v24, v31);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v43 + 32) = v15;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
              *(v43 + 32) = v15;
            }

            a3 = v32;
            v26 = v44;
            outlined assign with take of Cancellable?(v41, v15 + v40 + v34, v24, v25);
            v37 = v43;
            *(v43 + 32) = v15;
            v13 = v39;
            if (v21 >= v15[2])
            {
              goto LABEL_30;
            }

            outlined assign with take of Cancellable?(v42, v15 + v23, v24, v25);
            *(v37 + 32) = v15;
          }

          ++v18;
        }

        ++v21;
        v17 = v15 + 2;
        v16 = v15[2];
        v23 += v26;
        if (v21 == v16)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}

void CoveragePointRenderer.initRenderPipeline()()
{
  v39[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_device);
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v39[0] = 0;
  v2 = [v1 newDefaultLibraryWithBundle:static BaseRenderer.bundle error:v39];
  if (!v2)
  {
    v34 = v39[0];
    v35 = _convertNSErrorToError(_:)();

    swift_willThrow();
    lazy protocol witness table accessor for type CoveragePointRenderer.Error and conformance CoveragePointRenderer.Error();
    swift_allocError();
    swift_willThrow();
    goto LABEL_20;
  }

  v3 = v2;
  v4 = v39[0];
  v5 = MEMORY[0x23EEAF480](0xD00000000000002BLL, 0x800000023B926BB0);
  v6 = [v3 newFunctionWithName_];

  v7 = MEMORY[0x23EEAF480](0xD00000000000002ELL, 0x800000023B9254D0);
  v8 = [v3 newFunctionWithName_];

  v9 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  [v9 setAlphaToCoverageEnabled_];
  [v9 setVertexFunction_];
  [v9 setFragmentFunction_];
  v10 = [v9 colorAttachments];
  v11 = [v10 objectAtIndexedSubscript_];

  if (!v11)
  {
    __break(1u);
    goto LABEL_22;
  }

  v12 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_view);
  if (!v12)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v11 setPixelFormat_];

  v13 = [v9 colorAttachments];
  v14 = [v13 objectAtIndexedSubscript_];

  if (!v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v14 setBlendingEnabled_];

  v15 = [v9 colorAttachments];
  v16 = [v15 objectAtIndexedSubscript_];

  if (!v16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v16 setRgbBlendOperation_];

  v17 = [v9 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript_];

  if (!v18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v18 setAlphaBlendOperation_];

  v19 = [v9 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript_];

  if (!v20)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v20 setSourceRGBBlendFactor_];

  v21 = [v9 colorAttachments];
  v22 = [v21 objectAtIndexedSubscript_];

  if (!v22)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v22 setSourceAlphaBlendFactor_];

  v23 = [v9 colorAttachments];
  v24 = [v23 objectAtIndexedSubscript_];

  if (!v24)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v24 setDestinationRGBBlendFactor_];

  v25 = [v9 colorAttachments];
  v26 = [v25 objectAtIndexedSubscript_];

  if (v26)
  {
    [v26 setDestinationAlphaBlendFactor_];

    [v9 setDepthAttachmentPixelFormat_];
    v39[0] = 0;
    v27 = [v1 newRenderPipelineStateWithDescriptor:v9 error:v39];
    v28 = v39[0];
    if (v27)
    {
      v29 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_renderPipelineState);
      *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_renderPipelineState) = v27;
      v30 = v28;
      swift_unknownObjectRelease();
      v31 = [v1 newCommandQueue];
      if (v31)
      {
        v32 = v31;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v33 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_commandQueue);
        *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_commandQueue) = v32;
        swift_unknownObjectRelease();
LABEL_20:
        v38 = *MEMORY[0x277D85DE8];
        return;
      }

      lazy protocol witness table accessor for type CoveragePointRenderer.Error and conformance CoveragePointRenderer.Error();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      v36 = v39[0];
      v37 = _convertNSErrorToError(_:)();

      swift_willThrow();
      lazy protocol witness table accessor for type CoveragePointRenderer.Error and conformance CoveragePointRenderer.Error();
      swift_allocError();
      swift_willThrow();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_20;
  }

LABEL_29:
  __break(1u);
}

id CoveragePointRenderer.createUniforms(coveragePointCloud:)(uint64_t a1)
{
  result = [*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_device) newBufferWithLength:880 options:0];
  if (!result)
  {
    goto LABEL_20;
  }

  v4 = result;
  v5 = [swift_unknownObjectRetain() contents];
  v6 = v4;
  v7 = type metadata accessor for ObjectCaptureSession.Frame.PointCloud();
  v104.i64[0] = v94;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v13 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v94 - v14;
  v103.i64[0] = a1;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, v94 - v14, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  result = (*(v8 + 48))(v15, 1, v7);
  if (result == 1)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  (*(v8 + 32))(v11, v15, v7);
  ObjectCaptureSession.Frame.PointCloud.points.getter();
  v16 = dispatch thunk of OCDataBuffer.count.getter();

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(v16))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v100.i64[0] = v8;
  v101.i64[0] = v7;
  v102.i64[0] = v4;
  *(v5 + 135) = v16;
  v17 = *(v105.i64[0] + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewportSize);
  *(v5 + 137) = v17 * 0.01;
  v99.i64[0] = v11;
  ObjectCaptureSession.Frame.PointCloud.transform.getter();
  *v5 = v18;
  *(v5 + 1) = v19;
  *(v5 + 2) = v20;
  *(v5 + 3) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = v94 - v24;
  v26 = *(type metadata accessor for CoveragePointCloud() + 20);
  v27 = v103.i64[0];
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v103.i64[0] + v26, v25, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v28 = type metadata accessor for ObjectCaptureSession.Frame.Object();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (v30(v25, 1, v28) == 1)
  {
    v31 = outlined destroy of PerspectiveCameraComponent?(v25, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    v32 = *(MEMORY[0x277D860B8] + 16);
    v98 = *MEMORY[0x277D860B8];
    v97 = v32;
    v33 = *(MEMORY[0x277D860B8] + 48);
    v96 = *(MEMORY[0x277D860B8] + 32);
    v95 = v33;
  }

  else
  {
    ObjectCaptureSession.Frame.Object.transform.getter();
    v98 = v34;
    v97 = v35;
    v96 = v36;
    v95 = v37;
    v31 = (*(v29 + 8))(v25, v28);
  }

  MEMORY[0x28223BE20](v31);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v27 + v26, v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  if (v30(v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v28) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    v38 = *MEMORY[0x277D860B8];
    v39 = *(MEMORY[0x277D860B8] + 16);
    v40 = *(MEMORY[0x277D860B8] + 32);
    v41 = *(MEMORY[0x277D860B8] + 48);
  }

  else
  {
    ObjectCaptureSession.Frame.Object.boundingBox.getter();
    v94[3] = v42;
    v94[2] = v43;
    v94[1] = v44;
    v94[0] = v45;
    (*(v29 + 8))(v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
  }

  v46 = v102.i64[0];
  v47 = v101.i64[0];
  v48 = v100.i64[0];
  v49 = v99.i64[0];
  Transform.init(matrix:)();
  v104 = v50;
  v102 = v51;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CoveragePointCloud.objectToInitialBoxWorld.getter);
  *v52.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*v102.i64, v104);
  v53 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v98, v52.f32[0]), v97, *v52.f32, 1), v96, v52, 2), v95, v52, 3);
  v55 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v98, v54.f32[0]), v97, *v54.f32, 1), v96, v54, 2), v95, v54, 3);
  v57 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v98, v56.f32[0]), v97, *v56.f32, 1), v96, v56, 2), v95, v56, 3);
  v59 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v98, v58.f32[0]), v97, *v58.f32, 1), v96, v58, 2), v95, v58, 3);
  *(v5 + 8) = v53;
  *(v5 + 9) = v55;
  *(v5 + 10) = v57;
  *(v5 + 11) = v59;
  v60 = v105.i64[0];
  v61 = (v105.i64[0] + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewToWorld);
  *(v5 + 3) = __invert_f4(*(v105.i64[0] + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_viewToWorld));
  v62 = v61[1];
  v63 = v61[2];
  v64 = v61[3];
  *(v5 + 16) = *v61;
  *(v5 + 17) = v62;
  *(v5 + 18) = v63;
  *(v5 + 19) = v64;
  v65 = *(v60 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_projection + 16);
  v66 = *(v60 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_projection + 32);
  v67 = *(v60 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_projection + 48);
  *(v5 + 20) = *(v60 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_projection);
  *(v5 + 21) = v65;
  *(v5 + 22) = v66;
  *(v5 + 23) = v67;
  CoveragePointRenderer.computeOffsetDeltaViewTransform()();
  *(v5 + 24) = v68;
  *(v5 + 25) = v69;
  *(v5 + 26) = v70;
  *(v5 + 27) = v71;
  *(v5 + 56) = *(v60 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_reticleDeltaVector);
  *(v5 + 114) = *(v60 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_motionGoodness);
  v5[552] = 0;
  if (CoveragePointCloud.isValid()())
  {
    *v72.i64 = CoveragePointCloud.bboxWorld.getter();
    v76 = 0;
    v108[0].i8[0] = 0;
  }

  else
  {
    v76 = 1;
    v72 = 0uLL;
    v73 = 0uLL;
    v74 = 0uLL;
    v75 = 0uLL;
  }

  v104 = v73;
  v105 = v72;
  v108[0] = v72;
  v108[1] = v73;
  v102 = v75;
  v103 = v74;
  v108[2] = v74;
  v108[3] = v75;
  v109 = v76;
  v77 = specialized static BoundingBoxHelpers.getBoundingSphere(boxWorld:)(v108);
  v77.n128_u32[2] = v78;
  *(v5 + 35) = v77;
  *(v5 + 144) = v79;
  if (v76)
  {
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0uLL;
    v84 = 0uLL;
    v85 = 0uLL;
    v86 = 0uLL;
    v87 = 0uLL;
  }

  else
  {
    Transform.init(matrix:)();
    v100 = v88;
    v99 = v89;
    v88.f32[0] = vmuls_lane_f32(0.5, v90, 2);
    v89.i64[0] = 0x3F0000003F000000;
    v89.i64[1] = 0x3F0000003F000000;
    v90.i64[0] = vmulq_f32(v90, v89).u64[0];
    v90.i64[1] = v88.u32[0];
    v91 = vrecpeq_f32(v90);
    v92 = vmulq_f32(v91, vrecpsq_f32(v90, v91));
    v101 = vmulq_f32(v92, vrecpsq_f32(v90, v92));
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CoveragePointRenderer.createUniforms(coveragePointCloud:));
    *v110.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*v99.i64, v100);
    v111 = __invert_f4(v110);
    v100 = v111.columns[0];
    v99 = v111.columns[1];
    v98 = v111.columns[2];
    v97 = v111.columns[3];
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of CoveragePointRenderer.createUniforms(coveragePointCloud:));
    v86 = v97;
    v85 = v98;
    v84 = v99;
    v87 = v101;
    v83 = v100;
    v82 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v105, *&v93), v104, *&v93, 1), v103, v93, 2), v102, v93, 3).i32[1];
    v81 = 0x400000003FC00000;
    v80 = 1;
  }

  v107 = 0;
  v106 = 0;
  *(v5 + 37) = v83;
  *(v5 + 38) = v84;
  *(v5 + 39) = v85;
  *(v5 + 40) = v86;
  *(v5 + 41) = v87;
  *(v5 + 84) = v81;
  v5[680] = v80;
  v5[683] = 0;
  *(v5 + 681) = 0;
  *(v5 + 171) = v82;
  *(v5 + 344) = 1;
  (*(v48 + 8))(v49, v47);
  return v46;
}

uint64_t CoveragePointRenderer.computeOffsetDeltaViewTransform()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for CoveragePointCloud();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_coveragePointCloud;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v11, v5, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = outlined destroy of PerspectiveCameraComponent?(v5, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    v13 = *MEMORY[0x277D860B8];
    v14 = *(MEMORY[0x277D860B8] + 16);
    v15 = *(MEMORY[0x277D860B8] + 32);
    v16 = *(MEMORY[0x277D860B8] + 48);
  }

  else
  {
    outlined init with take of CoveragePointCloud(v5, v10);
    CoveragePointCloud.bboxWorld.getter();
    Transform.init(matrix:)();
    v18 = vmulq_f32(v17, v17);
    v19 = sqrtf(v18.f32[2] + vaddv_f32(*v18.f32));
    Transform.init()();
    v32 = v21;
    v33 = v20;
    *&v20 = v19 * -0.5;
    v31 = v20;
    v22 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_reticleDeltaVector);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91A6D0;
    v24.i32[0] = v31;
    v24.f32[1] = -(v19 * -0.5);
    *(inited + 32) = vmul_f32(v22, v24);
    *(inited + 40) = 0;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
    v31 = v25;
    swift_setDeallocating();
    *&v26 = specialized simd_float4x4.init(translation:rotation:scale:)(*&v31, v32);
    v32 = v27;
    v33 = v26;
    v30 = v29;
    v31 = v28;
    return outlined destroy of CoveragePointCloud(v10, type metadata accessor for CoveragePointCloud);
  }

  return result;
}

id CoveragePointRenderer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoveragePointRenderer(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for CoveragePointRenderer()
{
  type metadata accessor for Published<UIInterfaceOrientation>(319, &lazy cache variable for type metadata for Published<UIInterfaceOrientation>, type metadata accessor for UIInterfaceOrientation, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Published<UIInterfaceOrientation>(319, &lazy cache variable for type metadata for CoveragePointCloud?, type metadata accessor for CoveragePointCloud, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata completion function for CoveragePointRenderer.ResourceEntry()
{
  type metadata accessor for MTLBuffer?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<UIInterfaceOrientation>(319, &lazy cache variable for type metadata for ObjectCaptureSession.Frame.PointCloud?, MEMORY[0x282217610], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for MTLBuffer?()
{
  if (!lazy cache variable for type metadata for MTLBuffer?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo9MTLBuffer_pMd, &_sSo9MTLBuffer_pMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MTLBuffer?);
    }
  }
}

void type metadata accessor for Published<UIInterfaceOrientation>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CoveragePointRenderer@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CoveragePointRenderer(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t outlined init with take of CoveragePointCloud(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoveragePointCloud();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t key path getter for CoveragePointRenderer.interfaceOrientation : CoveragePointRenderer@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for CoveragePointRenderer.interfaceOrientation : CoveragePointRenderer(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type CoveragePointRenderer.Error and conformance CoveragePointRenderer.Error()
{
  result = lazy protocol witness table cache variable for type CoveragePointRenderer.Error and conformance CoveragePointRenderer.Error;
  if (!lazy protocol witness table cache variable for type CoveragePointRenderer.Error and conformance CoveragePointRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoveragePointRenderer.Error and conformance CoveragePointRenderer.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CoveragePointRenderer.Error and conformance CoveragePointRenderer.Error;
  if (!lazy protocol witness table cache variable for type CoveragePointRenderer.Error and conformance CoveragePointRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoveragePointRenderer.Error and conformance CoveragePointRenderer.Error);
  }

  return result;
}

uint64_t outlined destroy of CoveragePointCloud(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized CoveragePointCloudMiniView.init(model:renderer:)@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v32 = a1;
  v3 = type metadata accessor for NSNotificationCenter.Publisher();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO15MakeConnectableVy_So20NSNotificationCenterC10FoundationE9PublisherVGMd, &_s7Combine10PublishersO15MakeConnectableVy_So20NSNotificationCenterC10FoundationE9PublisherVGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = [objc_opt_self() currentDevice];
  v14 = [v13 orientation];

  v33 = v14;
  type metadata accessor for UIDeviceOrientation(0);
  State.init(wrappedValue:)();
  v30 = v35;
  v31 = v34;
  v15 = [objc_opt_self() defaultCenter];
  v16 = *MEMORY[0x277D76878];
  NSNotificationCenter.publisher(for:object:)();

  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x277CC9DB0]);
  Publisher<>.makeConnectable()();
  (*(v4 + 8))(v7, v3);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Publishers.MakeConnectable<NSNotificationCenter.Publisher> and conformance Publishers.MakeConnectable<A>, &_s7Combine10PublishersO15MakeConnectableVy_So20NSNotificationCenterC10FoundationE9PublisherVGMd, &_s7Combine10PublishersO15MakeConnectableVy_So20NSNotificationCenterC10FoundationE9PublisherVGMR);
  v17 = ConnectablePublisher.autoconnect()();
  (*(v9 + 8))(v12, v8);
  type metadata accessor for DataModel(0);
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel);

  v18 = ObservedObject.init(wrappedValue:)();
  v20 = v19;
  type metadata accessor for CoveragePointRenderer(0);
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(&lazy protocol witness table cache variable for type CoveragePointRenderer and conformance CoveragePointRenderer, type metadata accessor for CoveragePointRenderer);
  v21 = v32;
  v22 = ObservedObject.init(wrappedValue:)();
  v24 = v23;
  v25 = &v21[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_id];
  v27 = *&v21[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_id];
  v26 = *(v25 + 1);

  *a2 = v27;
  a2[1] = result;
  a2[2] = v18;
  a2[3] = v20;
  a2[4] = v22;
  a2[5] = v24;
  v29 = v30;
  a2[6] = v31;
  a2[7] = v29;
  a2[8] = v17;
  return result;
}

uint64_t outlined init with copy of CoveragePointCloud(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoveragePointCloud();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for MTKView()
{
  result = lazy cache variable for type metadata for MTKView;
  if (!lazy cache variable for type metadata for MTKView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MTKView);
  }

  return result;
}

double _s19_RealityKit_SwiftUI23CommonCircleRenderStateVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 288) = 1;
  return result;
}

uint64_t lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<SubscriptionView<Published<UIInterfaceOrientation>.Publisher, SubscriptionView<Publishers.Autoconnect<Publishers.MakeConnectable<NSNotificationCenter.Publisher>>, ModifiedContent<CoveragePointCloudMiniViewWrapper, _AppearanceActionModifier>>>, _RotationEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<Published<UIInterfaceOrientation>.Publisher, SubscriptionView<Publishers.Autoconnect<Publishers.MakeConnectable<NSNotificationCenter.Publisher>>, ModifiedContent<CoveragePointCloudMiniViewWrapper, _AppearanceActionModifier>>>, _RotationEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<Published<UIInterfaceOrientation>.Publisher, SubscriptionView<Publishers.Autoconnect<Publishers.MakeConnectable<NSNotificationCenter.Publisher>>, ModifiedContent<CoveragePointCloudMiniViewWrapper, _AppearanceActionModifier>>>, _RotationEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GAEyAF10PublishersO11AutoconnectCy_AO15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAIVGGACy012_RealityKit_aB0022CoveragePointCloudMiniF7Wrapper33_5B9EEC18CAADE25D2C0394A3CF8442B0LLVAA25_AppearanceActionModifierVGGGAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GAEyAF10PublishersO11AutoconnectCy_AO15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAIVGGACy012_RealityKit_aB0022CoveragePointCloudMiniF7Wrapper33_5B9EEC18CAADE25D2C0394A3CF8442B0LLVAA25_AppearanceActionModifierVGGGAA15_RotationEffectVGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SubscriptionView<Published<UIInterfaceOrientation>.Publisher, SubscriptionView<Publishers.Autoconnect<Publishers.MakeConnectable<NSNotificationCenter.Publisher>>, ModifiedContent<CoveragePointCloudMiniViewWrapper, _AppearanceActionModifier>>> and conformance SubscriptionView<A, B>, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GACyAD10PublishersO11AutoconnectCy_AM15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAGVGGAA15ModifiedContentVy012_RealityKit_aB0022CoveragePointCloudMiniD7Wrapper33_5B9EEC18CAADE25D2C0394A3CF8442B0LLVAA25_AppearanceActionModifierVGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySo22UIInterfaceOrientationV_GACyAD10PublishersO11AutoconnectCy_AM15MakeConnectableVy_So20NSNotificationCenterC10FoundationEAGVGGAA15ModifiedContentVy012_RealityKit_aB0022CoveragePointCloudMiniD7Wrapper33_5B9EEC18CAADE25D2C0394A3CF8442B0LLVAA25_AppearanceActionModifierVGGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<Published<UIInterfaceOrientation>.Publisher, SubscriptionView<Publishers.Autoconnect<Publishers.MakeConnectable<NSNotificationCenter.Publisher>>, ModifiedContent<CoveragePointCloudMiniViewWrapper, _AppearanceActionModifier>>>, _RotationEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CoveragePointCloudMiniViewWrapper and conformance CoveragePointCloudMiniViewWrapper()
{
  result = lazy protocol witness table cache variable for type CoveragePointCloudMiniViewWrapper and conformance CoveragePointCloudMiniViewWrapper;
  if (!lazy protocol witness table cache variable for type CoveragePointCloudMiniViewWrapper and conformance CoveragePointCloudMiniViewWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoveragePointCloudMiniViewWrapper and conformance CoveragePointCloudMiniViewWrapper);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CoveragePointCloudMiniViewWrapper and conformance CoveragePointCloudMiniViewWrapper;
  if (!lazy protocol witness table cache variable for type CoveragePointCloudMiniViewWrapper and conformance CoveragePointCloudMiniViewWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoveragePointCloudMiniViewWrapper and conformance CoveragePointCloudMiniViewWrapper);
  }

  return result;
}

Swift::Void __swiftcall BaseRenderer.updateDepthAttachmentTexture(width:height:)(Swift::Int width, Swift::Int height)
{
  v3 = v2;
  v6 = *(v2 + 32);
  if (v6 && [v6 width] == width)
  {
    v7 = *(v2 + 32);
    if (!v7)
    {
      __break(1u);
      return;
    }

    if ([v7 height] == height)
    {
      return;
    }
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134349312;
    *(v11 + 4) = width;
    *(v11 + 12) = 2050;
    *(v11 + 14) = height;
    _os_log_impl(&dword_23B824000, v9, v10, "Creating depth attachment texture w=%{public}ld h=%{public}ld", v11, 0x16u);
    MEMORY[0x23EEB0B70](v11, -1, -1);
  }

  v12 = BaseRenderer.makeDepthAttachmentTexture(width:height:)(width, height);
  v13 = *(v3 + 32);
  *(v3 + 32) = v12;

  swift_unknownObjectRelease();
}

id BaseRenderer.makeDepthAttachmentTexture(width:height:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v5 setTextureType_];
  [v5 setPixelFormat_];
  [v5 setWidth_];
  [v5 setHeight_];
  [v5 setUsage_];
  [v5 setStorageMode_];
  v6 = [*(v2 + 16) newTextureWithDescriptor_];
  if (v6)
  {
    v7 = MEMORY[0x23EEAF480](0xD00000000000002BLL, 0x800000023B926C70);
    [v6 setLabel_];
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23B824000, v9, v10, "can't make depthAttachment texture", v11, 2u);
      MEMORY[0x23EEB0B70](v11, -1, -1);
    }

    lazy protocol witness table accessor for type BaseRenderer.Error and conformance BaseRenderer.Error();
    swift_allocError();
    swift_willThrow();
  }

  return v6;
}

uint64_t BaseRenderer.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void specialized BaseRenderer.init(device:width:height:)(void *a1, Swift::Int a2, Swift::Int a3)
{
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = a1;
  v7 = objc_allocWithZone(MEMORY[0x277CD6D60]);
  swift_unknownObjectRetain();
  v8 = [v7 init];
  [v8 setDepthCompareFunction_];
  [v8 setDepthWriteEnabled_];
  v9 = [a1 newDepthStencilStateWithDescriptor_];

  if (v9)
  {
    v10 = v3[3];
    v3[3] = v9;
    swift_unknownObjectRelease();
    BaseRenderer.updateDepthAttachmentTexture(width:height:)(a2, a3);
  }

  else
  {
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type BaseRenderer.Error and conformance BaseRenderer.Error()
{
  result = lazy protocol witness table cache variable for type BaseRenderer.Error and conformance BaseRenderer.Error;
  if (!lazy protocol witness table cache variable for type BaseRenderer.Error and conformance BaseRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BaseRenderer.Error and conformance BaseRenderer.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BaseRenderer.Error and conformance BaseRenderer.Error;
  if (!lazy protocol witness table cache variable for type BaseRenderer.Error and conformance BaseRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BaseRenderer.Error and conformance BaseRenderer.Error);
  }

  return result;
}

BOOL _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudV_s5NeverOytTg5033_s19_RealityKit_SwiftUI18Coverageij26V7updated05pointG04poseAC6c4OC20efg2C5H27V0fG0VSg_AK0M0VSgtFyAMXEfU_01_mn1_O2UI0qiJ0VTf1cn_n(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - v6;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, v18 - v6, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v8 = type metadata accessor for ObjectCaptureSession.Frame.PointCloud();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  v11 = v10;
  if (v10 != 1)
  {
    v12 = *(v9 + 64);
    MEMORY[0x28223BE20](v10);
    v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 32))(v14, v7, v8);
    ObjectCaptureSession.Frame.PointCloud.points.getter();
    v15 = dispatch thunk of OCDataBuffer.count.getter();

    if (v15 >= 1)
    {
      ObjectCaptureSession.Frame.PointCloud.points.getter();
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v16 = dispatch thunk of OCDataBuffer.asMTLBuffer(from:)();

      if (v16)
      {
        swift_unknownObjectRelease();
        outlined destroy of PerspectiveCameraComponent?(a2, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
        (*(v9 + 16))(a2, v14, v8);
        (*(v9 + 56))(a2, 0, 1, v8);
      }
    }

    (*(v9 + 8))(v14, v8);
  }

  return v11 == 1;
}

BOOL _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF6CoreOC20ObjectCaptureSessionC5FrameV0E0V_s5NeverOytTg5069_s19_RealityKit_SwiftUI18CoveragePointCloudV7updated05pointG04poseAC6c4OC20efg2C5H28V0fG0VSg_AK0M0VSgtFyAPXEfU0_01_kl1_M2UI0opQ0VTf1cn_n(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, &v28 - v6, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v8 = type metadata accessor for ObjectCaptureSession.Frame.Object();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  v11 = v10;
  if (v10 != 1)
  {
    v12 = *(v9 + 64);
    MEMORY[0x28223BE20](v10);
    v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 32))(v14, v7, v8);
    ObjectCaptureSession.Frame.Object.transform.getter();
    v16 = vextq_s8(v15, v15, 8uLL);
    v18 = vextq_s8(v17, v17, 0xCuLL);
    v19 = vextq_s8(v15, v15, 0xCuLL);
    v20 = vextq_s8(v17, v17, 8uLL);
    v22 = vextq_s8(v17, v17, 4uLL);
    v23 = vextq_s8(v15, v15, 4uLL);
    v25 = vmulq_f32(v24, vmlaq_f32(vmlaq_f32(vmulq_f32(vextq_s8(v21, v21, 8uLL), vmlaq_f32(vmulq_f32(v18, vnegq_f32(v23)), v22, v19)), vmlaq_f32(vmulq_f32(v20, vnegq_f32(v19)), v18, v16), vextq_s8(v21, v21, 4uLL)), vmlaq_f32(vmulq_f32(v22, vnegq_f32(v16)), v20, v23), vextq_s8(v21, v21, 0xCuLL)));
    v21.i64[0] = vextq_s8(v25, v25, 8uLL).u64[0];
    if (fabsf(vaddv_f32(vsub_f32(vzip1_s32(*v25.i8, *v21.i8), vzip2_s32(*v25.i8, *v21.i8)))) > 0.001)
    {
      v26 = *(type metadata accessor for CoveragePointCloud() + 20);
      outlined destroy of PerspectiveCameraComponent?(a2 + v26, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
      (*(v9 + 16))(a2 + v26, v14, v8);
      (*(v9 + 56))(a2 + v26, 0, 1, v8);
    }

    (*(v9 + 8))(v14, v8);
  }

  return v11 == 1;
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.subscript.getter();
}

uint64_t DataModel.Error.errorDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DataModel.Error(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DataModel.Error(v1, v5, type metadata accessor for DataModel.Error);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v18 = *v5;
      v19 = v5[1];
      v27 = 0;
      v28 = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      v27 = 0xD000000000000017;
      v28 = 0x800000023B927860;
      MEMORY[0x23EEAF590](v18, v19);

      v13 = 34;
      v14 = 0xE100000000000000;
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v15 = *v5;
      v16 = v5[1];
      v27 = 0;
      v28 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v27 = 0xD000000000000011;
      v28 = 0x800000023B927800;
      MEMORY[0x23EEAF590](v15, v16);

      v13 = 32032;
      v14 = 0xE200000000000000;
      goto LABEL_11;
    }

    v20 = type metadata accessor for ObjectCaptureSession.Error();
    v21 = *(v20 - 8);
    v22 = *(v21 + 64);
    MEMORY[0x28223BE20](v20);
    v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
    (*(v21 + 32))(&v27 - v23, v5, v20);
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v27 = 0xD00000000000001BLL;
    v28 = 0x800000023B927840;
    MEMORY[0x28223BE20](v24);
    (*(v21 + 16))(&v27 - v23, &v27 - v23, v20);
    v25 = String.init<A>(describing:)();
    MEMORY[0x23EEAF590](v25);

    v26 = v27;
    (*(v21 + 8))(&v27 - v23, v20);
    return v26;
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return 0xD00000000000003ELL;
    }

    else
    {
      return 0xD00000000000001BLL;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v7 = *v5;
      v27 = 0;
      v28 = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      MEMORY[0x23EEAF590](0xD00000000000002BLL, 0x800000023B927790);
      v8 = static PhotogrammetryFileHelpers.byteFormatter.getter();
      v9 = [v8 stringFromByteCount_];

      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      MEMORY[0x23EEAF590](v10, v12);

      v13 = 0x7473206565726620;
      v14 = 0xEE002E656761726FLL;
LABEL_11:
      MEMORY[0x23EEAF590](v13, v14);
      return v27;
    }

    return 0x64696C61766E692ELL;
  }
}

uint64_t DataModel.State.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ObjectCaptureSession.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  (v8)(v7, a1, v4);
  v9 = (*(v5 + 88))(v7, v4);
  if (MEMORY[0x277D00478] && v9 == *MEMORY[0x277D00478])
  {
    (*(v5 + 8))(a1, v4);
    (*(v5 + 96))(&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v10 = type metadata accessor for ObjectCaptureSession.Error();
    (*(*(v10 - 8) + 32))(a2, &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    v11 = type metadata accessor for DataModel.Error(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v11 - 8) + 56))(a2, 0, 8, v11);
  }

  if (MEMORY[0x277D00468] && v9 == *MEMORY[0x277D00468])
  {
    (*(v5 + 8))(a1, v4);
    v13 = type metadata accessor for DataModel.Error(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a2;
    v16 = 1;
    return v14(v15, v16, 8, v13);
  }

  if (MEMORY[0x277D00488] && v9 == *MEMORY[0x277D00488])
  {
    (*(v5 + 8))(a1, v4);
    v13 = type metadata accessor for DataModel.Error(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a2;
    v16 = 2;
    return v14(v15, v16, 8, v13);
  }

  if (MEMORY[0x277D00470] && v9 == *MEMORY[0x277D00470])
  {
    (*(v5 + 8))(a1, v4);
    v13 = type metadata accessor for DataModel.Error(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a2;
    v16 = 4;
    return v14(v15, v16, 8, v13);
  }

  if (MEMORY[0x277D00480] && v9 == *MEMORY[0x277D00480])
  {
    (*(v5 + 8))(a1, v4);
    v13 = type metadata accessor for DataModel.Error(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a2;
    v16 = 3;
    return v14(v15, v16, 8, v13);
  }

  if (MEMORY[0x277D004A0] && v9 == *MEMORY[0x277D004A0])
  {
    (*(v5 + 8))(a1, v4);
    v13 = type metadata accessor for DataModel.Error(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a2;
    v16 = 5;
    return v14(v15, v16, 8, v13);
  }

  if (MEMORY[0x277D00490] && v9 == *MEMORY[0x277D00490])
  {
    (*(v5 + 8))(a1, v4);
    v13 = type metadata accessor for DataModel.Error(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a2;
    v16 = 6;
    return v14(v15, v16, 8, v13);
  }

  if (MEMORY[0x277D004A8] && v9 == *MEMORY[0x277D004A8] || MEMORY[0x277D00498] && v9 == *MEMORY[0x277D00498])
  {
    (*(v5 + 8))(a1, v4);
    v13 = type metadata accessor for DataModel.Error(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a2;
    v16 = 7;
    return v14(v15, v16, 8, v13);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v38 = __swift_project_value_buffer(v17, logger);
  v40 = &v31;
  MEMORY[0x28223BE20](v38);
  v39 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = v20;
    v36 = swift_slowAlloc();
    v41 = v36;
    *v20 = 136315138;
    v21 = v39;
    v22 = descriptionString(for:)(v39);
    v32 = v23;
    v33 = v22;
    v35 = v19;
    v24 = *(v5 + 8);
    v34 = v18;
    v38 = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v21, v4);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, &v41);

    v26 = v37;
    *(v37 + 1) = v25;
    v27 = v34;
    _os_log_impl(&dword_23B824000, v34, v35, "Unknown state: %s", v26, 0xCu);
    v28 = v36;
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x23EEB0B70](v28, -1, -1);
    MEMORY[0x23EEB0B70](v37, -1, -1);

    v29 = a1;
  }

  else
  {

    v24 = *(v5 + 8);
    v38 = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(a1, v4);
    v29 = v39;
  }

  v24(v29, v4);
  v30 = type metadata accessor for DataModel.Error(0);
  (*(*(v30 - 8) + 56))(a2, 6, 8, v30);
  return (v24)(v7, v4);
}

uint64_t DataModel.state.getter()
{
  return DataModel.state.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

void DataModel.captureMode.didset()
{
  v1 = v0;
  v2 = type metadata accessor for AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.CaptureMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = type metadata accessor for UUID();
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = *(v38 + 64);
  MEMORY[0x28223BE20](v10);
  v40 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AnalyticsManager.ObjectCaptureSessionCaptureModeEvent();
  v41 = *(v13 - 8);
  v42 = v13;
  v14 = *(v41 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, logger);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36 = v3;
    v37 = v7;
    v35 = v2;
    v21 = v20;
    v22 = v9;
    v23 = swift_slowAlloc();
    v44 = v23;
    *v21 = 136315138;
    v43 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode);
    v24 = String.init<A>(describing:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v44);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_23B824000, v18, v19, "Switching capture mode into: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    v27 = v23;
    v9 = v22;
    MEMORY[0x23EEB0B70](v27, -1, -1);
    v28 = v21;
    v2 = v35;
    v3 = v36;
    v7 = v37;
    MEMORY[0x23EEB0B70](v28, -1, -1);
  }

  v29 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (!v29)
  {
    goto LABEL_11;
  }

  v30 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode;
  v31 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode);
  v32 = v29;
  if (v31 == 2)
  {
    if ((dispatch thunk of ObjectCaptureSession.isFreeformModeEnabled.getter() & 1) == 0)
    {
LABEL_15:

      __break(1u);
      return;
    }

    if (*(v1 + v30) == 2)
    {

      goto LABEL_11;
    }
  }

  v33 = dispatch thunk of ObjectCaptureSession.isFreeformModeEnabled.getter();

  if (v33)
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_11:
  v34 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode;
  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode))
  {
    type metadata accessor for AnalyticsManager();
    static AnalyticsManager.shared.getter();
    (*(v38 + 16))(v40, v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_sessionID, v39);
    (*(v3 + 104))(v7, **(&unk_278B8A048 + *(v1 + v34)), v2);
    (*(v3 + 32))(v9, v7, v2);
    AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.init(sessionID:captureMode:)();
    dispatch thunk of AnalyticsManager.sendObjectCaptureSessionCaptureModeEvent(event:)();

    (*(v41 + 8))(v16, v42);
  }
}

uint64_t DataModel.showMiniView.getter()
{
  return DataModel.showMiniView.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double DataModel.miniViewScreenRotationAngle.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

float DataModel.cameraIso.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t DataModel.coveragePointRenderer.getter()
{
  return DataModel.coveragePointRenderer.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void DataModel.shouldPlayHaptics.didset()
{
  v1 = v0;
  v2 = [objc_msgSend(objc_opt_self() capabilitiesForHardware)];
  swift_unknownObjectRelease();
  if ((v2 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v16 == 1)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, logger);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_23B824000, v4, v5, "shouldPlayHaptics cannot be set to true on a device not supporting haptics.  Haptics will not be played.", v6, 2u);
        MEMORY[0x23EEB0B70](v6, -1, -1);
      }

      swift_getKeyPath();
      swift_getKeyPath();

      v7 = static Published.subscript.setter();
      DataModel.shouldPlayHaptics.didset(v7);
    }
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v11 + 4) = v14;

    _os_log_impl(&dword_23B824000, v9, v10, "Set shouldPlayHaptics to %{BOOL}d.", v11, 8u);
    MEMORY[0x23EEB0B70](v11, -1, -1);
  }

  else
  {
  }

  v12 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_hapticManager);
  if (v12)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v13 = *(v12 + 16);
    *(v12 + 16) = v15;
    HapticManager.enabled.didset(v13);
  }
}

uint64_t protocol witness for DetectBoxDelegate.isManualMode(_:) in conformance DataModel.LocalDetectBoxDelegate()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t protocol witness for DetectBoxDelegate.didRaycastManualBox() in conformance DataModel.LocalDetectBoxDelegate()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t DataModel.init()()
{
  v1 = v0;
  v2 = type metadata accessor for ARView.CameraMode();
  v221 = *(v2 - 8);
  v222 = v2;
  v3 = *(v221 + 64);
  MEMORY[0x28223BE20](v2);
  v223 = &v183 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMd, &_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMR);
  v218 = *(v5 - 8);
  v219 = v5;
  v6 = *(v218 + 64);
  MEMORY[0x28223BE20](v5);
  v217 = &v183 - v7;
  v216 = type metadata accessor for CoveragePointCloud();
  v8 = *(*(v216 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v216);
  v215 = &v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v214 = &v183 - v11;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys5SIMD2VySfGGMd, &_s7Combine9PublishedVys5SIMD2VySfGGMR);
  v212 = *(v213 - 1);
  v12 = v212[8];
  MEMORY[0x28223BE20](v213);
  v211 = &v183 - v13;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v209 = *(v210 - 8);
  v14 = *(v209 + 64);
  MEMORY[0x28223BE20](v210);
  v208 = &v183 - v15;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4UUIDVGMd, &_s7Combine9PublishedVy10Foundation4UUIDVGMR);
  v206 = *(v207 - 8);
  v16 = *(v206 + 64);
  MEMORY[0x28223BE20](v207);
  v205 = &v183 - v17;
  v204 = type metadata accessor for UUID();
  v203 = *(v204 - 8);
  v18 = *(v203 + 64);
  v19 = MEMORY[0x28223BE20](v204);
  v202 = &v183 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v201 = &v183 - v21;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy19_RealityKit_SwiftUI21FreeformCloudRendererCSgGMd, &_s7Combine9PublishedVy19_RealityKit_SwiftUI21FreeformCloudRendererCSgGMR);
  v194 = *(v200 - 1);
  v22 = *(v194 + 64);
  MEMORY[0x28223BE20](v200);
  v193 = &v183 - v23;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy19_RealityKit_SwiftUI21CoveragePointRendererCSgGMd, &_s7Combine9PublishedVy19_RealityKit_SwiftUI21CoveragePointRendererCSgGMR);
  v191 = *(v192 - 8);
  v24 = *(v191 + 64);
  MEMORY[0x28223BE20](v192);
  v190 = &v183 - v25;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  v188 = *(v189 - 8);
  v26 = *(v188 + 64);
  MEMORY[0x28223BE20](v189);
  v187 = &v183 - v27;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy7SwiftUI5AngleVGMd, &_s7Combine9PublishedVy7SwiftUI5AngleVGMR);
  v185 = *(v186 - 8);
  v28 = *(v185 + 64);
  MEMORY[0x28223BE20](v186);
  v184 = &v183 - v29;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v30 = *(v224 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v224);
  v33 = &v183 - v32;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy19_RealityKit_SwiftUI9DataModelC5StateOGMd, &_s7Combine9PublishedVy19_RealityKit_SwiftUI9DataModelC5StateOGMR);
  v34 = *(v183 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v183);
  v37 = &v183 - v36;
  v38 = type metadata accessor for DataModel.State(0);
  v198 = *(v38 - 8);
  v39 = *(v198 + 64);
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v183 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v44 = &v183 - v43;
  v1[2] = 0;
  v220 = (v1 + 2);
  v1[3] = 0;
  v1[4] = 0;
  v45 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__state;
  v46 = type metadata accessor for DataModel.Error(0);
  v47 = *(v46 - 8);
  v48 = *(v47 + 56);
  v197 = v46;
  v196 = v48;
  v195 = v47 + 56;
  (v48)(v44, 1, 8);
  outlined init with copy of DataModel.Error(v44, v42, type metadata accessor for DataModel.State);
  v199 = v38;
  Published.init(initialValue:)();
  outlined destroy of DataModel.Error(v44, type metadata accessor for DataModel.State);
  (*(v34 + 32))(v1 + v45, v37, v183);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) = 0;
  v49 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__showMiniView;
  LOBYTE(v227) = 0;
  Published.init(initialValue:)();
  v50 = *(v30 + 32);
  v51 = v224;
  v50(v1 + v49, v33, v224);
  v52 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__miniViewScreenRotationAngle;
  v227 = 0;
  v53 = v184;
  Published.init(initialValue:)();
  (*(v185 + 32))(v1 + v52, v53, v186);
  v54 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__showCenterReticle;
  LOBYTE(v227) = 0;
  Published.init(initialValue:)();
  v50(v1 + v54, v33, v51);
  v55 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__userSelectedToHideObjectReticle;
  LOBYTE(v227) = 0;
  Published.init(initialValue:)();
  v50(v1 + v55, v33, v51);
  v56 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__cameraIso;
  LODWORD(v227) = 0;
  v57 = v187;
  Published.init(initialValue:)();
  (*(v188 + 32))(v1 + v56, v57, v189);
  v58 = (v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_onFeedback);
  *v58 = 0;
  v58[1] = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldDebugDraw) = 0;
  v59 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__debuggingMode;
  LOBYTE(v227) = 0;
  Published.init(initialValue:)();
  v50(v1 + v59, v33, v51);
  v60 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__manualBoxMode;
  LOBYTE(v227) = 0;
  Published.init(initialValue:)();
  v50(v1 + v60, v33, v51);
  v61 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__raycastManualBox;
  LOBYTE(v227) = 0;
  Published.init(initialValue:)();
  v50(v1 + v61, v33, v51);
  v62 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_depthHazeStartPercent;
  *(v1 + v62) = specialized static ExperimentSettings.loadDepthHazeStartPercent(default:)(0.25);
  v63 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__coveragePointRenderer;
  v227 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI21CoveragePointRendererCSgMd, &_s19_RealityKit_SwiftUI21CoveragePointRendererCSgMR);
  v64 = v190;
  Published.init(initialValue:)();
  (*(v191 + 32))(v1 + v63, v64, v192);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_fullscreenCoveragePointsRenderer) = 0;
  v65 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__freeformCloudRenderer;
  v227 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI21FreeformCloudRendererCSgMd, &_s19_RealityKit_SwiftUI21FreeformCloudRendererCSgMR);
  v66 = v193;
  Published.init(initialValue:)();
  (*(v194 + 32))(v1 + v65, v66, v200);
  v67 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraPathManager;
  *(v1 + v67) = [objc_allocWithZone(type metadata accessor for CameraPathManager()) init];
  v68 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__shouldPlayHaptics;
  LOBYTE(v66) = [objc_msgSend(objc_opt_self() capabilitiesForHardware)];
  swift_unknownObjectRelease();
  LOBYTE(v227) = v66;
  Published.init(initialValue:)();
  v50(v1 + v68, v33, v51);
  v69 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__isBoundingBoxAnimationPlaying;
  LOBYTE(v227) = 0;
  Published.init(initialValue:)();
  v200 = v50;
  v50(v1 + v69, v33, v51);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localDetectBoxCallbacks) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_startDetectingReticleDelay) = 0x3FC999999999999ALL;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureBoxModel) = 0;
  v70 = v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform;
  v228 = 1;
  *v70 = 0u;
  *(v70 + 1) = 0u;
  *(v70 + 2) = 0u;
  *(v70 + 3) = 0u;
  v70[64] = 1;
  v71 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_metalDevice;
  *(v1 + v71) = MTLCreateSystemDefaultDevice();
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_arFrameProcessor) = 0;
  v72 = v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_frameProcessorUpdateSubscription;
  *v72 = 0u;
  *(v72 + 1) = 0u;
  *(v72 + 4) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSessionSubscriptions) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession) = 0;
  v73 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_soundManager;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  *(v1 + v73) = static SoundManager.instance;
  v74 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_hapticManager;
  v75 = one-time initialization token for instance;

  if (v75 != -1)
  {
    swift_once();
  }

  *(v1 + v74) = static HapticManager.instance;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator) = 0;
  v76 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imagesURL;
  v77 = type metadata accessor for URL();
  (*(*(v77 - 8) + 56))(v1 + v76, 1, 1, v77);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriter) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriterLoggingTimer) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriterCompleted) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isInternalSessionCompleted) = 0;
  v196(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_previousState, 1, 8, v197);
  (*(v198 + 56))(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_stateBeforePause, 1, 1, v199);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isBackgrounded) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldResumeWhenReturningFromBackground) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isObjectFlippable) = 2;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastShotTime) = 0xFFF0000000000000;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_binFillAnimationDurationSecs) = 1048576000;
  v78 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__id;

  v79 = v201;
  UUID.init()();
  v80 = v203;
  v81 = v204;
  (*(v203 + 16))(v202, v79, v204);
  v82 = v205;
  Published.init(initialValue:)();
  (*(v80 + 8))(v79, v81);
  (*(v206 + 32))(v1 + v78, v82, v207);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_tornDown) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_meshManager) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isRunning) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_pointCloudsBySegment) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_currentSegmentID) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle) = 0;
  v83 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_manualShotRefractoryTimer;
  type metadata accessor for ManualTimer();
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_23B91F760;
  *(v1 + v83) = v84;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isAutoCaptureEnabled) = 1;
  UUID.init()();
  v85 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__canTakeManualShot;
  LOBYTE(v227) = 0;
  Published.init(initialValue:)();
  v86 = v200;
  v200(v1 + v85, v33, v51);
  v87 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__numShotsTaken;
  v227 = 0;
  v88 = v208;
  Published.init(initialValue:)();
  v89 = *(v209 + 32);
  v90 = v210;
  v89(v1 + v87, v88, v210);
  v91 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__numShotsTakenThisSegment;
  v227 = 0;
  Published.init(initialValue:)();
  v89(v1 + v91, v88, v90);
  v92 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__userCompletedOrbit;
  LOBYTE(v227) = 0;
  Published.init(initialValue:)();
  v93 = v224;
  v86(v1 + v92, v33, v224);
  v94 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__triggerShakeReticle;
  LOBYTE(v227) = 0;
  Published.init(initialValue:)();
  v95 = v93;
  v86(v1 + v94, v33, v93);
  v96 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__reticleAimVector;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DataModel.init());
  v227 = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  v98 = v211;
  Published.init(initialValue:)();
  (v212[4])(v1 + v96, v98, v213);
  v99 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__shouldShowARKitCoachingView;
  LOBYTE(v227) = 0;
  Published.init(initialValue:)();
  v86(v1 + v99, v33, v95);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_numUnsuccessfulDetects) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_maxUnsuccessfulDetects) = 2;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_enableOverCaptureWhenInternalSessionCreated) = 0;
  v100 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_userFeedbackSystem;
  type metadata accessor for UserFeedbackSystem();
  v101 = swift_allocObject();
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of UserFeedbackSystem.init());
  *(v101 + 16) = v102;
  *(v101 + 24) = 953267991;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of UserFeedbackSystem.init());
  *(v101 + 32) = v103;
  *(v101 + 48) = 0;
  *(v101 + 56) = 0;
  *(v101 + 40) = 0;
  *(v101 + 64) = xmmword_23B91F770;
  *(v1 + v100) = v101;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_minSpeedGoodness) = 1050253722;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanPassID) = -1;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderManager) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderObserver) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_dynamicScanVolumeEstimator) = 0;
  v104 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldEstimateDynamicScanVolume;
  *(v1 + v104) = specialized static ExperimentSettings.loadFreeformDynamicScanVolumeEnabled(default:)(1u) & 1;
  v105 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_freeformPointDensityThreshold;
  *(v1 + v105) = specialized static ExperimentSettings.loadFreeformPointDensityThreshold(default:)(80);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_sphereSplatRange) = 0x400000003E800000;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_updateDynamicVolumePeriod) = 0x3FB999999999999ALL;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastDynamicVolumeUpdateTime) = 0;
  v224 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__latestCoveragePointCloud;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v213 = &v183;
  v107 = (*(*(v106 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v106 - 8);
  v109 = &v183 - v108;
  v110 = type metadata accessor for ObjectCaptureSession.Frame.PointCloud();
  v111 = *(*(v110 - 8) + 56);
  v111(v109, 1, 1, v110);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v212 = &v183;
  v113 = (*(*(v112 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v112 - 8);
  v115 = &v183 - v114;
  v116 = type metadata accessor for ObjectCaptureSession.Frame.Object();
  v117 = *(*(v116 - 8) + 56);
  v117(v115, 1, 1, v116);
  v118 = v214;
  v111(v214, 1, 1, v110);
  v119 = *(v216 + 20);
  v117((v118 + v119), 1, 1, v116);
  outlined assign with take of Cancellable?(v109, v118, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  outlined assign with take of Cancellable?(v115, v118 + v119, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  outlined init with copy of DataModel.Error(v118, v215, type metadata accessor for CoveragePointCloud);
  v120 = v217;
  Atomic.init(wrappedValue:)();
  outlined destroy of DataModel.Error(v118, type metadata accessor for CoveragePointCloud);
  (*(v218 + 32))(v1 + v224, v120, v219);
  v121 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_sphericalPulseDuration;
  *(v1 + v121) = specialized static PlatterRenderer.shotPulseDuration.getter();
  v122 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastCameraFeedback;
  v123 = type metadata accessor for ARCamera.TrackingState();
  (*(*(v123 - 8) + 56))(v1 + v122, 1, 1, v123);
  v124 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastFeedback;
  v125 = type metadata accessor for ObjectCaptureSession.Frame.Feedback();
  (*(*(v125 - 8) + 56))(v1 + v124, 1, 1, v125);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_showMiniViewTransitionDurationSecs) = 0x3FE0000000000000;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_tapGesture) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_panGesture) = 0;
  v126 = v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_updateSubscription;
  *v126 = 0u;
  *(v126 + 1) = 0u;
  *(v126 + 4) = 0;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel____lazy_storage___arViewResolution) = 5;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v127 = type metadata accessor for Logger();
  __swift_project_value_buffer(v127, logger);
  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    *v130 = 0;
    _os_log_impl(&dword_23B824000, v128, v129, "DataModel.init()...", v130, 2u);
    MEMORY[0x23EEB0B70](v130, -1, -1);
  }

  v131 = Logger.logObject.getter();
  v132 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    *v133 = 0;
    _os_log_impl(&dword_23B824000, v131, v132, "Making PostProcessRenderManager...", v133, 2u);
    MEMORY[0x23EEB0B70](v133, -1, -1);
  }

  v134 = v220;
  if (!*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_metalDevice))
  {
    goto LABEL_32;
  }

  v135 = type metadata accessor for PostProcessRenderManager();
  v136 = *(v135 + 48);
  v137 = *(v135 + 52);
  swift_allocObject();
  v138 = swift_unknownObjectRetain();
  v139 = PostProcessRenderManager.init(device:)(v138);
  v140 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer) = v139;

  if (!v139)
  {
    goto LABEL_32;
  }

  v141 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraPathManager);
  type metadata accessor for CameraFrustumRendererForShots();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraFrustumRendererForShots) = specialized CameraFrustumRendererForShots.init(cameraPathManager:)();
  v142 = Logger.logObject.getter();
  v143 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    *v144 = 0;
    _os_log_impl(&dword_23B824000, v142, v143, "DataModel.init(): Making the arView...", v144, 2u);
    MEMORY[0x23EEB0B70](v144, -1, -1);
  }

  (*(v221 + 104))(v223, *MEMORY[0x277CDB590], v222);
  v145 = objc_allocWithZone(type metadata accessor for ARView());
  v146 = ARView.init(frame:cameraMode:automaticallyConfigureSession:)();
  v147 = *v134;
  *v134 = v146;

  if (*v134)
  {
    v148 = *v134;
    specialized DataModel.setCustomRenderOptions(on:)();

    if (*v134)
    {
      v149 = *v134;
      dispatch thunk of ARView.__disableCounterRotation.setter();

      v150 = type metadata accessor for DataModel.LocalARCoachingViewDelegate();
      v151 = objc_allocWithZone(v150);
      swift_weakInit();
      v226.receiver = v151;
      v226.super_class = v150;

      v152 = objc_msgSendSuper2(&v226, sel_init);
      swift_weakAssign();
      v153 = v1[4];
      v1[4] = v152;

      v154 = [objc_allocWithZone(MEMORY[0x277CE53D0]) initWithFrame_];
      v155 = v1[3];
      v1[3] = v154;

      v156 = v1[3];
      if (v156)
      {
        v157 = *v134;
        if (*v134)
        {
          v158 = v156;
          v157 = [v157 session];
        }

        else
        {
          v158 = v156;
        }

        [v158 setSession_];

        v159 = v1[3];
        if (v159)
        {
          [v159 setActivatesAutomatically_];
          v160 = v1[3];
          if (v160)
          {
            [v160 setActive:1 animated:1];
            v161 = v1[3];
            if (v161)
            {
              [v161 setDelegate_];
            }
          }
        }
      }

      v162 = [objc_opt_self() currentDevice];
      v163 = [v162 userInterfaceIdiom];

      if (v163)
      {
        goto LABEL_28;
      }

      DataModel.setMTLPixelFormat(to:)(81);
      v164 = v1[2];
      if (v164)
      {
        v165 = v164;
        DataModel.arViewResolution.getter();
        specialized DataModel.computeFactorScale(arViewResolution:)();
        v167 = v166;
        v168 = [objc_opt_self() mainScreen];
        [v168 scale];
        v170 = v169;

        [v165 setContentScaleFactor_];
LABEL_28:
        v171 = type metadata accessor for DataModel.LocalDetectBoxDelegate();
        v172 = objc_allocWithZone(v171);
        swift_weakInit();
        swift_weakAssign();
        v225.receiver = v172;
        v225.super_class = v171;
        v173 = objc_msgSendSuper2(&v225, sel_init);

        v174 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localDetectBoxCallbacks);
        *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localDetectBoxCallbacks) = v173;
        v175 = v173;

        type metadata accessor for DetectModeBoxModel();
        swift_allocObject();

        v177 = specialized DetectModeBoxModel.init(model:delegate:)(v176, v173, &protocol witness table for DataModel.LocalDetectBoxDelegate);

        v178 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel);
        *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel) = v177;

        type metadata accessor for CaptureModeBoxModel();
        swift_allocObject();

        v180 = specialized CaptureModeBoxModel.init(model:)(v179);

        v181 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureBoxModel);
        *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureBoxModel) = v180;

        swift_getKeyPath();
        swift_getKeyPath();
        v227 = 0;

        static Published.subscript.setter();
        return v1;
      }

      goto LABEL_31;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id *DataModel.deinit()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "~~~ DataModel deinit was called!", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__state;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy19_RealityKit_SwiftUI9DataModelC5StateOGMd, &_s7Combine9PublishedVy19_RealityKit_SwiftUI9DataModelC5StateOGMR);
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__showMiniView;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v10 = *(*(v9 - 8) + 8);
  v10(v1 + v8, v9);
  v11 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__miniViewScreenRotationAngle;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy7SwiftUI5AngleVGMd, &_s7Combine9PublishedVy7SwiftUI5AngleVGMR);
  (*(*(v12 - 8) + 8))(v1 + v11, v12);
  v10(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__showCenterReticle, v9);
  v10(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__userSelectedToHideObjectReticle, v9);
  v13 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__cameraIso;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySfGMd, &_s7Combine9PublishedVySfGMR);
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  v15 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_onFeedback + 8);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_onFeedback));
  v10(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__debuggingMode, v9);
  v10(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__manualBoxMode, v9);
  v10(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__raycastManualBox, v9);
  v16 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__coveragePointRenderer;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy19_RealityKit_SwiftUI21CoveragePointRendererCSgGMd, &_s7Combine9PublishedVy19_RealityKit_SwiftUI21CoveragePointRendererCSgGMR);
  (*(*(v17 - 8) + 8))(v1 + v16, v17);

  v18 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__freeformCloudRenderer;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy19_RealityKit_SwiftUI21FreeformCloudRendererCSgGMd, &_s7Combine9PublishedVy19_RealityKit_SwiftUI21FreeformCloudRendererCSgGMR);
  (*(*(v19 - 8) + 8))(v1 + v18, v19);
  v20 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraFrustumRendererForShots);

  v10(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__shouldPlayHaptics, v9);
  v10(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__isBoundingBoxAnimationPlaying, v9);
  v21 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel);

  v22 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureBoxModel);

  v23 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_metalDevice);
  swift_unknownObjectRelease();
  v24 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer);

  v25 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_arFrameProcessor);

  outlined destroy of PerspectiveCameraComponent?(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_frameProcessorUpdateSubscription, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  v26 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSessionSubscriptions);

  v27 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_soundManager);

  v28 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_hapticManager);

  v29 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator);

  outlined destroy of PerspectiveCameraComponent?(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imagesURL, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v30 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriter);

  outlined destroy of DataModel.Error(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_previousState, type metadata accessor for DataModel.State);
  outlined destroy of PerspectiveCameraComponent?(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_stateBeforePause, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
  v31 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__id;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4UUIDVGMd, &_s7Combine9PublishedVy10Foundation4UUIDVGMR);
  (*(*(v32 - 8) + 8))(v1 + v31, v32);
  v33 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_meshManager);

  v34 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_pointCloudsBySegment);

  v35 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle);

  v36 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_manualShotRefractoryTimer);

  v37 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_sessionID;
  v38 = type metadata accessor for UUID();
  (*(*(v38 - 8) + 8))(v1 + v37, v38);
  v10(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__canTakeManualShot, v9);
  v39 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__numShotsTaken;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v41 = *(*(v40 - 8) + 8);
  v41(v1 + v39, v40);
  v41(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__numShotsTakenThisSegment, v40);
  v10(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__userCompletedOrbit, v9);
  v10(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__triggerShakeReticle, v9);
  v42 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__reticleAimVector;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys5SIMD2VySfGGMd, &_s7Combine9PublishedVys5SIMD2VySfGGMR);
  (*(*(v43 - 8) + 8))(v1 + v42, v43);
  v10(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__shouldShowARKitCoachingView, v9);
  v44 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_userFeedbackSystem);

  v45 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderManager);

  v46 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_dynamicScanVolumeEstimator);

  v47 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__latestCoveragePointCloud;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMd, &_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMR);
  (*(*(v48 - 8) + 8))(v1 + v47, v48);
  outlined destroy of PerspectiveCameraComponent?(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastCameraFeedback, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMd, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMR);
  outlined destroy of PerspectiveCameraComponent?(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastFeedback, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMR);

  outlined destroy of PerspectiveCameraComponent?(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_updateSubscription, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return v1;
}

uint64_t DataModel.__deallocating_deinit()
{
  DataModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void type metadata completion function for DataModel()
{
  type metadata accessor for Published<DataModel.State>(319, &lazy cache variable for type metadata for Published<DataModel.State>, type metadata accessor for DataModel.State, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v33 = *(v0 - 8) + 64;
    type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Bool>);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Angle>);
      if (v6 <= 0x3F)
      {
        v34 = *(v5 - 8) + 64;
        type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Float>);
        if (v8 <= 0x3F)
        {
          v35 = *(v7 - 8) + 64;
          type metadata accessor for Published<CoveragePointRenderer?>(319, &lazy cache variable for type metadata for Published<CoveragePointRenderer?>, &_s19_RealityKit_SwiftUI21CoveragePointRendererCSgMd, &_s19_RealityKit_SwiftUI21CoveragePointRendererCSgMR);
          if (v10 <= 0x3F)
          {
            v36 = *(v9 - 8) + 64;
            type metadata accessor for Published<CoveragePointRenderer?>(319, &lazy cache variable for type metadata for Published<FreeformCloudRenderer?>, &_s19_RealityKit_SwiftUI21FreeformCloudRendererCSgMd, &_s19_RealityKit_SwiftUI21FreeformCloudRendererCSgMR);
            if (v12 <= 0x3F)
            {
              v37 = *(v11 - 8) + 64;
              type metadata accessor for Published<DataModel.State>(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
              if (v14 <= 0x3F)
              {
                v38 = *(v13 - 8) + 64;
                v15 = type metadata accessor for DataModel.State(319);
                if (v16 <= 0x3F)
                {
                  v39 = *(v15 - 8) + 64;
                  type metadata accessor for Published<DataModel.State>(319, &lazy cache variable for type metadata for DataModel.State?, type metadata accessor for DataModel.State, MEMORY[0x277D83D88]);
                  if (v18 <= 0x3F)
                  {
                    v40 = *(v17 - 8) + 64;
                    type metadata accessor for Published<DataModel.State>(319, &lazy cache variable for type metadata for Published<UUID>, MEMORY[0x277CC95F0], MEMORY[0x277CBCED0]);
                    if (v20 <= 0x3F)
                    {
                      v41 = *(v19 - 8) + 64;
                      v21 = type metadata accessor for UUID();
                      if (v22 <= 0x3F)
                      {
                        v42 = *(v21 - 8) + 64;
                        type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Int>);
                        if (v24 <= 0x3F)
                        {
                          v43 = *(v23 - 8) + 64;
                          type metadata accessor for Published<CoveragePointRenderer?>(319, &lazy cache variable for type metadata for Published<SIMD2<Float>>, &_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
                          if (v26 <= 0x3F)
                          {
                            v44 = *(v25 - 8) + 64;
                            type metadata accessor for Published<DataModel.State>(319, &lazy cache variable for type metadata for Atomic<CoveragePointCloud>, type metadata accessor for CoveragePointCloud, MEMORY[0x277CDB568]);
                            if (v28 <= 0x3F)
                            {
                              v45 = *(v27 - 8) + 64;
                              type metadata accessor for Published<DataModel.State>(319, &lazy cache variable for type metadata for ARCamera.TrackingState?, MEMORY[0x277D82DB0], MEMORY[0x277D83D88]);
                              if (v30 <= 0x3F)
                              {
                                v46 = *(v29 - 8) + 64;
                                type metadata accessor for Published<DataModel.State>(319, &lazy cache variable for type metadata for ObjectCaptureSession.Frame.Feedback?, MEMORY[0x282217630], MEMORY[0x277D83D88]);
                                if (v32 <= 0x3F)
                                {
                                  v47 = *(v31 - 8) + 64;
                                  swift_updateClassMetadata2();
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t specialized OptionSet<>.insert(_:)(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_10RealityKit6ARViewC13RenderOptionsV17memberAfterInserttMd, &_sSb8inserted_10RealityKit6ARViewC13RenderOptionsV17memberAfterInserttMR);
  v4 = *(*(v30 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v30);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = type metadata accessor for ARView.RenderOptions();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = *(v10 + 16);
  v29 = v2;
  v17(v14, v2, v9);
  v18 = MEMORY[0x277CDB620];
  v27 = lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions, MEMORY[0x277CDB620]);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v19 = v18;
  v20 = v30;
  lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions, v19);
  v28 = a2;
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v20 + 48);
  *v8 = (v21 & 1) == 0;
  if (v21)
  {
    (*(v10 + 32))(&v8[v22], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v23 = v28;
    v17(&v8[v22], v28, v9);
    v17(v14, v23, v9);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v24 = v31;
  outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v8, v31, &_sSb8inserted_10RealityKit6ARViewC13RenderOptionsV17memberAfterInserttMd, &_sSb8inserted_10RealityKit6ARViewC13RenderOptionsV17memberAfterInserttMR);
  v25 = *v24;
  (*(v10 + 32))(v32, &v24[*(v20 + 48)], v9);
  return v25;
}

{
  v32 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsV17memberAfterInserttMd, &_sSb8inserted_10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsV17memberAfterInserttMR);
  v4 = *(*(v30 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v30);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = type metadata accessor for ARView.Environment.SceneUnderstanding.Options();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = *(v10 + 16);
  v29 = v2;
  v17(v14, v2, v9);
  v18 = MEMORY[0x277CDB5C8];
  v27 = lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type ARView.Environment.SceneUnderstanding.Options and conformance ARView.Environment.SceneUnderstanding.Options, MEMORY[0x277CDB5C8]);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v19 = v18;
  v20 = v30;
  lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type ARView.Environment.SceneUnderstanding.Options and conformance ARView.Environment.SceneUnderstanding.Options, v19);
  v28 = a2;
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v20 + 48);
  *v8 = (v21 & 1) == 0;
  if (v21)
  {
    (*(v10 + 32))(&v8[v22], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v23 = v28;
    v17(&v8[v22], v28, v9);
    v17(v14, v23, v9);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v24 = v31;
  outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v8, v31, &_sSb8inserted_10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsV17memberAfterInserttMd, &_sSb8inserted_10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsV17memberAfterInserttMR);
  v25 = *v24;
  (*(v10 + 32))(v32, &v24[*(v20 + 48)], v9);
  return v25;
}

{
  v32 = a1;
  v4 = type metadata accessor for ObjectCaptureSession.Frame.Feedback();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v33 = v5;
  v9 = *(v5 + 16);
  v31 = v2;
  v28 = v9;
  v29 = v10;
  v9(v27 - v10, v2, v4);
  v11 = MEMORY[0x282217640];
  v27[1] = lazy protocol witness table accessor for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback(&lazy protocol witness table cache variable for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback, MEMORY[0x282217640]);
  dispatch thunk of SetAlgebra.intersection(_:)();
  lazy protocol witness table accessor for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback(&lazy protocol witness table cache variable for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback, v11);
  v30 = a2;
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackV17memberAfterInserttMd, &_sSb8inserted_6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackV17memberAfterInserttMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v18 = *(v15 + 48);
  *(v27 - v16) = (v12 & 1) == 0;
  if (v12)
  {
    v19 = (*(v33 + 32))(&v17[v18], v8, v4);
  }

  else
  {
    (*(v33 + 8))(v8, v4);
    v20 = &v17[v18];
    v21 = v30;
    v22 = v28;
    v23 = (v28)(v20, v30, v4);
    MEMORY[0x28223BE20](v23);
    v22(v27 - v29, v21, v4);
    v19 = dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  MEMORY[0x28223BE20](v19);
  v24 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v17, v24, &_sSb8inserted_6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackV17memberAfterInserttMd, &_sSb8inserted_6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackV17memberAfterInserttMR);
  v25 = *v24;
  (*(v33 + 32))(v32, &v24[*(v13 + 48)], v4);
  return v25;
}

void DataModel.setupInitialSession(imagesDirectory:configuration:)(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v62 = type metadata accessor for ObjectCaptureSession.Configuration(0);
  v5 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v7 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v63 = v59 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = v59 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_29;
  }

  v61 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession;
  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  static PhotogrammetryFileHelpers.ensureDirectoryExists(directory:)();
  if (v3)
  {
    return;
  }

  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v64, v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    static PhotogrammetryFileHelpers.ensureDirectoryExists(directory:)();
    (*(v18 + 8))(v21, v17);
  }

  v22 = v63;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v64, v63, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  specialized DataModel.throwIfInsufficientStorage(imagesDirectory:checkpointDirectory:)(a1, v22);
  v60 = v2;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = __swift_project_value_buffer(v23, logger);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_23B824000, v25, v26, "Creating a new internal ObjectCaptureSession...", v27, 2u);
    MEMORY[0x23EEB0B70](v27, -1, -1);
  }

  v59[1] = v24;

  v28 = v60;
  v29 = *(v60 + 16);
  if (!v29)
  {
    goto LABEL_30;
  }

  v30 = [v29 session];
  v31 = *(v28 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_metalDevice);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v22, v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v32 = type metadata accessor for ObjectCaptureSession.Configuration();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  outlined init with copy of DataModel.Error(v64, v7, type metadata accessor for ObjectCaptureSession.Configuration);
  swift_unknownObjectRetain();
  ObjectCaptureSession.Configuration.init()();
  v34 = v7[*(v62 + 20)];
  ObjectCaptureSession.Configuration.enableOverCapture.setter();
  outlined destroy of DataModel.Error(v7, type metadata accessor for ObjectCaptureSession.Configuration);
  v35 = objc_allocWithZone(type metadata accessor for ObjectCaptureSession());
  v36 = ObjectCaptureSession.init(arSession:mtlDevice:motionManager:snapshotURL:configuration:)();
  v64 = 0;
  v37 = v36;
  v38 = v60;
  specialized DataModel.captureSession.setter(v36);

  v39 = v38;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v66 = v43;
    *v42 = 141558274;
    *(v42 + 4) = 1752392040;
    *(v42 + 12) = 2080;
    v65 = *(v38 + v61);
    v44 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionCSgMd, &_s6CoreOC20ObjectCaptureSessionCSgMR);
    v45 = String.init<A>(describing:)();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v66);

    *(v42 + 14) = v47;
    _os_log_impl(&dword_23B824000, v40, v41, "... successfully made the internal ObjectCaptureSession: %{mask.hash}s", v42, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    MEMORY[0x23EEB0B70](v43, -1, -1);
    MEMORY[0x23EEB0B70](v42, -1, -1);
  }

  v48 = v63;
  if ((*(v38 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isAutoCaptureEnabled) & 1) == 0)
  {
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_23B824000, v49, v50, "Disabling auto-capture after creating the internal session!", v51, 2u);
      MEMORY[0x23EEB0B70](v51, -1, -1);
    }

    v39 = v60;
    DataModel.pauseAutoCapture()();
  }

  if (!*(v39 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer))
  {
    goto LABEL_26;
  }

  v52 = *(v39 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer);

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_23B824000, v53, v54, "Attaching PostProcessRenderManager to ARView...", v55, 2u);
    MEMORY[0x23EEB0B70](v55, -1, -1);
  }

  v56 = v64;
  DataModel.startFrameProcessor()();
  if (v56)
  {
    outlined destroy of PerspectiveCameraComponent?(v48, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    return;
  }

  v57 = *(v60 + 16);
  if (!v57)
  {
    goto LABEL_31;
  }

  v64 = 0;
  if (!*(v60 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_arFrameProcessor))
  {
LABEL_32:
    __break(1u);
    return;
  }

  v58 = v57;

  PostProcessRenderManager.attach(to:frameProcessor:)();

LABEL_26:
  DataModel.subscribeToUpdateEvents()();
  outlined destroy of PerspectiveCameraComponent?(v48, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t DataModel.invalidateSession(error:)(uint64_t a1)
{
  v2 = type metadata accessor for DataModel.State(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23B824000, v10, v11, "Invalidate session was called...", v12, 2u);
    MEMORY[0x23EEB0B70](v12, -1, -1);
  }

  outlined init with copy of DataModel.Error(a1, v8, type metadata accessor for DataModel.Error);
  v13 = type metadata accessor for DataModel.Error(0);
  (*(*(v13 - 8) + 56))(v8, 0, 8, v13);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  DataModel.performStateTransition(from:to:)(v6, v8);
  outlined destroy of DataModel.Error(v6, type metadata accessor for DataModel.State);
  return outlined destroy of DataModel.Error(v8, type metadata accessor for DataModel.State);
}

Swift::Void __swiftcall DataModel.tearDown()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23B824000, v8, v9, "Tearing down data model...", v10, 2u);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  v11 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_tornDown;
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_tornDown))
  {
    v25 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23B824000, v25, v12, "Already torn down...  nothing to do.", v13, 2u);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }

    v14 = v25;

    return;
  }

  v15 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (v15)
  {
    v16 = v15;
    dispatch thunk of ObjectCaptureSession.cancel()();
  }

  specialized DataModel.captureSession.setter(0);
  DataModel.stopFrameProcessor()();
  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer))
  {
    v17 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer);

    PostProcessRenderManager.detach()();
  }

  if (!*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureBoxModel))
  {
    goto LABEL_24;
  }

  v18 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureBoxModel);

  CaptureModeBoxModel.disable()();

  v19 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel);
  if (!v19)
  {
LABEL_25:
    __break(1u);
    return;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);

  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v20 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  DetectModeBoxModel.performSwitchStateTransitions(from:to:)(*(v19 + 24), 0);
  *(v19 + 24) = 0;

  DataModel.unsubscribeFromUpdateEvents()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v21 = v26;
  if (v26)
  {
    CoveragePointRenderer.teardown()();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = v26;
  if (v26)
  {
    FreeformCloudRenderer.teardown()();
  }

  DataModel.removeGestureRecognizer()();
  v23 = *(v1 + 16);
  *(v1 + 16) = 0;

  v24 = *(v1 + 24);
  *(v1 + 24) = 0;

  *(v1 + v11) = 1;
}

void DataModel.startSession(imagesURL:configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v13 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession;
  if (*(v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession))
  {
    type metadata accessor for DataModel.Error(0);
    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error);
    swift_allocError();
    *v14 = 0xD000000000000036;
    v14[1] = 0x800000023B927BE0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  DataModel.setupInitialSession(imagesDirectory:configuration:)(a1, a2);
  if (v3)
  {
    return;
  }

  if (!*(v4 + v13))
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_12:
      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, logger);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v17, v18))
      {
LABEL_15:

        return;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "startSession: no session!";
LABEL_14:
      _os_log_impl(&dword_23B824000, v17, v18, v20, v19, 2u);
      MEMORY[0x23EEB0B70](v19, -1, -1);
      goto LABEL_15;
    }

LABEL_23:
    swift_once();
    goto LABEL_12;
  }

  v15 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isRunning;
  if (*(v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isRunning))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, logger);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_15;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "startSession: session already running!";
    goto LABEL_14;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, logger);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_23B824000, v23, v24, "Starting object capture session...", v25, 2u);
    MEMORY[0x23EEB0B70](v25, -1, -1);
  }

  DataModel.startSessionInternal(imagesURL:)(a1);
  *(v4 + v15) = 1;
}

void DataModel.resumeCaptureSession()()
{
  v1 = type metadata accessor for DataModel.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (v3)
  {
    v4 = v3;
    dispatch thunk of ObjectCaptureSession.resume()();
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, logger);

  v12 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_23B824000, v12, v6, "Capture session resume() called with current state=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x23EEB0B70](v8, -1, -1);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  else
  {
  }
}

void DataModel.pauseCaptureSession()()
{
  v1 = type metadata accessor for DataModel.State(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  (*(v2 + 56))(v7, 0, 1, v1);
  v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_stateBeforePause;
  swift_beginAccess();
  outlined assign with take of Cancellable?(v7, v0 + v8, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
  swift_endAccess();
  v9 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (v9)
  {
    v10 = v9;
    dispatch thunk of ObjectCaptureSession.pause(fastResuming:)();
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, logger);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136446210;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_23B824000, v12, v13, "Capture session pause() called with stateBeforePause=%{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x23EEB0B70](v15, -1, -1);
    MEMORY[0x23EEB0B70](v14, -1, -1);
  }
}

Swift::Void __swiftcall DataModel.prepareForBackground()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isBackgrounded))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);
    v27 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23B824000, v27, v10, "prepareForBackground() called when already isBackgrounded = true.  Ignoring...", v11, 2u);
      MEMORY[0x23EEB0B70](v11, -1, -1);
    }

    v12 = v27;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isBackgrounded) = 1;
    v13 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_stateBeforePause;
    swift_beginAccess();
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v13, v8, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
    v14 = type metadata accessor for DataModel.State(0);
    v27 = *(*(v14 - 8) + 48);
    v15 = (v27)(v8, 1, v14) == 1;
    outlined destroy of PerspectiveCameraComponent?(v8, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
    v16 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldResumeWhenReturningFromBackground;
    *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldResumeWhenReturningFromBackground) = v15;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, logger);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = *(v1 + v16);

      _os_log_impl(&dword_23B824000, v18, v19, "Ensuring paused capture session since moving to background.  Resume when returning = %{BOOL}d...", v20, 8u);
      MEMORY[0x23EEB0B70](v20, -1, -1);
    }

    else
    {
    }

    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v13, v6, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
    v21 = (v27)(v6, 1, v14);
    outlined destroy of PerspectiveCameraComponent?(v6, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    if (v21 == 1)
    {
      if (v24)
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_23B824000, v22, v23, "Session was running when moving to background, so pausing it...", v25, 2u);
        MEMORY[0x23EEB0B70](v25, -1, -1);
      }

      DataModel.pauseCaptureSession()();
    }

    else
    {
      if (v24)
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_23B824000, v22, v23, "Session was already paused when moving to background, so not pausing again.", v26, 2u);
        MEMORY[0x23EEB0B70](v26, -1, -1);
      }
    }
  }
}

Swift::Void __swiftcall DataModel.resumeFromBackground()()
{
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isBackgrounded) != 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v6))
    {
      goto LABEL_19;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "resumeFromBackground() called when !isBackgrounded!  Ignoring...";
    goto LABEL_18;
  }

  *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isBackgrounded) = 0;
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldResumeWhenReturningFromBackground) == 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, logger);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_23B824000, v2, v3, "Resuming from background after suspending while running, so resuming the session in progress...", v4, 2u);
      MEMORY[0x23EEB0B70](v4, -1, -1);
    }

    DataModel.resumeCaptureSession()();
    return;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Resuming from background after suspending while paused, so remaining paused...";
LABEL_18:
    _os_log_impl(&dword_23B824000, oslog, v6, v8, v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

LABEL_19:
}

Swift::Void __swiftcall DataModel.requestResume()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v5 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_stateBeforePause;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v0 + v5, v4, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
  v6 = type metadata accessor for DataModel.State(0);
  LODWORD(v5) = (*(*(v6 - 8) + 48))(v4, 1, v6);
  outlined destroy of PerspectiveCameraComponent?(v4, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
  if (v5 == 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, logger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_23B824000, v8, v9, "Resume requested when no pause active...  Ignoring resume request...", v10, 2u);
      MEMORY[0x23EEB0B70](v10, -1, -1);
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isBackgrounded))
  {
    v11 = v0;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, logger);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23B824000, v13, v14, "Resume requested when in the background...  Staying suspended but will resume when app becomes active again.", v15, 2u);
      MEMORY[0x23EEB0B70](v15, -1, -1);
    }

    *(v11 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldResumeWhenReturningFromBackground) = 1;
  }

  else
  {
    DataModel.resumeCaptureSession()();
  }
}

Swift::Void __swiftcall DataModel.requestPause()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v5 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_stateBeforePause;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v0 + v5, v4, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
  v6 = type metadata accessor for DataModel.State(0);
  LODWORD(v5) = (*(*(v6 - 8) + 48))(v4, 1, v6);
  outlined destroy of PerspectiveCameraComponent?(v4, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
  if (v5 == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isBackgrounded))
    {
      v7 = v0;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, logger);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_23B824000, v9, v10, "Pause requested when in the background...  Staying suspended but will remain paused when app becomes active again.", v11, 2u);
        MEMORY[0x23EEB0B70](v11, -1, -1);
      }

      *(v7 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldResumeWhenReturningFromBackground) = 0;
    }

    else
    {
      DataModel.pauseCaptureSession()();
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, logger);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23B824000, v13, v14, "Pause requested when another request was already made.  Ignoring new pause request...", v15, 2u);
      MEMORY[0x23EEB0B70](v15, -1, -1);
    }
  }
}

Swift::Void __swiftcall DataModel.beginNextSegment()()
{
  v1 = type metadata accessor for DataModel.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = type metadata accessor for DataModel.Error(0);
  if ((*(*(v5 - 8) + 48))(v4, 8, v5) != 3)
  {
    outlined destroy of DataModel.Error(v4, type metadata accessor for DataModel.State);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_13;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Can't begin next segment, ignoring...";
    goto LABEL_12;
  }

  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession))
  {
    DataModel.startNewSegment()();
    return;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, logger);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "No valid session!";
LABEL_12:
    _os_log_impl(&dword_23B824000, v7, v8, v10, v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

LABEL_13:
}

void DataModel.isAutoCaptureEnabled.didset()
{
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isAutoCaptureEnabled) == 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, logger);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_23B824000, v2, v3, "Enabling auto-capture!", v4, 2u);
      MEMORY[0x23EEB0B70](v4, -1, -1);
    }

    DataModel.resumeAutoCapture()();
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23B824000, v6, v7, "Disabling auto-capture!", v8, 2u);
      MEMORY[0x23EEB0B70](v8, -1, -1);
    }

    DataModel.pauseAutoCapture()();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DataModel.beginNewOrbit()()
{
  v2 = v0;
  v3 = type metadata accessor for DataModel.State(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v54 - v8;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, logger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_23B824000, v11, v12, "Beginning a new orbit...", v13, 2u);
    MEMORY[0x23EEB0B70](v13, -1, -1);
  }

  if ((DataModel.inCapturingMetaState.getter() & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v14 = type metadata accessor for DataModel.Error(0);
    (*(*(v14 - 8) + 56))(v7, 1, 8, v14);
    v15 = specialized static DataModel.State.== infix(_:_:)(v9, v7);
    outlined destroy of DataModel.Error(v7, type metadata accessor for DataModel.State);
    outlined destroy of DataModel.Error(v9, type metadata accessor for DataModel.State);
    if ((v15 & 1) == 0)
    {
      lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error);
      swift_allocError();
      *v53 = 0xD000000000000033;
      v53[1] = 0x800000023B927B30;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return;
    }
  }

  v16 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanPassID;
  v17 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanPassID);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_34;
  }

  *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanPassID) = v19;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = *(v2 + v16);

    _os_log_impl(&dword_23B824000, v20, v21, "Scan pass ID is now: %ld", v22, 0xCu);
    MEMORY[0x23EEB0B70](v22, -1, -1);
  }

  else
  {
  }

  v23 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (!v23 || *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) != 1)
  {
    goto LABEL_30;
  }

  v54[2] = v1;
  v24 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_23B824000, v25, v26, "Resetting the auto-capture pose graph...", v27, 2u);
    MEMORY[0x23EEB0B70](v27, -1, -1);
  }

  v28 = type metadata accessor for ObjectCaptureSession.State();
  v54[1] = v54;
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v55 = v24;
  v31 = dispatch thunk of ObjectCaptureSession.state.getter();
  MEMORY[0x28223BE20](v31);
  v32 = v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 104))(v32, *MEMORY[0x277D00480], v28);
  v33 = MEMORY[0x23EEAE410](v32, v32);
  v34 = *(v29 + 8);
  v34(v32, v28);
  v34(v32, v28);
  if (v33)
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_23B824000, v35, v36, "Internal session is paused.  Resuming temporarily to reset the graph...", v37, 2u);
      MEMORY[0x23EEB0B70](v37, -1, -1);
    }

    dispatch thunk of ObjectCaptureSession.resume()();
  }

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_23B824000, v38, v39, "Resetting pose graph...", v40, 2u);
    MEMORY[0x23EEB0B70](v40, -1, -1);
  }

  v41 = v55;
  dispatch thunk of ObjectCaptureSession.resetCapturePoseGraph()();
  if (v33)
  {
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_23B824000, v42, v43, "... re-pausing internal session after reset pose graph.", v44, 2u);
      MEMORY[0x23EEB0B70](v44, -1, -1);
    }

    dispatch thunk of ObjectCaptureSession.pause(fastResuming:)();
  }

  type metadata accessor for CaptureCircle();
  swift_allocObject();
  v45 = CaptureCircle.init(numBins:binFillAnimDurationSecs:)(96, 0.25);
  v46 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle;
  v47 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle);
  *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle) = v45;

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v48, v49))
  {

    goto LABEL_30;
  }

  v50 = swift_slowAlloc();
  *v50 = 134349056;
  v51 = *(v2 + v46);
  if (!v51)
  {
LABEL_34:

    __break(1u);
    return;
  }

  *(v50 + 4) = *(v51 + 16);
  v52 = v50;

  _os_log_impl(&dword_23B824000, v48, v49, "... new orbit made a new CaptureCircle with id= %{public}ld", v52, 0xCu);
  MEMORY[0x23EEB0B70](v52, -1, -1);

LABEL_30:
  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator))
  {
    DeviceMotionEstimator.reset()();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v56 = 0;

  static Published.subscript.setter();
}

Swift::Bool __swiftcall DataModel.takeManualShot()()
{
  v1 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (!v1)
  {
    goto LABEL_16;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.getter();

  if (v20 != 1)
  {

LABEL_16:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, logger);
    v2 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23B824000, v2, v18, "Manual shot requested when we in inhibition period!  Ignoring request...", v19, 2u);
      MEMORY[0x23EEB0B70](v19, -1, -1);
    }

    goto LABEL_20;
  }

  v3 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, "Taking manual shot!", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  if ((dispatch thunk of ObjectCaptureSession.takeManualShot()() & 1) == 0)
  {
LABEL_20:

    return 0;
  }

  v8 = COERCE_DOUBLE(dispatch thunk of ObjectCaptureSession.captureCoolDownTime.getter());
  if (v9)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = v8;
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v10;
    _os_log_impl(&dword_23B824000, v11, v12, "Setting manual shot inhibition period to %f seconds.", v13, 0xCu);
    MEMORY[0x23EEB0B70](v13, -1, -1);
  }

  if (v10 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v15 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime);
    v16 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_manualShotRefractoryTimer);
    *(v16 + 16) = v10 + v15;
    *(v16 + 24) = v15;
    return 1;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DataModel.startDetecting()()
{
  v1 = v0;
  v2 = type metadata accessor for DataModel.State(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v89 - v7;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23B824000, v10, v11, "startDetecting() called...", v12, 2u);
    MEMORY[0x23EEB0B70](v12, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = type metadata accessor for DataModel.Error(0);
  v14 = *(*(v13 - 8) + 56);
  v96 = v13;
  v14(v6, 4, 8);
  v15 = specialized static DataModel.State.== infix(_:_:)(v8, v6);
  outlined destroy of DataModel.Error(v6, type metadata accessor for DataModel.State);
  outlined destroy of DataModel.Error(v8, type metadata accessor for DataModel.State);
  if ((v15 & 1) == 0)
  {

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&t1.a = v31;
      *v30 = 136446210;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v32 = String.init<A>(describing:)();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &t1);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_23B824000, v28, v29, "startDetecting() called in wrong state=%{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x23EEB0B70](v31, -1, -1);
      MEMORY[0x23EEB0B70](v30, -1, -1);
    }

    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error);
    swift_allocError();
    v36 = v35;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *v36 = String.init<A>(describing:)();
    v36[1] = v37;
    goto LABEL_25;
  }

  v16 = v1;
  v17 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (!v17 || (v18 = *(v16 + 16)) == 0)
  {
LABEL_24:
    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error);
    swift_allocError();
    *v75 = 0xD000000000000033;
    v75[1] = 0x800000023B927BA0;
LABEL_25:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v92 = v16;
  v19 = v18;
  v20 = v17;
  v21 = [v19 session];
  v22 = [v21 currentFrame];

  if (!v22)
  {

    goto LABEL_24;
  }

  v23 = [v22 camera];

  [v23 imageResolution];
  v24 = v19;
  v25 = [v24 window];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 windowScene];

    if (v27)
    {
      [v27 interfaceOrientation];
    }
  }

  [v24 center];
  v39 = v38;
  v41 = v40;

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  v44 = os_log_type_enabled(v42, v43);
  v91 = v20;
  if (v44)
  {
    v45 = swift_slowAlloc();
    *&v90 = v24;
    v46 = v45;
    v47 = swift_slowAlloc();
    *&t2.a = v47;
    *v46 = 136446210;
    t1.a = v39;
    t1.b = v41;
    type metadata accessor for CGPoint(0);
    v48 = String.init<A>(describing:)();
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &t2);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_23B824000, v42, v43, "Target point screen: %{public}s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    MEMORY[0x23EEB0B70](v47, -1, -1);
    v51 = v46;
    v24 = v90;
    MEMORY[0x23EEB0B70](v51, -1, -1);
  }

  [v24 frame];
  v53 = v52;
  [v24 frame];
  CGAffineTransformMakeScale(&t1, 1.0 / v53, 1.0 / v54);
  tx = t1.tx;
  ty = t1.ty;
  v90 = *&t1.a;
  v89 = *&t1.c;
  ARViewToCameraImageTransform();
  v57 = *&t1.a;
  v58 = *&t1.c;
  v59 = *&t1.tx;
  *&t1.a = v90;
  *&t1.c = v89;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v57;
  *&t2.c = v58;
  *&t2.tx = v59;
  CGAffineTransformConcat(&v93, &t1, &t2);
  t1 = v93;
  v97.x = v39;
  v97.y = v41;
  v60 = CGPointApplyAffineTransform(v97, &t1);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *&t2.a = v64;
    *v63 = 136446210;
    t1.a = v60.x;
    t1.b = v60.y;
    type metadata accessor for CGPoint(0);
    v65 = String.init<A>(describing:)();
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &t2);

    *(v63 + 4) = v67;
    _os_log_impl(&dword_23B824000, v61, v62, "Calling detectObject on normalized point: %{public}s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    MEMORY[0x23EEB0B70](v64, -1, -1);
    MEMORY[0x23EEB0B70](v63, -1, -1);
  }

  v68 = v92;
  v69 = v91;
  v70 = dispatch thunk of ObjectCaptureSession.detectObject(at:)();
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  v73 = os_log_type_enabled(v71, v72);
  if (v70)
  {
    if (v73)
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_23B824000, v71, v72, "Requested object detection at center of screen... started detection successfully.", v74, 2u);
      MEMORY[0x23EEB0B70](v74, -1, -1);
    }

LABEL_37:
    *(v68 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) = 1;
    DataModel.captureMode.didset();
    return;
  }

  if (v73)
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_23B824000, v71, v72, "No object found!  Sending a shakeReticle message...", v76, 2u);
    MEMORY[0x23EEB0B70](v76, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(t1.a) = 1;

  static Published.subscript.setter();
  v77 = v68;
  v78 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_numUnsuccessfulDetects;
  v79 = *(v77 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_numUnsuccessfulDetects);
  v80 = __OFADD__(v79, 1);
  v81 = v79 + 1;
  if (!v80)
  {
    *(v77 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_numUnsuccessfulDetects) = v81;

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = *(v77 + v78);
      *v84 = 134218240;
      *(v84 + 4) = v85;
      *(v84 + 12) = 2048;
      *(v84 + 14) = 2;

      _os_log_impl(&dword_23B824000, v82, v83, "Unsuccessful object detection %ld out of %ld", v84, 0x16u);
      MEMORY[0x23EEB0B70](v84, -1, -1);
    }

    else
    {
    }

    if (*(v77 + v78) <= 1)
    {
      lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }

    v68 = v77;
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_23B824000, v86, v87, "Too many unsuccessful auto detections... using manual box flow!", v88, 2u);
      MEMORY[0x23EEB0B70](v88, -1, -1);
    }

    DataModel.startManualBoxMode()();
    goto LABEL_37;
  }

  __break(1u);
}

uint64_t DataModel.startManualBoxMode()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v0 - 8);
  v41 = v0;
  v1 = *(v40 + 64);
  MEMORY[0x28223BE20](v0);
  v37 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = type metadata accessor for DataModel.State(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, logger);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_23B824000, v22, v23, "Using manual box flow!", v24, 2u);
    MEMORY[0x23EEB0B70](v24, -1, -1);
  }

  v25 = type metadata accessor for DataModel.Error(0);
  (*(*(v25 - 8) + 56))(v20, 5, 8, v25);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  DataModel.performStateTransition(from:to:)(v18, v20);
  outlined destroy of DataModel.Error(v18, type metadata accessor for DataModel.State);
  outlined destroy of DataModel.Error(v20, type metadata accessor for DataModel.State);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v26 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v27 = *(v7 + 8);
  v34 = v6;
  v35 = v27;
  v27(v11, v6);
  v28 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in DataModel.startManualBoxMode();
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_509;
  v29 = _Block_copy(aBlock);

  v30 = v36;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v31 = v37;
  v32 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EEAF910](v13, v30, v31, v29);
  _Block_release(v29);

  (*(v40 + 8))(v31, v32);
  (*(v38 + 8))(v30, v39);
  return v35(v13, v34);
}

uint64_t closure #1 in DataModel.startManualBoxMode()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23B824000, v1, v2, "Async wait for 2D anim complete... starting manual box flow.", v3, 2u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel);

    if (v5)
    {
      DetectModeBoxModel.startRaycastManualBoxFlow()();
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DataModel.resetDetection()()
{
  v1 = v0;
  v2 = type metadata accessor for DataModel.State(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = type metadata accessor for DataModel.Error(0);
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 5, 8, v9);
  v11 = specialized static DataModel.State.== infix(_:_:)(v8, v6);
  outlined destroy of DataModel.Error(v6, type metadata accessor for DataModel.State);
  outlined destroy of DataModel.Error(v8, type metadata accessor for DataModel.State);
  if (v11)
  {
    goto LABEL_3;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10(v6, 4, 8, v9);
  v12 = specialized static DataModel.State.== infix(_:_:)(v8, v6);
  outlined destroy of DataModel.Error(v6, type metadata accessor for DataModel.State);
  outlined destroy of DataModel.Error(v8, type metadata accessor for DataModel.State);
  if (v12)
  {
LABEL_3:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23B824000, v14, v15, "resetDetection() called... switching back to .ready to reselect object!", v16, 2u);
      MEMORY[0x23EEB0B70](v16, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v21) = 0;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v21) = 0;

    static Published.subscript.setter();
    *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) = 0;
    DataModel.captureMode.didset();
    v10(v8, 4, 8, v9);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    DataModel.performStateTransition(from:to:)(v6, v8);
    outlined destroy of DataModel.Error(v6, type metadata accessor for DataModel.State);
    outlined destroy of DataModel.Error(v8, type metadata accessor for DataModel.State);
  }

  else
  {
    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error);
    swift_allocError();
    v18 = v17;
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v21 = 0xD000000000000020;
    v22 = 0x800000023B927B70;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v19 = String.init<A>(describing:)();
    MEMORY[0x23EEAF590](v19);

    v20 = v22;
    *v18 = v21;
    v18[1] = v20;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

void DataModel.addToScene(entity:)()
{
  v1 = type metadata accessor for Scene.AnchorCollection();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  if (v6)
  {
    v7 = v6;
    dispatch thunk of ARView.scene.getter();

    dispatch thunk of Scene.anchors.getter();

    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection, MEMORY[0x277CDB0C0]);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v17[4] == v17[0])
    {
      (*(v2 + 8))(v5, v1);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, logger);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_23B824000, v9, v10, "Expected anchor in addToScene but wasn't found!", v11, 2u);
        MEMORY[0x23EEB0B70](v11, -1, -1);
      }
    }

    else
    {
      v12 = dispatch thunk of Collection.subscript.read();
      v14 = *v13;

      v12(v17, 0);
      (*(v2 + 8))(v5, v1);
      v15 = *v14;
      HasHierarchy.addChild(_:preservingWorldTransform:)();
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DataModel.startCapturing()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode;
  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode))
  {
    if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) == 1)
    {
      DataModel.startObjectCapturing()();
      if (!v1)
      {
        goto LABEL_7;
      }

      return;
    }

    if (one-time initialization token for logger == -1)
    {
LABEL_9:
      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, logger);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_23B824000, v13, v14, "startCapturing() should not be called more than once in area mode... ignoring subsequent calls.", v15, 2u);
        MEMORY[0x23EEB0B70](v15, -1, -1);
      }

      return;
    }

LABEL_14:
    swift_once();
    goto LABEL_9;
  }

  DataModel.startFreeformCapturing()();
  if (!v1)
  {
LABEL_7:
    specialized static DataModel.makeDeviceMotionEstimatorDesc(captureMode:)(*(v2 + v9), v16);
    type metadata accessor for DeviceMotionEstimator();
    swift_allocObject();
    v10 = DeviceMotionEstimator.init(desc:)(v16);
    v11 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator);
    *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator) = v10;

    DataModel.createCloudViewRenderer()();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DataModel.stopCapturing()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AnalyticsManager.ObjectCaptureSessionImageStatsEvent();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v15 = _dispatchPreconditionTest(_:)();
  v17 = *(v11 + 8);
  v16 = (v11 + 8);
  v17(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v18 = 0xD000000000000013;
  if ((DataModel.inCapturingMetaState.getter() & 1) == 0)
  {
    v25 = "gment with nil captureSession!";
    v18 = 0xD000000000000098;
LABEL_10:
    type metadata accessor for DataModel.Error(0);
    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error);
    swift_allocError();
    *v26 = v18;
    v26[1] = v25 | 0x8000000000000000;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v19 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (!v19)
  {
    v25 = "tUI.LocalARCoachingViewDelegate";
    goto LABEL_10;
  }

  v20 = one-time initialization token for logger;
  v16 = v19;
  if (v20 != -1)
  {
LABEL_12:
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, logger);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_23B824000, v22, v23, "Stop capturing...", v24, 2u);
    MEMORY[0x23EEB0B70](v24, -1, -1);
  }

  dispatch thunk of ObjectCaptureSession.finish()();
  type metadata accessor for AnalyticsManager();
  static AnalyticsManager.shared.getter();
  (*(v28 + 16))(v5, v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_sessionID, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  AnalyticsManager.ObjectCaptureSessionImageStatsEvent.init(sessionID:numImages:)();
  dispatch thunk of AnalyticsManager.sendObjectCaptureSessionImageStatsEvent(event:)();

  (*(v29 + 8))(v9, v30);
}

Swift::Void __swiftcall DataModel.cancelCapturing()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23B824000, v9, v10, "Cancelling capture...", v11, 2u);
    MEMORY[0x23EEB0B70](v11, -1, -1);
  }

  v12 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (v12)
  {
    v13 = v12;
    dispatch thunk of ObjectCaptureSession.cancel()();
  }
}

void DataModel.currentMiniViewCameraWorldTransform.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode);
  if (v1 != 1)
  {
    if (v1 != 2)
    {
      __break(1u);
      goto LABEL_12;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!v5)
    {
      goto LABEL_13;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v2 = v5;
    v3 = *&v5[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraTransformProvider];
    if (v3)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v5)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_16;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = v5;
  v3 = *&v5[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_cameraTransformProvider];
  if (v3)
  {
LABEL_10:
    v4 = v3;
    InteractiveCameraTransformManager.computeCurrentTransform()();

    return;
  }

LABEL_16:
  __break(1u);
}

double DataModel.reticleAimVector.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void DataModel.shouldShowARKitCoachingView.didset()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v3 + 4) = v4;

    _os_log_impl(&dword_23B824000, v1, v2, "shouldShowARKitCoachingView = %{BOOL}d", v3, 8u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  else
  {
  }
}

float DataModel.userControlScore.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator);
  v2 = 1.0;
  v3 = 1.0;
  if (v1)
  {
    v4 = *(v1 + 136);
    v5 = 1.0;
    if (v4 <= 1.0)
    {
      v5 = *(v1 + 136);
    }

    if (v4 > 0.3)
    {
      v3 = v5;
    }

    else
    {
      v3 = 0.3;
    }
  }

  v6 = sqrtf(vaddv_f32(vmul_f32(v10, v10)));
  if (v6 <= 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  v8 = 1.0 - v7;
  if (v6 > 0.0)
  {
    v2 = v8;
  }

  return v2 * v3;
}

uint64_t DataModel.inCapturingMetaState.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DataModel.State(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v16 = type metadata accessor for DataModel.Error(0);
    v17 = *(*(v16 - 8) + 56);
    v17(v6, 6, 8, v16);
    v18 = specialized static DataModel.State.== infix(_:_:)(v8, v6);
    outlined destroy of DataModel.Error(v6, type metadata accessor for DataModel.State);
    outlined destroy of DataModel.Error(v8, type metadata accessor for DataModel.State);
    if (v18)
    {
      v19 = 1;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v17(v6, 3, 8, v16);
      v20 = specialized static DataModel.State.== infix(_:_:)(v8, v6);
      outlined destroy of DataModel.Error(v6, type metadata accessor for DataModel.State);
      outlined destroy of DataModel.Error(v8, type metadata accessor for DataModel.State);
      if (v20)
      {
        v21 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_previousState;
        swift_beginAccess();
        outlined init with copy of DataModel.Error(v1 + v21, v8, type metadata accessor for DataModel.State);
        v17(v6, 6, 8, v16);
        v19 = specialized static DataModel.State.== infix(_:_:)(v8, v6);
        outlined destroy of DataModel.Error(v6, type metadata accessor for DataModel.State);
        outlined destroy of DataModel.Error(v8, type metadata accessor for DataModel.State);
      }

      else
      {
        v19 = 0;
      }
    }

    return v19 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DataModel.startNewSegment()()
{
  v2 = v0;
  v3 = type metadata accessor for CoveragePointCloud();
  v4 = *(v3 - 8);
  v63 = v3;
  v64 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v66 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v56 - v12;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, logger);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_23B824000, v15, v16, "Starting new capture segment...", v17, 2u);
    MEMORY[0x23EEB0B70](v17, -1, -1);
  }

  v18 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (!v18)
  {
    type metadata accessor for DataModel.Error(0);
    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error);
    swift_allocError();
    *v54 = 0xD00000000000002ELL;
    v54[1] = 0x800000023B927A60;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v61 = v8;
  v62 = v1;
  v19 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraPathManager);
  v20 = OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_shots;
  swift_beginAccess();
  v21 = *&v19[v20];
  v22 = MEMORY[0x277D84F90];
  *&v19[v20] = MEMORY[0x277D84F90];
  v23 = v19;
  v24 = v18;

  *&v19[v20] = v22;
  v25 = &v23[OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_cameraPosesBoundingBox];
  swift_beginAccess();
  *v25 = 0u;
  *(v25 + 1) = 0u;
  v25[32] = 1;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v26 = v65;
  if (v65)
  {
    (*(v64 + 56))(v13, 1, 1, v63);
    v27 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_coveragePointCloud;
    swift_beginAccess();
    outlined assign with take of Cancellable?(v13, &v26[v27], &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    swift_endAccess();
    v28 = *&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_captureCircle];
    *&v26[OBJC_IVAR____TtC19_RealityKit_SwiftUI21CoveragePointRenderer_captureCircle] = 0;

    if (!CoveragePointRenderer.captureCircleRenderer.getter())
    {
      __break(1u);
      return;
    }

    CoveragePointRenderer.clearView()();
  }

  v60 = v24;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v29 = v65;
  if (v65)
  {
    FreeformCloudRenderer.clearView()();
  }

  v30 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraFrustumRendererForShots);
  v31 = *(v30 + 48);
  *(v30 + 48) = 0;

  swift_unknownObjectRelease();
  *(v30 + 56) = 0;

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v59 = &v56;
  v33 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v56 - v34;
  v36 = type metadata accessor for ObjectCaptureSession.Frame.PointCloud();
  v57 = *(*(v36 - 8) + 56);
  v57(v35, 1, 1, v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v58 = &v56;
  v38 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37 - 8);
  v40 = &v56 - v39;
  v41 = type metadata accessor for ObjectCaptureSession.Frame.Object();
  v42 = *(*(v41 - 8) + 56);
  v42(v40, 1, 1, v41);
  v43 = v2;
  v44 = v66;
  v57(v66, 1, 1, v36);
  v45 = *(v63 + 20);
  v42((v44 + v45), 1, 1, v41);
  outlined assign with take of Cancellable?(v35, v44, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  outlined assign with take of Cancellable?(v40, v44 + v45, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v46 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_pointCloudsBySegment;
  swift_beginAccess();
  v47 = *(v43 + v46);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v43 + v46) = v47;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
    *(v43 + v46) = v47;
  }

  v49 = v61;
  v51 = v47[2];
  v50 = v47[3];
  if (v51 >= v50 >> 1)
  {
    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v50 > 1, v51 + 1, 1, v47);
  }

  v47[2] = v51 + 1;
  v52 = v47 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v51;
  outlined init with take of DataModel.State(v66, v52, type metadata accessor for CoveragePointCloud);
  *(v43 + v46) = v47;
  swift_endAccess();
  outlined init with copy of DataModel.Error(v52, v49, type metadata accessor for CoveragePointCloud);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMd, &_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMR);
  Atomic.wrappedValue.setter();
  swift_endAccess();
  *(v43 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_currentSegmentID) = *(*(v43 + v46) + 16) - 1;
  swift_getKeyPath();
  swift_getKeyPath();
  v65 = 0;

  static Published.subscript.setter();
  DataModel.beginNewOrbit()();
  if (v53)
  {
  }

  else
  {
    v55 = v60;
    dispatch thunk of ObjectCaptureSession.run()();
  }
}

void DataModel.createCloudViewRenderer()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v53 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode);
  if (v6 == 1)
  {
    v15 = [objc_allocWithZone(type metadata accessor for CoveragePointRenderer(0)) init];
    swift_getKeyPath();
    swift_getKeyPath();
    v56 = v15;

    static Published.subscript.setter();
    v16 = type metadata accessor for CoveragePointCloud();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    v17 = objc_allocWithZone(type metadata accessor for FullscreenCoveragePointsRenderer(0));
    v18 = FullscreenCoveragePointsRenderer.init(pointCloud:)(v5);
    v19 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_fullscreenCoveragePointsRenderer;
    v20 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_fullscreenCoveragePointsRenderer);
    *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_fullscreenCoveragePointsRenderer) = v18;
    v21 = v18;

    v22 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraFrustumRendererForShots);

    FullscreenCoveragePointsRenderer.setCameraFrustumRendererForShots(to:)(v23);

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, logger);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      v28 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraPathManager);
      v29 = OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_shots;
      swift_beginAccess();
      *(v27 + 4) = *(*(v28 + v29) + 16);

      _os_log_impl(&dword_23B824000, v25, v26, "Creating camera path renderer with %ld shots...", v27, 0xCu);
      MEMORY[0x23EEB0B70](v27, -1, -1);

      v30 = *(v1 + v19);
      if (!v30)
      {
        return;
      }
    }

    else
    {

      v30 = *(v1 + v19);
      if (!v30)
      {
        return;
      }
    }

    v57 = v30;
    v52 = v30;
    closure #1 in DataModel.createCloudViewRenderer()(&v57, v1);
  }

  else
  {
    if (v6 != 2)
    {
      __break(1u);
      goto LABEL_21;
    }

    v7 = [objc_allocWithZone(type metadata accessor for FreeformCloudRenderer()) init];
    swift_getKeyPath();
    swift_getKeyPath();
    v56 = v7;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v8 = v56;
    if (v56)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, logger);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        v13 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraPathManager);
        v14 = OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_shots;
        swift_beginAccess();
        *(v12 + 4) = *(*(v13 + v14) + 16);

        _os_log_impl(&dword_23B824000, v10, v11, "Creating camera path renderer with %ld shots...", v12, 0xCu);
        MEMORY[0x23EEB0B70](v12, -1, -1);
      }

      else
      {
      }

      v31 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_metalDevice);
      if (v31)
      {
        v32 = *&v8[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view];
        if (v32)
        {
          v33 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_metalDevice);
          swift_unknownObjectRetain();
          v55 = [v32 colorPixelFormat];
          v34 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraPathManager);
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DataModel.createCloudViewRenderer());
          v54 = v35;
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of DataModel.createCloudViewRenderer());
          v53 = v36;
          v37 = type metadata accessor for CameraPathRenderer();
          v38 = *(v37 + 48);
          v39 = *(v37 + 52);
          v40 = swift_allocObject();
          v41 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_colorScheme;
          v42 = *MEMORY[0x277CDF3D0];
          v43 = type metadata accessor for ColorScheme();
          (*(*(v43 - 8) + 104))(v40 + v41, v42, v43);
          *(v40 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled) = 0;
          *(v40 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_renderMode) = 1;
          swift_unknownObjectWeakInit();
          v44 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device;
          *(v40 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device) = 0;
          *(v40 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_baseRenderer) = 0;
          *(v40 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_renderPipelineState) = 0;
          *(v40 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_depthStencilState) = 0;
          *(v40 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_uniforms) = MEMORY[0x277D84F90];
          v57 = 0;
          v45 = v34;
          Atomic.init(wrappedValue:)();
          *(v40 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_lineVertexBuffer) = 0;
          *(v40 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numLineVertices) = 0;
          *(v40 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_dirtyBuffers) = 1;
          *(v40 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numTubeIndices) = 0;
          *(v40 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeTriStripIndexBuffer) = 0;
          *(v40 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numTubeVertices) = 0;
          *(v40 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeVertexBuffer) = 0;
          *(v40 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numSplineSamplesPerShot) = 10;
          v46 = *(v40 + v44);
          *(v40 + v44) = v31;
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          swift_unknownObjectWeakAssign();
          v47 = v40 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_desc;
          *v47 = 990057071;
          v48 = v53;
          *(v47 + 16) = v54;
          *(v47 + 32) = v48;
          *(v47 + 48) = 0x3F0000003E4CCCCDLL;
          CameraPathRenderer.initRenderPipeline(pixelFormat:)(v55);
          CameraPathRenderer.initUniformsTripleBuffer()();
          swift_unknownObjectRelease();

          v49 = *&v8[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraPathRenderer];
          *&v8[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_cameraPathRenderer] = v40;

          v50 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraFrustumRendererForShots);

          FreeformCloudRenderer.setCameraFrustumRendererForShots(to:)(v51);

          return;
        }

        goto LABEL_22;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }
  }
}

uint64_t *closure #1 in DataModel.createCloudViewRenderer()(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_metalDevice);
  if (v2)
  {
    v4 = *result;
    v5 = *(*result + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_view);
    v6 = *(a2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_metalDevice);
    swift_unknownObjectRetain();
    v24 = [v5 colorPixelFormat];
    v7 = *(a2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraPathManager);
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of closure #1 in DataModel.createCloudViewRenderer());
    v23 = v8;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of closure #1 in DataModel.createCloudViewRenderer());
    v22 = v9;
    v10 = type metadata accessor for CameraPathRenderer();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v14 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_colorScheme;
    v15 = *MEMORY[0x277CDF3D0];
    v16 = type metadata accessor for ColorScheme();
    (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
    *(v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled) = 0;
    *(v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_renderMode) = 1;
    swift_unknownObjectWeakInit();
    v17 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device;
    *(v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_device) = 0;
    *(v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_baseRenderer) = 0;
    *(v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_renderPipelineState) = 0;
    *(v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_depthStencilState) = 0;
    *(v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_uniforms) = MEMORY[0x277D84F90];
    v18 = v7;
    Atomic.init(wrappedValue:)();
    *(v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_lineVertexBuffer) = 0;
    *(v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numLineVertices) = 0;
    *(v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_dirtyBuffers) = 1;
    *(v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numTubeIndices) = 0;
    *(v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeTriStripIndexBuffer) = 0;
    *(v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numTubeVertices) = 0;
    *(v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_tubeVertexBuffer) = 0;
    *(v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_numSplineSamplesPerShot) = 10;
    v19 = *(v13 + v17);
    *(v13 + v17) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_unknownObjectWeakAssign();
    v20 = v13 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_desc;
    *v20 = 990057071;
    *(v20 + 16) = v23;
    *(v20 + 32) = v22;
    *(v20 + 48) = 0x3F0000003E4CCCCDLL;
    CameraPathRenderer.initRenderPipeline(pixelFormat:)(v24);
    if (v25)
    {

      swift_unknownObjectRelease();

      v13 = 0;
    }

    else
    {
      CameraPathRenderer.initUniformsTripleBuffer()();
      swift_unknownObjectRelease();
    }

    v21 = *(v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraPathRenderer);
    *(v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraPathRenderer) = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DataModel.startSessionInternal(imagesURL:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v34 - v6;
  v8 = type metadata accessor for DataModel.State(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v34 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v19 = static OS_dispatch_queue.main.getter();
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15);
  v20 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if (v20)
  {
    v21 = 0xD000000000000013;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v22 = type metadata accessor for DataModel.Error(0);
    (*(*(v22 - 8) + 56))(v12, 1, 8, v22);
    v23 = specialized static DataModel.State.== infix(_:_:)(v14, v12);
    outlined destroy of DataModel.Error(v12, type metadata accessor for DataModel.State);
    outlined destroy of DataModel.Error(v14, type metadata accessor for DataModel.State);
    if (v23)
    {
      if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession))
      {
        v24 = type metadata accessor for URL();
        v25 = *(v24 - 8);
        (*(v25 + 16))(v7, a1, v24);
        (*(v25 + 56))(v7, 0, 1, v24);
        v26 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imagesURL;
        swift_beginAccess();
        outlined assign with take of Cancellable?(v7, v2 + v26, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        swift_endAccess();
        v27 = v34[5];
        DataModel.connectImageWriter()();
        if (v27)
        {
          return;
        }

        if (one-time initialization token for logger == -1)
        {
          goto LABEL_6;
        }

        goto LABEL_14;
      }

      v32 = "tUI.LocalARCoachingViewDelegate";
    }

    else
    {
      v32 = "Cannot init from internal state";
      v21 = 0xD000000000000036;
    }

    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error);
    swift_allocError();
    *v33 = v21;
    v33[1] = v32 | 0x8000000000000000;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  __break(1u);
LABEL_14:
  swift_once();
LABEL_6:
  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, logger);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_23B824000, v29, v30, "Starting the initial segment and running the internal session...", v31, 2u);
    MEMORY[0x23EEB0B70](v31, -1, -1);
  }

  DataModel.startNewSegment()();
}

void DataModel.startFrameProcessor()()
{
  v2 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_23B824000, v4, v5, "Starting the ARFrameProcessor!", v6, 2u);
    MEMORY[0x23EEB0B70](v6, -1, -1);
  }

  DataModel.stopFrameProcessor()();
  if (!*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_metalDevice))
  {
    __break(1u);
    goto LABEL_13;
  }

  type metadata accessor for ARFrameProcessor();
  swift_allocObject();
  v7 = swift_unknownObjectRetain();
  v8 = specialized ARFrameProcessor.init(device:)(v7);
  swift_unknownObjectRelease();
  if (v1)
  {
    return;
  }

  v9 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_arFrameProcessor);
  *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_arFrameProcessor) = v8;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23B824000, v10, v11, "Subscribing to update events...", v12, 2u);
    MEMORY[0x23EEB0B70](v12, -1, -1);
  }

  v13 = *(v2 + 16);
  if (!v13)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v14 = v13;
  dispatch thunk of ARView.scene.getter();

  type metadata accessor for SceneEvents.Update();
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  swift_allocObject();
  swift_weakInit();
  Scene.subscribe<A>(to:on:_:)();

  outlined destroy of PerspectiveCameraComponent?(v16, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  v15 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_frameProcessorUpdateSubscription;
  swift_beginAccess();
  outlined assign with take of Cancellable?(v18, v2 + v15, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  swift_endAccess();
}

void closure #1 in DataModel.startFrameProcessor()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 16) && (v1 = Strong, v2 = [*(Strong + 16) session], v3 = objc_msgSend(v2, sel_currentFrame), v2, v3))
    {
      v4 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_arFrameProcessor);
      if (v4)
      {
        v5 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_arFrameProcessor);

        v6 = [v3 capturedImage];
        v7 = ARFrameProcessor.computeYCbCrTexture(from:)(v6);

        v8 = ARFrame.depthMap.getter();
        if (v8)
        {
          v9 = v8;
          v10 = ARFrameProcessor.computeTexture(from:planeIndex:format:)(v8, 0, MTLPixelFormatR32Float);

          swift_unknownObjectRetain();
        }

        else
        {
          v10 = 0;
        }

        v11 = *(v4 + 16);
        FrameCache.push(arFrame:textureYCbCr:textureDepth:)(v3, v7, v10);

        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t DataModel.stopFrameProcessor()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Stopping the ARFrameProcessor!", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_frameProcessorUpdateSubscription;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v6, &v10, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  if (*(&v11 + 1))
  {
    outlined init with copy of Cancellable(&v10, v9);
    outlined destroy of PerspectiveCameraComponent?(&v10, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(&v10, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  }

  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  swift_beginAccess();
  outlined assign with take of Cancellable?(&v10, v1 + v6, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  swift_endAccess();
  v7 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_arFrameProcessor);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_arFrameProcessor) = 0;
}

void DataModel.performStateTransition(from:to:)(uint64_t a1, uint64_t a2)
{
  v154 = type metadata accessor for DispatchWorkItemFlags();
  v153 = *(v154 - 8);
  v4 = *(v153 + 64);
  MEMORY[0x28223BE20](v154);
  v151 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for DispatchQoS();
  v150 = *(v152 - 8);
  v6 = *(v150 + 64);
  MEMORY[0x28223BE20](v152);
  v149 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for DispatchTime();
  v148 = *(v157 - 8);
  v8 = *(v148 + 64);
  v9 = MEMORY[0x28223BE20](v157);
  v146 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v147 = &v141 - v11;
  v145 = type metadata accessor for DispatchPredicate();
  v144 = *(v145 - 8);
  v12 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v143 = (&v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v155 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v158 = &v141 - v18;
  v168 = type metadata accessor for DataModel.State(0);
  v159 = *(v168 - 8);
  v19 = *(v159 + 64);
  v20 = MEMORY[0x28223BE20](v168);
  v22 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v163 = &v141 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v141 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v141 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v162 = &v141 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v161 = &v141 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v164 = &v141 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v170 = (&v141 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v141 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v141 - v42;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  v45 = __swift_project_value_buffer(v44, logger);
  outlined init with copy of DataModel.Error(a1, v43, type metadata accessor for DataModel.State);
  outlined init with copy of DataModel.Error(a2, v41, type metadata accessor for DataModel.State);
  v167 = v45;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  v48 = os_log_type_enabled(v46, v47);
  v165 = a1;
  v156 = v27;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    aBlock[0] = v141;
    *v49 = 136446466;
    v160 = a2;
    v166 = v30;
    v50 = v170;
    outlined init with copy of DataModel.Error(v43, v170, type metadata accessor for DataModel.State);
    v142 = v22;
    v51 = String.init<A>(describing:)();
    v53 = v52;
    outlined destroy of DataModel.Error(v43, type metadata accessor for DataModel.State);
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, aBlock);

    *(v49 + 4) = v54;
    *(v49 + 12) = 2082;
    outlined init with copy of DataModel.Error(v41, v50, type metadata accessor for DataModel.State);
    v30 = v166;
    v22 = v142;
    v55 = String.init<A>(describing:)();
    v57 = v56;
    a2 = v160;
    outlined destroy of DataModel.Error(v41, type metadata accessor for DataModel.State);
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, aBlock);

    *(v49 + 14) = v58;
    a1 = v165;
    _os_log_impl(&dword_23B824000, v46, v47, "Switch State: %{public}s -> %{public}s", v49, 0x16u);
    v59 = v141;
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v59, -1, -1);
    MEMORY[0x23EEB0B70](v49, -1, -1);
  }

  else
  {

    outlined destroy of DataModel.Error(v41, type metadata accessor for DataModel.State);
    outlined destroy of DataModel.Error(v43, type metadata accessor for DataModel.State);
  }

  v60 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_previousState;
  v61 = v169;
  swift_beginAccess();
  outlined assign with copy of CoveragePointCloud(a1, v61 + v60, type metadata accessor for DataModel.State);
  swift_endAccess();
  if (specialized static DataModel.State.== infix(_:_:)(a1, a2))
  {
    outlined init with copy of DataModel.Error(a1, v22, type metadata accessor for DataModel.State);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      aBlock[0] = v65;
      *v64 = 136446210;
      outlined init with copy of DataModel.Error(v22, v170, type metadata accessor for DataModel.State);
      v66 = String.init<A>(describing:)();
      v67 = v22;
      v69 = v68;
      outlined destroy of DataModel.Error(v67, type metadata accessor for DataModel.State);
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v69, aBlock);

      *(v64 + 4) = v70;
      _os_log_impl(&dword_23B824000, v62, v63, "switchState has same from and to states: %{public}s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x23EEB0B70](v65, -1, -1);
      MEMORY[0x23EEB0B70](v64, -1, -1);
    }

    else
    {

      outlined destroy of DataModel.Error(v22, type metadata accessor for DataModel.State);
    }

    return;
  }

  v71 = v164;
  outlined init with copy of DataModel.Error(a1, v164, type metadata accessor for DataModel.State);
  v72 = type metadata accessor for DataModel.Error(0);
  v73 = *(v72 - 8);
  v160 = *(v73 + 6);
  v74 = v160(v71, 8, v72);
  if (v74 != 5)
  {
    if (v74 == 6)
    {
      if (!*(v61 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureBoxModel))
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v75 = *(v61 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureBoxModel);

      CaptureModeBoxModel.disable()();

      if (*(v61 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_soundManager))
      {
        SoundManager.stopLoop(playEndSound:)(0);
        SoundManager.requestStandby(after:)(2.0);
      }

      v76 = v170;
      (*(v73 + 7))(v170, 3, 8, v72);
      v77 = specialized static DataModel.State.== infix(_:_:)(a2, v76);
      outlined destroy of DataModel.Error(v76, type metadata accessor for DataModel.State);
      if (v77)
      {
        if (*(v61 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderManager))
        {
          v78 = *(v61 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderManager);

          RangefinderManager.detach()();
        }
      }

      else
      {
        DataModel.stopRangefinderIfNeeded()();
      }
    }

    else
    {
      outlined destroy of DataModel.Error(v71, type metadata accessor for DataModel.State);
    }
  }

  v79 = v161;
  outlined init with copy of DataModel.Error(a2, v161, type metadata accessor for DataModel.State);
  v80 = v160(v79, 8, v72);
  outlined destroy of DataModel.Error(v79, type metadata accessor for DataModel.State);
  v142 = v73;
  if (v80)
  {
    v166 = v30;
    outlined init with copy of DataModel.Error(a2, v30, type metadata accessor for DataModel.State);
    v81 = *(v73 + 7);
    v82 = v170;
    v81(v170, 3, 8, v72);
    v83 = specialized static DataModel.State.== infix(_:_:)(a1, v82);
    outlined destroy of DataModel.Error(v82, type metadata accessor for DataModel.State);
    if (v83)
    {
      v84 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_stateBeforePause;
      v85 = v169;
      swift_beginAccess();
      v86 = v85 + v84;
      v87 = v158;
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v86, v158, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
      if ((*(v159 + 48))(v87, 1, v168) == 1)
      {
        outlined destroy of PerspectiveCameraComponent?(v87, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
      }

      else
      {
        v90 = v156;
        outlined init with take of DataModel.State(v87, v156, type metadata accessor for DataModel.State);
        v91 = v170;
        v81(v170, 4, 8, v72);
        v92 = specialized static DataModel.State.== infix(_:_:)(v90, v91);
        outlined destroy of DataModel.Error(v91, type metadata accessor for DataModel.State);
        if (v92)
        {
          v93 = Logger.logObject.getter();
          v94 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            *v95 = 0;
            _os_log_impl(&dword_23B824000, v93, v94, "Going to ready state after pause...", v95, 2u);
            MEMORY[0x23EEB0B70](v95, -1, -1);
          }

          outlined destroy of DataModel.Error(v156, type metadata accessor for DataModel.State);
          v96 = v166;
          outlined destroy of DataModel.Error(v166, type metadata accessor for DataModel.State);
          v81(v96, 4, 8, v72);
        }

        else
        {
          outlined destroy of DataModel.Error(v90, type metadata accessor for DataModel.State);
        }

        v97 = v155;
        (*(v159 + 56))(v155, 1, 1, v168);
        v98 = v169;
        swift_beginAccess();
        outlined assign with take of Cancellable?(v97, v98 + v84, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMd, &_s19_RealityKit_SwiftUI9DataModelC5StateOSgMR);
        swift_endAccess();
      }
    }

    v89 = v166;
    v99 = v170;
    outlined init with copy of DataModel.Error(v166, v170, type metadata accessor for DataModel.State);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of DataModel.Error(v99, v162, type metadata accessor for DataModel.State);
    v61 = v169;

    static Published.subscript.setter();
    outlined destroy of DataModel.Error(v99, type metadata accessor for DataModel.State);
  }

  else
  {
    v88 = a2;
    v89 = v170;
    outlined init with copy of DataModel.Error(v88, v170, type metadata accessor for DataModel.State);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of DataModel.Error(v89, v162, type metadata accessor for DataModel.State);

    static Published.subscript.setter();
  }

  outlined destroy of DataModel.Error(v89, type metadata accessor for DataModel.State);
  swift_getKeyPath();
  swift_getKeyPath();
  v100 = v163;
  static Published.subscript.getter();

  v101 = v160(v100, 8, v72);
  v102 = &unk_27E18B000;
  if (v101 > 4)
  {
    if (v101 == 5)
    {
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        *v113 = 0;
        _os_log_impl(&dword_23B824000, v111, v112, "Attaching detect box model to the scene...", v113, 2u);
        MEMORY[0x23EEB0B70](v113, -1, -1);
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v169 = static OS_dispatch_queue.main.getter();
      v114 = v146;
      static DispatchTime.now()();
      v115 = v147;
      + infix(_:_:)();
      v170 = *(v148 + 8);
      (v170)(v114, v157);
      v116 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = partial apply for closure #1 in DataModel.performStateTransition(from:to:);
      aBlock[5] = v116;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_494;
      v117 = _Block_copy(aBlock);

      v118 = v149;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v119 = v151;
      v120 = v154;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v121 = v169;
      MEMORY[0x23EEAF910](v115, v118, v119, v117);
      _Block_release(v117);

      (*(v153 + 8))(v119, v120);
      (*(v150 + 8))(v118, v152);
      (v170)(v115, v157);
      v102 = &unk_27E18B000;
      goto LABEL_63;
    }

    if (v101 == 6)
    {
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&dword_23B824000, v122, v123, "Entering capturing mode...", v124, 2u);
        MEMORY[0x23EEB0B70](v124, -1, -1);
      }

      DataModel.addGestureRecognizerIfNeeded()();
      v125 = v142;
      if (*(v61 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_soundManager))
      {
        SoundManager.start()();
        SoundManager.startLoop(playStartSound:)(1);
      }

      v126 = v170;
      v125[7](v170, 3, 8, v72);
      v127 = specialized static DataModel.State.== infix(_:_:)(v165, v126);
      outlined destroy of DataModel.Error(v126, type metadata accessor for DataModel.State);
      if (v127)
      {
        if (*(v61 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderManager))
        {

          specialized RangefinderManager.attach(attacher:)(v128);
        }
      }

      else
      {
        DataModel.startRangefinderIfNeeded()();
      }

      v129 = *(v61 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_manualShotRefractoryTimer);
      v130 = *(v61 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime);
      v131 = *(v61 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
      v132 = 1.0;
      if (!v131 || (v133 = v131, v134 = COERCE_DOUBLE(dispatch thunk of ObjectCaptureSession.captureCoolDownTime.getter()), v136 = v135, v133, (v136 & 1) != 0) || (v132 = v134, v134 >= 0.0))
      {
        *(v129 + 16) = v130 + v132;
        *(v129 + 24) = v130;
        v109 = *(v61 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer);
        if (v109)
        {
          v110 = 1;
          goto LABEL_62;
        }

        goto LABEL_72;
      }

      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (v101 != 8)
    {
LABEL_43:
      outlined destroy of DataModel.Error(v100, type metadata accessor for DataModel.State);
      goto LABEL_63;
    }

    goto LABEL_45;
  }

  if (!v101)
  {
    outlined destroy of DataModel.Error(v100, type metadata accessor for DataModel.State);
    goto LABEL_45;
  }

  if (v101 == 3)
  {
LABEL_45:
    DataModel.removeGestureRecognizer()();
    goto LABEL_63;
  }

  if (v101 != 4)
  {
    goto LABEL_43;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 0;

  static Published.subscript.setter();
  *(v61 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_numUnsuccessfulDetects) = 0;
  v103 = *(v61 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel);
  if (!v103)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);

  v104 = static OS_dispatch_queue.main.getter();
  v105 = v143;
  *v143 = v104;
  v106 = v144;
  v107 = v145;
  (*(v144 + 104))(v105, *MEMORY[0x277D85200], v145);
  v108 = _dispatchPreconditionTest(_:)();
  (*(v106 + 8))(v105, v107);
  if ((v108 & 1) == 0)
  {
    goto LABEL_69;
  }

  DetectModeBoxModel.performSwitchStateTransitions(from:to:)(*(v103 + 24), 0);
  *(v103 + 24) = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 0;

  static Published.subscript.setter();
  DataModel.addGestureRecognizerIfNeeded()();
  v109 = *(v61 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer);
  if (!v109)
  {
LABEL_73:
    __break(1u);
    return;
  }

  v110 = 2;
LABEL_62:
  *(v109 + 132) = v110;
LABEL_63:
  v137 = *(v61 + v102[366]);
  if (v137)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v138 = v137;
    static Published.subscript.getter();

    v139 = LOBYTE(aBlock[0]);
    if (v139 != (dispatch thunk of ObjectCaptureSession.canTakeManualShot.getter() & 1))
    {
      v140 = dispatch thunk of ObjectCaptureSession.canTakeManualShot.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock[0]) = v140 & 1;

      static Published.subscript.setter();
    }
  }
}

uint64_t closure #1 in DataModel.performStateTransition(from:to:)()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, logger);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23B824000, v6, v7, "Switching to detectBoxModel.state == .detecting...", v8, 2u);
    MEMORY[0x23EEB0B70](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel);

    if (v10)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      *v4 = static OS_dispatch_queue.main.getter();
      (*(v1 + 104))(v4, *MEMORY[0x277D85200], v0);
      v12 = _dispatchPreconditionTest(_:)();
      result = (*(v1 + 8))(v4, v0);
      if (v12)
      {
        DetectModeBoxModel.performSwitchStateTransitions(from:to:)(*(v10 + 24), 1u);
        *(v10 + 24) = 1;

        goto LABEL_9;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_9:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    DataModel.addGestureRecognizerIfNeeded()();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(result + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer);

    if (v13)
    {
      *(v13 + 132) = 2;
    }

LABEL_17:
    __break(1u);
  }

  return result;
}

void DataModel.startRangefinderIfNeeded()()
{
  v1 = v0;
  v2 = type metadata accessor for ARView.Environment.SceneUnderstanding.Options();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsV17memberAfterInserttSgMd, &_sSb8inserted_10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsV17memberAfterInserttSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v53 - v9;
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) == 2)
  {
    v11 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderManager;
    if (!*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderManager))
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      v13 = __swift_project_value_buffer(v12, logger);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_23B824000, v14, v15, "Starting rangefinder...", v16, 2u);
        MEMORY[0x23EEB0B70](v16, -1, -1);
      }

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DataModel.startRangefinderIfNeeded());
      v60 = v17;
      v61 = xmmword_23B91F780;
      v62 = 1036831949;
      v18 = *(v1 + 16);
      type metadata accessor for RangefinderManager();
      swift_allocObject();
      v19 = v18;
      v20 = RangefinderManager.init(from:using:)(&v60, v18);
      v21 = *(v1 + v11);
      *(v1 + v11) = v20;

      specialized RangefinderManager.attach(attacher:)(v20);

      v22 = type metadata accessor for RangefinderObserver();
      v23 = objc_allocWithZone(v22);
      swift_weakInit();
      swift_weakAssign();
      v59.receiver = v23;
      v59.super_class = v22;
      v24 = objc_msgSendSuper2(&v59, sel_init);
      v25 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderObserver;
      v26 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderObserver);
      *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderObserver) = v24;

      v27 = *(v1 + v11);
      if (v27)
      {
        v28 = &protocol witness table for RangefinderObserver;
        if (!*(v1 + v25))
        {
          v28 = 0;
        }

        *(v27 + 56) = v28;
        swift_unknownObjectWeakAssign();
      }

      v29 = *(v1 + 16);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsV17memberAfterInserttMd, &_sSb8inserted_10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsV17memberAfterInserttMR);
      v31 = v30;
      if (v29)
      {
        v53 = *(v30 + 48);
        v32 = v29;
        static ARView.Environment.SceneUnderstanding.Options.collision.getter();
        v54 = dispatch thunk of ARView.environment.modify();
        v33 = ARView.Environment.sceneUnderstanding.modify();
        *&v55 = v13;
        v34 = v33;
        v35 = ARView.Environment.SceneUnderstanding.options.modify();
        v36 = specialized OptionSet<>.insert(_:)(&v10[v53], v6);
        (*(v3 + 8))(v6, v2);
        v35(v56, 0);
        v34(v57, 0);
        v54(v58, 0);

        v37 = 0;
        *v10 = v36 & 1;
      }

      else
      {
        v37 = 1;
      }

      (*(*(v31 - 8) + 56))(v10, v37, 1, v31);
      outlined destroy of PerspectiveCameraComponent?(v10, &_sSb8inserted_10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsV17memberAfterInserttSgMd, &_sSb8inserted_10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsV17memberAfterInserttSgMR);
      v38 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldEstimateDynamicScanVolume);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.info.getter();
      v41 = os_log_type_enabled(v39, v40);
      if (v38 == 1)
      {
        if (v41)
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_23B824000, v39, v40, "Enabling dynamic scan volume estimator...", v42, 2u);
          MEMORY[0x23EEB0B70](v42, -1, -1);
        }

        v43 = specialized static ExperimentSettings.loadFreeformDynamicScanVolumeDebugDraw(default:)(0);
        v44 = specialized static ExperimentSettings.loadFreeformDynamicScanVolumeBoxViz(default:)(0);
        type metadata accessor for DynamicScanVolumeEstimator();
        swift_allocObject();
        if (v43)
        {
          v45 = 256;
        }

        else
        {
          v45 = 0;
        }

        v46 = DynamicScanVolumeEstimator.init(using:)(v45 & 0xFFFFFFFE | v44 & 1, 0.5, 0.1, 0.75);
        v47 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_dynamicScanVolumeEstimator);
        *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_dynamicScanVolumeEstimator) = v46;

        if (*(v46 + 17) == 1)
        {
          DynamicScanVolumeEstimator.debugRootEntity.getter();
          DataModel.addToScene(entity:)();
        }

        if (*(v46 + 16) == 1)
        {
          DynamicScanVolumeEstimator.boxEntity.getter();
          DataModel.addToScene(entity:)();

          v48 = *(v46 + 256);
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of DataModel.startRangefinderIfNeeded());
          v55 = v49;
          type metadata accessor for Entity();

          HasTransform.setPosition(_:relativeTo:)();

          v50 = *(v46 + 256);
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of DataModel.startRangefinderIfNeeded());
          v55 = v51;

          HasTransform.setScale(_:relativeTo:)();
        }
      }

      else
      {
        if (v41)
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_23B824000, v39, v40, "Not enabling dynamic scan volume estimator!", v52, 2u);
          MEMORY[0x23EEB0B70](v52, -1, -1);
        }
      }
    }
  }
}

uint64_t DataModel.stopRangefinderIfNeeded()()
{
  v1 = v0;
  v2 = type metadata accessor for ARView.Environment.SceneUnderstanding.Options();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v38 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsVSgMd, &_s10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsVSgMR);
  v14 = *(*(v13 - 8) + 64);
  result = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v38 - v16;
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) == 2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, logger);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = v3;
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_23B824000, v19, v20, "Stopping rangefinder...", v22, 2u);
      v23 = v22;
      v3 = v21;
      MEMORY[0x23EEB0B70](v23, -1, -1);
    }

    v24 = *(v1 + 16);
    if (v24)
    {
      v25 = v24;
      static ARView.Environment.SceneUnderstanding.Options.collision.getter();
      v41 = v25;
      v40 = dispatch thunk of ARView.environment.modify();
      v39 = ARView.Environment.sceneUnderstanding.modify();
      v38 = ARView.Environment.SceneUnderstanding.options.modify();
      (*(v3 + 16))(v7);
      lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type ARView.Environment.SceneUnderstanding.Options and conformance ARView.Environment.SceneUnderstanding.Options, MEMORY[0x277CDB5C8]);
      dispatch thunk of SetAlgebra.intersection(_:)();
      if (dispatch thunk of SetAlgebra.isEmpty.getter())
      {
        v26 = *(v3 + 8);
        v26(v10, v2);
        v26(v12, v2);
        v27 = 1;
      }

      else
      {
        dispatch thunk of SetAlgebra.subtract(_:)();
        (*(v3 + 8))(v12, v2);
        (*(v3 + 32))(v17, v10, v2);
        v27 = 0;
      }

      (*(v3 + 56))(v17, v27, 1, v2);
      outlined destroy of PerspectiveCameraComponent?(v17, &_s10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsVSgMd, &_s10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsVSgMR);
      v38(v42, 0);
      v39(v43, 0);
      v40(v44, 0);
    }

    else
    {
      (*(v3 + 56))(v17, 1, 1, v2);
      outlined destroy of PerspectiveCameraComponent?(v17, &_s10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsVSgMd, &_s10RealityKit6ARViewC11EnvironmentV18SceneUnderstandingV7OptionsVSgMR);
    }

    v28 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderManager;
    if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderManager))
    {
      v29 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderManager);

      RangefinderManager.detach()();

      v30 = *(v1 + v28);
      if (v30)
      {
        *(v30 + 56) = 0;
        swift_unknownObjectWeakAssign();
      }
    }

    v31 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderObserver);
    *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderObserver) = 0;

    v32 = *(v1 + v28);
    *(v1 + v28) = 0;

    v33 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_dynamicScanVolumeEstimator;
    v34 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_dynamicScanVolumeEstimator);
    if (v34)
    {
      v35 = *(v34 + 17);
      v36 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_dynamicScanVolumeEstimator);

      if (v35 == 1)
      {
        DynamicScanVolumeEstimator.debugEllipsoidEntity.getter();
        type metadata accessor for Entity();
        HasHierarchy.removeFromParent(preservingWorldTransform:)(0);

        DynamicScanVolumeEstimator.debugRootEntity.getter();
        HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
      }

      DynamicScanVolumeEstimator.boxEntity.getter();
      type metadata accessor for Entity();
      HasHierarchy.removeFromParent(preservingWorldTransform:)(0);

      v37 = *(v1 + v33);
    }

    *(v1 + v33) = 0;
  }

  return result;
}

void DataModel.update(deltaTime:)(double a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime) = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime) + a1;
  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode))
  {
    if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) == 1)
    {
      DataModel.onSceneEventUpdateInObjectMode()();
    }

    else
    {
      DataModel.onSceneEventUpdateInFreeformMode()();
    }
  }

  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer))
  {
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer);

      v6 = [v4 window];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 windowScene];

        if (v8)
        {
          [v8 interfaceOrientation];
        }
      }
    }

    else
    {
      v9 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer);
    }

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVySo22UIInterfaceOrientationVGMd, &_s17RealityFoundation6AtomicVySo22UIInterfaceOrientationVGMR);
    Atomic.wrappedValue.setter();
    swift_endAccess();

    if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_soundManager))
    {
      SoundManager.update(t:)(*(v2 + v3));
    }

    v10 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
    if (v10)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v11 = v10;
      static Published.subscript.getter();

      if (v12 != (dispatch thunk of ObjectCaptureSession.canTakeManualShot.getter() & 1))
      {
        dispatch thunk of ObjectCaptureSession.canTakeManualShot.getter();
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.setter();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void DataModel.onSceneEventUpdateInObjectMode()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMd, &_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v39 - v5;
  v7 = type metadata accessor for CoveragePointCloud();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DataModel.State(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v18 = type metadata accessor for DataModel.Error(0);
  (*(*(v18 - 8) + 56))(v15, 6, 8, v18);
  v19 = specialized static DataModel.State.== infix(_:_:)(v17, v15);
  outlined destroy of DataModel.Error(v15, type metadata accessor for DataModel.State);
  outlined destroy of DataModel.Error(v17, type metadata accessor for DataModel.State);
  if (v19)
  {
    specialized DataModel.updateReticleAimSystem(at:)();
    v20 = *(v1 + 16);
    if (v20)
    {
      v21 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator);
      if (v21)
      {
        v22 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime);
        v23 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator);

        v24 = v20;
        dispatch thunk of ARView.cameraTransform.getter();
        v43 = v26;
        v44 = v25;
        if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) == 1)
        {
          v27 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__latestCoveragePointCloud;
          swift_beginAccess();
          (*(v3 + 16))(v6, v1 + v27, v2);
          Atomic.wrappedValue.getter();
          (*(v3 + 8))(v6, v2);
          *v28.i64 = CoveragePointCloud.bboxWorld.getter();
          v39 = v28;
          v40 = v29;
          v41 = v30;
          v42 = v31;
          outlined destroy of DataModel.Error(v10, type metadata accessor for CoveragePointCloud);
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DataModel.getBoxCenterWorld());
          if (*(v21 + 80))
          {
            v33 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39, v32.f32[0]), v40, *v32.f32, 1), v41, v32, 2), v42, v32, 3);
            v34 = v33.u32[2];
            v35 = v33.i64[0];
            v36 = *(v21 + 80);

            specialized CircularBuffer.pushNew(_:)(v45, v22, v43, v44);

            DeviceMotionEstimator.updateMotionEstimate(time:orbit:)(v35, v34, 0, v22);

            v37 = 0.45;
            if (*(v21 + 140))
            {
              v37 = 0.55;
            }

            *(v21 + 140) = *(v21 + 136) < v37;
            *(v21 + 72) = v22;

            goto LABEL_9;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }
    }

LABEL_9:
    if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_soundManager))
    {
      v38 = DataModel.userControlScore.getter();
      SoundManager.updateGoodnessScore(_:)(v38);
    }
  }
}

void DataModel.onSceneEventUpdateInFreeformMode()()
{
  v1 = type metadata accessor for DataModel.State(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = *(v0 + 16);
  if (v8)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v8;
    static Published.subscript.getter();

    v10 = type metadata accessor for DataModel.Error(0);
    (*(*(v10 - 8) + 56))(v5, 6, 8, v10);
    v11 = specialized static DataModel.State.== infix(_:_:)(v7, v5);
    outlined destroy of DataModel.Error(v5, type metadata accessor for DataModel.State);
    outlined destroy of DataModel.Error(v7, type metadata accessor for DataModel.State);
    if (v11)
    {
      v12 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator;
      v13 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator);
      if (v13)
      {
        v14 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime);
        v15 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator);

        dispatch thunk of ARView.cameraTransform.getter();
        v25 = v17;
        v26 = v16;
        if (!*(v13 + 80))
        {
          __break(1u);
          return;
        }

        v18 = *(v13 + 80);

        specialized CircularBuffer.pushNew(_:)(v27, v14, v25, v26);

        DeviceMotionEstimator.updateMotionEstimate(time:orbit:)(0, 0, 1, v14);
        v19 = 0.45;
        if (*(v13 + 140))
        {
          v19 = 0.55;
        }

        *(v13 + 140) = *(v13 + 136) < v19;
        *(v13 + 72) = v14;
      }

      if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_soundManager))
      {
        v20 = v0;
        v21 = *(v0 + v12);
        v22 = 1.0;
        v23 = 1.0;
        if (v21)
        {
          v23 = *(v21 + 136);
        }

        if (v23 <= 0.3)
        {
          v23 = 0.3;
        }

        if (v23 <= 1.0)
        {
          v22 = v23;
        }

        v24 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_soundManager);
        SoundManager.updateGoodnessScore(_:)(v22);
        v0 = v20;
      }

      DataModel.updateDynamicScanVolume(in:at:)(v9, *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime));
    }
  }
}

uint64_t DataModel.updateDynamicScanVolume(in:at:)(uint64_t a1, double a2)
{
  v45.i64[0] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v42 - v6;
  v8 = type metadata accessor for CollisionCastHit();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ARCameraC5ARKitE13TrackingStateOSgMd, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v42 - v15;
  v17 = type metadata accessor for ARCamera.TrackingState();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v20);
  v25 = &v42 - v24;
  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldEstimateDynamicScanVolume) == 1)
  {
    v44 = v9;
    v26 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastCameraFeedback;
    swift_beginAccess();
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v2 + v26, v16, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMd, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMR);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      return outlined destroy of PerspectiveCameraComponent?(v16, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMd, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMR);
    }

    outlined init with take of DataModel.State(v16, v25, MEMORY[0x277D82DB0]);
    v27 = MEMORY[0x277D82DB0];
    outlined init with copy of DataModel.Error(v25, v22, MEMORY[0x277D82DB0]);
    v28 = type metadata accessor for ARCamera.TrackingState.Reason();
    v29 = (*(*(v28 - 8) + 48))(v22, 2, v28);
    outlined destroy of DataModel.Error(v22, v27);
    if (v29 != 2)
    {
      return outlined destroy of DataModel.Error(v25, MEMORY[0x277D82DB0]);
    }

    v30 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastDynamicVolumeUpdateTime;
    if (a2 - *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastDynamicVolumeUpdateTime) <= 0.1)
    {
      return outlined destroy of DataModel.Error(v25, MEMORY[0x277D82DB0]);
    }

    v43 = v2;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DataModel.updateDynamicScanVolume(in:at:));
    v32 = v31;
    type metadata accessor for RangefinderManager();
    dispatch thunk of ARView.scene.getter();
    static RangefinderManager.raycastOntoScene(clipSpacePoint:scene:maxDistance:)(v7, v32);

    v33 = v44;
    if ((*(v44 + 48))(v7, 1, v8) == 1)
    {
      outlined destroy of PerspectiveCameraComponent?(v7, &_s10RealityKit16CollisionCastHitVSgMd, &_s10RealityKit16CollisionCastHitVSgMR);
      return outlined destroy of DataModel.Error(v25, MEMORY[0x277D82DB0]);
    }

    (*(v33 + 32))(v12, v7, v8);
    CollisionCastHit.distance.getter();
    if (v34 < 0.25 || v34 >= 2.0 || (dispatch thunk of ARView.scene.getter(), specialized static RangefinderManager.worldRayThrough(clipSpacePoint:scene:)(v46, v32), , (v47 & 1) != 0))
    {
      (*(v33 + 8))(v12, v8);
      return outlined destroy of DataModel.Error(v25, MEMORY[0x277D82DB0]);
    }

    CollisionCastHit.distance.getter();
    v36 = v35;
    CollisionCastHit.position.getter();
    v45 = v37;
    CollisionCastHit.normal.getter();
    v42 = v38;
    (*(v33 + 8))(v12, v8);
    v39 = v43;
    if (*(v43 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_dynamicScanVolumeEstimator))
    {
      v40 = v36 * 0.125;
      v41.i64[0] = vaddq_f32(v45, vmulq_n_f32(v42, v40 + -0.005)).u64[0];
      v41.i64[1] = COERCE_UNSIGNED_INT(v45.f32[2] + vmuls_lane_f32(v40 + -0.005, v42, 2));
      v45 = v41;

      DynamicScanVolumeEstimator.addSphere(sphere:mass:time:)(v45, v40, 0.1, a2);
      v39 = v43;
    }

    result = outlined destroy of DataModel.Error(v25, MEMORY[0x277D82DB0]);
    *(v39 + v30) = a2;
  }

  return result;
}

uint64_t DataModel.updateLatestCoveragePointCloud(pointCloud:pose:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a1;
  v50 = a2;
  v48 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMd, &_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMR);
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v43 - v7;
  v9 = type metadata accessor for CoveragePointCloud();
  v10 = v9 - 8;
  v44 = *(v9 - 8);
  v11 = *(v44 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  v46 = v3;
  v47 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__latestCoveragePointCloud;
  v17 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__latestCoveragePointCloud;
  swift_beginAccess();
  v52 = v5[2];
  v45 = v4;
  v52(v8, v3 + v17, v4);
  Atomic.wrappedValue.getter();
  v51 = v5[1];
  v53 = v5 + 1;
  v51(v8, v4);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v43 - v20;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v14, &v43 - v20, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v22 = *(v10 + 28);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v43 - v25;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v14[v22], &v43 - v25, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v27 = type metadata accessor for ObjectCaptureSession.Frame.PointCloud();
  (*(*(v27 - 8) + 56))(v16, 1, 1, v27);
  v28 = *(v10 + 28);
  v29 = type metadata accessor for ObjectCaptureSession.Frame.Object();
  (*(*(v29 - 8) + 56))(&v16[v28], 1, 1, v29);
  v30 = v21;
  v31 = v46;
  outlined assign with take of Cancellable?(v30, v16, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v32 = v26;
  v33 = v51;
  v34 = v45;
  outlined assign with take of Cancellable?(v32, &v16[v28], &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudV_s5NeverOytTg5033_s19_RealityKit_SwiftUI18Coverageij26V7updated05pointG04poseAC6c4OC20efg2C5H27V0fG0VSg_AK0M0VSgtFyAMXEfU_01_mn1_O2UI0qiJ0VTf1cn_n(v49, v16);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF6CoreOC20ObjectCaptureSessionC5FrameV0E0V_s5NeverOytTg5069_s19_RealityKit_SwiftUI18CoveragePointCloudV7updated05pointG04poseAC6c4OC20efg2C5H28V0fG0VSg_AK0M0VSgtFyAPXEfU0_01_kl1_M2UI0opQ0VTf1cn_n(v50, v16);
  outlined destroy of DataModel.Error(v14, type metadata accessor for CoveragePointCloud);
  v35 = CoveragePointCloud.isValid()();
  v36 = v52;
  v37 = v47;
  if (!v35)
  {
    goto LABEL_6;
  }

  v50 = v5 + 2;
  outlined init with copy of DataModel.Error(v16, v14, type metadata accessor for CoveragePointCloud);
  swift_beginAccess();
  v38 = v37;
  Atomic.wrappedValue.setter();
  swift_endAccess();
  v39 = *(v31 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_currentSegmentID);
  v40 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_pointCloudsBySegment;
  swift_beginAccess();
  v41 = *(v31 + v40);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v31 + v40) = v41;
  if (result)
  {
    if ((v39 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v41);
  v41 = result;
  *(v31 + v40) = result;
  if ((v39 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v39 < v41[2])
  {
    outlined assign with copy of CoveragePointCloud(v16, v41 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v39, type metadata accessor for CoveragePointCloud);
    *(v31 + v40) = v41;
    swift_endAccess();
    v36 = v52;
    v37 = v38;
    v33 = v51;
LABEL_6:
    v36(v8, v31 + v37, v34);
    Atomic.wrappedValue.getter();
    v33(v8, v34);
    return outlined destroy of DataModel.Error(v16, type metadata accessor for CoveragePointCloud);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t DataModel.onFrameUpdate(frame:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ARCamera.TrackingState();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v13 = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode))
    {
      if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) == 1)
      {
        DataModel.onFrameUpdateInObjectMode(frame:)(a1);
      }

      else
      {
        DataModel.onFrameUpdateInFreeformMode(frame:)();
      }
    }

    v15 = type metadata accessor for ObjectCaptureSession.Frame.Camera();
    v16 = *(v15 - 8);
    v17 = *(v16 + 64);
    MEMORY[0x28223BE20](v15);
    v19 = &v33[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
    ObjectCaptureSession.Frame.camera.getter();
    v20 = type metadata accessor for CameraTrackingState();
    v21 = *(*(v20 - 8) + 64);
    MEMORY[0x28223BE20](v20 - 8);
    v23 = &v33[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
    ObjectCaptureSession.Frame.Camera.trackingState.getter();
    (*(v16 + 8))(v19, v15);
    ARCamera.TrackingState.init(fromInternal:)(v23, v7);
    v24 = type metadata accessor for ObjectCaptureSession.Frame.Feedback();
    v25 = *(v24 - 8);
    v26 = *(v25 + 64);
    v27 = MEMORY[0x28223BE20](v24);
    v29 = &v33[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
    MEMORY[0x28223BE20](v27);
    v31 = &v33[-v30];
    ObjectCaptureSession.Frame.feedback.getter();
    DataModel.filterFrameFeedback(feedback:)(v31, v29);
    v32 = *(v25 + 8);
    v32(v31, v24);
    DataModel.updateFeedback(frameFeedback:arCameraFeedback:)(v29, v7);
    v32(v29, v24);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v33[15] == 1)
    {
      DataModel.updateDebugState(frame:)();
    }

    return outlined destroy of DataModel.Error(v7, MEMORY[0x277D82DB0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ARCamera.TrackingState.init(fromInternal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ARCamera.TrackingState.Reason();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CameraTrackingState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9);
  v14 = (*(v10 + 88))(v13, v9);
  if (MEMORY[0x277D00428] && v14 == *MEMORY[0x277D00428])
  {
    (*(v10 + 8))(a1, v9);
    (*(v10 + 96))(v13, v9);
    v15 = type metadata accessor for CameraTrackingState.Reason();
    v16 = *(v15 - 8);
    v17 = *(v16 + 64);
    MEMORY[0x28223BE20](v15);
    v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 32))(v19, v13, v15);
    v20 = (*(v16 + 88))(v19, v15);
    if (MEMORY[0x277D00400] && v20 == *MEMORY[0x277D00400])
    {
      v21 = MEMORY[0x277D82D90];
    }

    else if (MEMORY[0x277D00410] && v20 == *MEMORY[0x277D00410])
    {
      v21 = MEMORY[0x277D82DA0];
    }

    else if (MEMORY[0x277D00418] && v20 == *MEMORY[0x277D00418])
    {
      v21 = MEMORY[0x277D82DA8];
    }

    else
    {
      if (!MEMORY[0x277D00408] || v20 != *MEMORY[0x277D00408])
      {
        (*(v5 + 104))(v8, *MEMORY[0x277D82DA8], v4);
        (*(v16 + 8))(v19, v15);
        goto LABEL_23;
      }

      v21 = MEMORY[0x277D82D98];
    }

    (*(v5 + 104))(v8, *v21, v4);
LABEL_23:
    (*(v5 + 32))(a2, v8, v4);
    v22 = 0;
    return (*(v5 + 56))(a2, v22, 2, v4);
  }

  if (MEMORY[0x277D003F8] && v14 == *MEMORY[0x277D003F8])
  {
    (*(v10 + 8))(a1, v9);
    v22 = 1;
    return (*(v5 + 56))(a2, v22, 2, v4);
  }

  if (MEMORY[0x277D00420] && v14 == *MEMORY[0x277D00420])
  {
    (*(v10 + 8))(a1, v9);
    v22 = 2;
    return (*(v5 + 56))(a2, v22, 2, v4);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void DataModel.onFrameUpdateInObjectMode(frame:)(unint64_t a1)
{
  v167.n128_u64[0] = a1;
  v1 = type metadata accessor for DataModel.State(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v151 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v166.n128_u64[0] = &v151 - v7;
  MEMORY[0x28223BE20](v6);
  v165.n128_u64[0] = &v151 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMd, &_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v151 - v12;
  v14 = type metadata accessor for CoveragePointCloud();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  *&v155 = &v151 - v19;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  v22 = v21[8];
  MEMORY[0x28223BE20](v20);
  v24 = (&v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v160 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v24 = static OS_dispatch_queue.main.getter();
  v25 = v21[13];
  v158 = *MEMORY[0x277D85200];
  v159 = v21 + 13;
  v157 = v25;
  v25(v24);
  v26 = _dispatchPreconditionTest(_:)();
  v28 = v21[1];
  v27 = (v21 + 1);
  v161 = v24;
  v163.i64[0] = v20;
  v162 = v27;
  v156 = v28;
  v28(v24, v20);
  if ((v26 & 1) == 0)
  {
    goto LABEL_92;
  }

  v164.n128_u64[0] = v5;
  v29 = *(v169 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  v168 = v18;
  if (v29)
  {
    v30 = type metadata accessor for ObjectCaptureSession.State();
    *&v153 = &v151;
    v31 = *(v30 - 8);
    v32 = *(v31 + 64);
    MEMORY[0x28223BE20](v30);
    *&v154 = v29;
    v33 = dispatch thunk of ObjectCaptureSession.state.getter();
    MEMORY[0x28223BE20](v33);
    v34 = &v151 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 104))(v34, *MEMORY[0x277D00480], v30);
    lazy protocol witness table accessor for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback(&lazy protocol witness table cache variable for type ObjectCaptureSession.State and conformance ObjectCaptureSession.State, MEMORY[0x282217668]);
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    v36 = *(v31 + 8);
    v36(v34, v30);
    v36(v34, v30);
    if (v35)
    {
    }

    else
    {
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
      v38 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v37 - 8);
      v40 = &v151 - v39;
      ObjectCaptureSession.Frame.pointCloud.getter();
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
      v42 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v41 - 8);
      v44 = &v151 - v43;
      ObjectCaptureSession.Frame.object.getter();
      v45 = v155;
      DataModel.updateLatestCoveragePointCloud(pointCloud:pose:)(v40, v44, v155);

      outlined destroy of PerspectiveCameraComponent?(v44, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
      outlined destroy of PerspectiveCameraComponent?(v40, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
      outlined destroy of DataModel.Error(v45, type metadata accessor for CoveragePointCloud);
    }
  }

  v46 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__latestCoveragePointCloud;
  v47 = v169;
  swift_beginAccess();
  (*(v10 + 16))(v13, v47 + v46, v9);
  Atomic.wrappedValue.getter();
  (*(v10 + 8))(v13, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  v48 = v165.n128_u64[0];
  static Published.subscript.getter();

  v9 = type metadata accessor for DataModel.Error(0);
  v20 = *(v9 - 8);
  v49 = *(v20 + 56);
  v50 = v166.n128_u64[0];
  v49(v166.n128_u64[0], 5, 8, v9);
  LOBYTE(v46) = specialized static DataModel.State.== infix(_:_:)(v48, v50);
  outlined destroy of DataModel.Error(v50, type metadata accessor for DataModel.State);
  outlined destroy of DataModel.Error(v48, type metadata accessor for DataModel.State);
  if (v46)
  {
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    v52 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v51 - 8);
    v54 = &v151 - v53;
    ObjectCaptureSession.Frame.object.getter();
    v55 = type metadata accessor for ObjectCaptureSession.Frame.Object();
    v56 = *(v55 - 8);
    if ((*(v56 + 48))(v54, 1, v55) == 1)
    {
      outlined destroy of PerspectiveCameraComponent?(v54, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    }

    else
    {
      ObjectCaptureSession.Frame.Object.boundingBox.getter();
      v166 = v70;
      v165 = v71;
      v155 = v72;
      v154 = v73;
      (*(v56 + 8))(v54, v55);
      if (!*(v169 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel))
      {
        goto LABEL_109;
      }

      v74 = *(v169 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel);

      DetectModeBoxModel.onDetectedBoundingBox(box:)(v75);
    }

    v27 = v168;
    goto LABEL_21;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v49(v50, 6, 8, v9);
  v57 = specialized static DataModel.State.== infix(_:_:)(v48, v50);
  outlined destroy of DataModel.Error(v50, type metadata accessor for DataModel.State);
  outlined destroy of DataModel.Error(v48, type metadata accessor for DataModel.State);
  v27 = v168;
  if ((v57 & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!CoveragePointCloud.isValid()())
  {
    if (one-time initialization token for logger != -1)
    {
      goto LABEL_94;
    }

    goto LABEL_18;
  }

  v58 = *(v169 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureBoxModel);
  if (!v58)
  {
    goto LABEL_111;
  }

  v59 = *(v169 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureBoxModel);

  v60.n128_f64[0] = CoveragePointCloud.bboxWorld.getter();
  v166 = v60;
  v165 = v61;
  v155 = v62;
  v154 = v63;
  v64 = static OS_dispatch_queue.main.getter();
  v65 = v161;
  *v161 = v64;
  v66 = v163.i64[0];
  v157(v65, v158, v163.i64[0]);
  v67 = _dispatchPreconditionTest(_:)();
  v156(v65, v66);
  if (v67)
  {
    LOBYTE(v172[0]) = 0;
    v68 = v165;
    *(v58 + 144) = v166;
    *(v58 + 160) = v68;
    v69 = v154;
    *(v58 + 176) = v155;
    *(v58 + 192) = v69;
    *(v58 + 208) = 0;
    CaptureModeBoxModel.updateCurrentEntityTransform()();

    goto LABEL_21;
  }

  __break(1u);
LABEL_96:
  for (i = __CocoaSet.count.getter(); ; i = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = v67 & 0xC000000000000001;

    v130 = 0;
    while (1)
    {
      if (i == v130)
      {

        if (*(v20 + 88))
        {
          goto LABEL_112;
        }

        v141 = *(v20 + 72);
        v142 = *(v20 + 80);
        v140 = v168;
        if ((v141 & 0xC000000000000001) == 0)
        {
          if ((v142 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v142 < *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v143 = *(v141 + 8 * v142 + 32);

LABEL_78:
            v144 = *(v143 + 48);

            if (v144 <= 1)
            {
              goto LABEL_88;
            }

LABEL_79:
            if (CaptureCircle.isAnimationFinished.getter())
            {
              swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter();

              if (v170)
              {
                outlined destroy of DataModel.Error(v140, type metadata accessor for CoveragePointCloud);

                return;
              }

              if (*(v169 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_soundManager))
              {
                SoundManager.playCompletionSound(volume:)(1.0);
              }

              if (one-time initialization token for logger != -1)
              {
LABEL_103:
                swift_once();
              }

              v145 = type metadata accessor for Logger();
              __swift_project_value_buffer(v145, logger);
              v146 = Logger.logObject.getter();
              v147 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v146, v147))
              {
                v148 = swift_slowAlloc();
                *v148 = 0;
                _os_log_impl(&dword_23B824000, v146, v147, ">> Capture Dial is fully closed, setting userCompletedSegmentCaptureCircle to true!", v148, 2u);
                MEMORY[0x23EEB0B70](v148, -1, -1);
              }

              swift_getKeyPath();
              swift_getKeyPath();
              v170 = 1;

              static Published.subscript.setter();
            }

LABEL_88:

            v120 = type metadata accessor for CoveragePointCloud;
            v121 = v140;
LABEL_89:
            outlined destroy of DataModel.Error(v121, v120);
            return;
          }

          __break(1u);
          goto LABEL_103;
        }

        v150 = *(v20 + 72);

        v143 = MEMORY[0x23EEAFC40](v142, v141);

        goto LABEL_78;
      }

      if (v27)
      {
        v132 = MEMORY[0x23EEAFC40](v130, v67);
        if (__OFADD__(v130, 1))
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        goto LABEL_54;
      }

      if (v130 >= *(v65 + 16))
      {
        break;
      }

      v131 = *(v67 + 8 * v130 + 32);

      if (__OFADD__(v130, 1))
      {
        goto LABEL_58;
      }

LABEL_54:
      v133 = *(v132 + 36);

      ++v130;
      if ((v133 & 1) == 0)
      {
LABEL_71:

        v140 = v168;
        goto LABEL_88;
      }
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    while (2)
    {
      __break(1u);
LABEL_94:
      swift_once();
LABEL_18:
      v76 = type metadata accessor for Logger();
      __swift_project_value_buffer(v76, logger);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_23B824000, v77, v78, "Invalid capturePointCloud!  Not updating box...", v79, 2u);
        MEMORY[0x23EEB0B70](v79, -1, -1);
      }

LABEL_21:
      DataModel.getCurrentlySelectedBoundingBox()(v172);
      if ((v173 & 1) == 0)
      {
        v80 = *(v169 + 16);
        if (v80)
        {
          v166 = v172[0];
          v165 = v172[1];
          v155 = v172[2];
          v154 = v172[3];
          v81 = v80;
          dispatch thunk of ARView.cameraTransform.getter();
          v153 = v82;
          v152 = v83;
          v151 = v84;

          *v174.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*&v151, v152);
          __invert_f4(v174);
          v85 = specialized static MathHelpers.computeClippingPlanes(boxWorld:worldToCamera:flipZ:)(1);
          v87 = *(v169 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer);
          if (v87)
          {
            v88 = v85;
            v89 = v86;
            v90 = *(v169 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_depthHazeStartPercent);

            v91 = static OS_dispatch_queue.main.getter();
            v92 = v161;
            *v161 = v91;
            v93 = v163.i64[0];
            v157(v92, v158, v163.i64[0]);
            v94 = _dispatchPreconditionTest(_:)();
            v156(v92, v93);
            if ((v94 & 1) == 0)
            {
              continue;
            }

            *(v87 + 120) = v88 + (v90 * (v89 - v88));
            *(v87 + 124) = v89;

            break;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      break;
    }

    if (CoveragePointCloud.isValid()())
    {
      break;
    }

LABEL_39:
    swift_getKeyPath();
    swift_getKeyPath();
    v113 = v164.n128_u64[0];
    static Published.subscript.getter();

    if ((*(v20 + 48))(v113, 8, v9) != 6)
    {
      outlined destroy of DataModel.Error(v27, type metadata accessor for CoveragePointCloud);
      v120 = type metadata accessor for DataModel.State;
      v121 = v113;
      goto LABEL_89;
    }

    outlined destroy of DataModel.Error(v113, type metadata accessor for DataModel.State);
    v20 = *(v169 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle);
    if (!v20)
    {
      v120 = type metadata accessor for CoveragePointCloud;
      v121 = v27;
      goto LABEL_89;
    }

    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    v115 = (*(*(v114 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v114 - 8);
    v117 = &v151 - v116;

    ObjectCaptureSession.Frame.object.getter();
    v118 = type metadata accessor for ObjectCaptureSession.Frame.Object();
    v119 = *(v118 - 8);
    if ((*(v119 + 48))(v117, 1, v118) == 1)
    {
      outlined destroy of DataModel.Error(v168, type metadata accessor for CoveragePointCloud);

      outlined destroy of PerspectiveCameraComponent?(v117, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
      return;
    }

    ObjectCaptureSession.Frame.Object.boundingBox.getter();
    v167 = v122;
    v166 = v123;
    v165 = v124;
    v164 = v125;
    (*(v119 + 8))(v117, v118);
    v126 = *(v169 + 16);
    if (!v126)
    {
      goto LABEL_110;
    }

    v127 = *(v169 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime);
    v128 = v126;
    CaptureCircle.update(arView:boundingBoxWorld:time:)(v167, v166, v165, v164, v127);

    if (*(v20 + 24) != 1)
    {
LABEL_59:
      swift_beginAccess();
      v134 = *(v20 + 72);
      if (v134 >> 62)
      {
        if (v134 < 0)
        {
          v149 = *(v20 + 72);
        }

        v135 = __CocoaSet.count.getter();
      }

      else
      {
        v135 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v27 = v134 & 0xC000000000000001;

      v136 = 0;
      while (v135 != v136)
      {
        if (v27)
        {
          v138 = MEMORY[0x23EEAFC40](v136, v134);
          if (__OFADD__(v136, 1))
          {
            goto LABEL_70;
          }
        }

        else
        {
          if (v136 >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_91;
          }

          v137 = *(v134 + 8 * v136 + 32);

          if (__OFADD__(v136, 1))
          {
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }
        }

        v139 = *(v138 + 36);

        ++v136;
        if ((v139 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      v140 = v168;
      goto LABEL_79;
    }

    swift_beginAccess();
    v67 = *(v20 + 72);
    v65 = v67 & 0xFFFFFFFFFFFFFF8;
    if (v67 >> 62)
    {
      goto LABEL_96;
    }
  }

  DataModel.getDeviceOrientationCorrectedReticleAimVector()();
  v96 = v95;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v171)
  {
    goto LABEL_106;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v97 = v171;
  if (v171)
  {
    v98 = *(v169 + 16);
    if (v98)
    {
      v99 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime;
      v100 = v169;
      v101 = *(v169 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime);
      v102 = v98;
      dispatch thunk of ARView.cameraTransform.getter();
      v166 = v103;
      v165 = v104;
      v163 = v105;

      v106 = *(v100 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle);
      v107 = *(v100 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator);
      v108 = 1.0;
      if (v107)
      {
        v108 = *(v107 + 136);
      }

      if (v108 <= 0.3)
      {
        v108 = 0.3;
      }

      if (v108 <= 1.0)
      {
        v109 = v108;
      }

      else
      {
        v109 = 1.0;
      }

      v110 = *(v100 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle);

      CoveragePointRenderer.update(time:arCameraTransform:coveragePointCloud:captureCircle:reticleDeltaVector:motionScore:)(v27, v106, v101, v166, v165, v163, v96, v109);

      v111 = *(v169 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_fullscreenCoveragePointsRenderer);
      if (v111)
      {
        *&v111[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_localTime] = *(v169 + v99);
        v112 = v111;
        FullscreenCoveragePointsRenderer.updateInternal()();
      }

      goto LABEL_39;
    }
  }

  else
  {
LABEL_107:
    __break(1u);
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
}