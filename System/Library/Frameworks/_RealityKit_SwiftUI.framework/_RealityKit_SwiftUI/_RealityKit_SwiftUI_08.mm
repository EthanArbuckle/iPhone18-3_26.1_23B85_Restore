void FullscreenCoveragePointsRenderer.updateTurnTable()()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_objectToWorld);
  v3 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_objectToWorld);
  v4 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_objectToWorld + 16);
  v5 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_objectToWorld + 32);
  v6 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_objectToWorld + 48);
  Transform.init(matrix:)();
  v61 = v7;
  v8 = (v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_projection);
  v9 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_projection);
  v10 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_projection + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91BFD0;
  v73 = atanf(1.0 / v9);
  v12 = atanf(1.0 / v10);
  *(inited + 32) = vadd_f32(__PAIR64__(LODWORD(v12), LODWORD(v73)), __PAIR64__(LODWORD(v12), LODWORD(v73)));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
  swift_setDeallocating();
  v64 = *v2;
  v66 = v2[1];
  v69 = v2[2];
  v74 = v2[3];
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of FullscreenCoveragePointsRenderer.updateTurnTable());
  v75 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v64, v13.f32[0]), v66, *v13.f32, 1), v69, v13, 2), v74, v13, 3);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_23B91A6D0;
  *(v14 + 32) = v75.i64[0];
  *(v14 + 40) = v75.i32[2];
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v14);
  v76 = v15;
  swift_setDeallocating();
  v16 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_turnTableCameraControl;
  v17 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_turnTableCameraControl);
  if (!v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17[5] = v76;
  TurnTableCameraControl.update()();
  v18 = *(v1 + v16);
  if (!v18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = v18[15];
  v20 = fminf(v18[16], 1.0);
  if (v20 > v19)
  {
    v19 = v20;
  }

  v18[14] = v19;
  TurnTableCameraControl.update()();
  v21 = *(v1 + v16);
  if (!v21)
  {
    goto LABEL_17;
  }

  v22 = vsubq_f32(v21[12], v76);
  v23 = vmulq_f32(v22, v22);
  *&v24 = v23.f32[2] + vaddv_f32(*v23.f32);
  *v23.f32 = vrsqrte_f32(v24);
  *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32)));
  v57 = vmulq_n_f32(v22, vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32))).f32[0]);
  v70 = 0.0 - v57.f32[2];
  v25 = *v8;
  v26 = v8[5];
  v27 = v8[14];
  v28 = v8[10];
  Transform.init()();
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of FullscreenCoveragePointsRenderer.updateTurnTable());
  v56 = v29;
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_23B91BFD0;
  v58 = atanf(1.0 / v25);
  v31 = atanf(1.0 / v26);
  *(v30 + 32) = vadd_f32(__PAIR64__(LODWORD(v31), LODWORD(v58)), __PAIR64__(LODWORD(v31), LODWORD(v58)));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(v30);
  v59 = v32;
  swift_setDeallocating();
  v33 = vmulq_f32(v61, v61);
  v34 = sqrtf(v33.f32[2] + vaddv_f32(*v33.f32));
  v35 = *(&v59 + 1);
  if (*(&v59 + 1) >= *&v59)
  {
    v35 = *&v59;
  }

  v62 = (v27 / v28) + (((v34 * 0.5) * 1.1) / tanf(v35 * 0.5));
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_23B91A6D0;
  *v37.f32 = vsub_f32(0, *v57.f32);
  v60 = *v37.f32;
  v37.i64[1] = LODWORD(v70);
  *v38.i64 = simd_quaternion(v56, v37);
  v67 = v38;
  *(v36 + 32) = vsub_f32(*v76.f32, vmul_n_f32(v60, v62));
  *(v36 + 40) = v76.f32[2] - (v70 * v62);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v36);
  v71 = v39;
  swift_setDeallocating();
  *v40.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v71, v67);
  v63 = v40;
  v65 = v41;
  v68 = v42;
  v72 = v43;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of FullscreenCoveragePointsRenderer.updateTurnTable());
  v45 = *(v1 + v16);
  if (!v45)
  {
    goto LABEL_18;
  }

  v46 = vsubq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, v44.f32[0]), v65, *v44.f32, 1), v68, v44, 2), v72, v44, 3), v76);
  v47 = vmulq_f32(v46, v46);
  v48 = sqrtf(v47.f32[2] + vaddv_f32(*v47.f32));
  if (v45[16] < v48)
  {
    v48 = v45[16];
  }

  if (v48 <= v45[15])
  {
    v48 = v45[15];
  }

  v45[14] = v48;
  TurnTableCameraControl.update()();
  v49 = *(v1 + v16);
  if (v49)
  {
    v50 = *(v49 + 160);
    *&v51 = specialized simd_float4x4.init(translation:rotation:scale:)(*(v49 + 192), *(v49 + 176));
    v52 = (v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewToWorld);
    *v52 = v51;
    v52[1] = v53;
    v52[2] = v54;
    v52[3] = v55;
    return;
  }

LABEL_19:
  __break(1u);
}

Swift::Void __swiftcall FullscreenCoveragePointsRenderer.draw(in:)(MTKView in)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_coveragePointCloud;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v7, v6, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v8 = type metadata accessor for CoveragePointCloud();
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  outlined destroy of PerspectiveCameraComponent?(v6, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  if (v7 == 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_23B824000, v10, v11, "draw() has nil coveragePointCloud!  Not drawing...", v12, 2u);
      MEMORY[0x23EEB0B70](v12, -1, -1);
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_renderStyle))
  {
    FullscreenCoveragePointsRenderer.drawCubes(in:)(in.super.super.super.isa);
  }

  else
  {
    FullscreenCoveragePointsRenderer.drawPointPrimitives(in:)(in.super.super.super.isa);
  }
}

void FullscreenCoveragePointsRenderer.drawPointPrimitives(in:)(void *a1)
{
  v2 = v1;
  v102 = a1;
  v3 = type metadata accessor for ColorScheme();
  v98 = *(v3 - 8);
  v99 = v3;
  v4 = *(v98 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v101 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v100 = &v90 - v7;
  v8 = type metadata accessor for FullscreenCoveragePointsRenderer.ResourceEntry(0);
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_inFlightLock;
  v12 = *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_inFlightLock];

  os_unfair_lock_lock(v12 + 4);

  FullscreenCoveragePointsRenderer.updateInternal()();
  v13 = type metadata accessor for ObjectCaptureSession.Frame.PointCloud();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v90 - v20;
  v22 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_coveragePoints;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v2[v22], v21, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  if ((*(v14 + 48))(v21, 1, v13) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v21, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, logger);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_23B824000, v24, v25, "No coverage points -- can't render preview!", v26, 2u);
      MEMORY[0x23EEB0B70](v26, -1, -1);
    }

    goto LABEL_44;
  }

  (*(v14 + 32))(v17, v21, v13);
  v27 = ObjectCaptureSession.Frame.PointCloud.points.getter();
  v28 = FullscreenCoveragePointsRenderer.createUniformsForPointPrimitiveRenderPass(pointCloud:)();
  v29 = v8[5];
  (*(v14 + 16))(&v11[v29], v17, v13);
  (*(v14 + 56))(&v11[v29], 0, 1, v13);
  v30 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_device];
  v31 = dispatch thunk of OCDataBuffer.asMTLBuffer(from:)();
  *v11 = v28;
  *&v11[v8[6]] = v31;
  *&v11[v8[7]] = 0;
  v32 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_inFlightQueue];
  v33 = specialized InFlightQueue.retain(_:)(v11, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMd, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMR, type metadata accessor for FullscreenCoveragePointsRenderer.ResourceEntry, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v34 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_commandQueue];
  if (!v34)
  {
    __break(1u);
    goto LABEL_53;
  }

  v35 = [v34 commandBuffer];
  if (!v35)
  {
    (*(v14 + 8))(v17, v13);
LABEL_32:

LABEL_43:
    _s19_RealityKit_SwiftUI18CoveragePointCloudVWOhTm_0(v11, type metadata accessor for FullscreenCoveragePointsRenderer.ResourceEntry);
LABEL_44:
    v89 = *&v2[v103];

    os_unfair_lock_unlock(v89 + 4);

    return;
  }

  v36 = v35;
  v94 = v31;
  v37 = [v102 currentRenderPassDescriptor];
  if (!v37)
  {
    (*(v14 + 8))(v17, v13);
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  v38 = v37;
  v93 = v28;
  v92 = v33;
  v95 = v36;
  v96 = v27;
  v39 = [v37 colorAttachments];
  v40 = [v39 objectAtIndexedSubscript_];

  if (!v40)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  [v40 setLoadAction_];

  v97 = v38;
  v41 = [v38 colorAttachments];
  v42 = [v41 objectAtIndexedSubscript:0];

  if (!v42)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  [v42 setClearColor_];

  v43 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_baseRenderer;
  if (!*&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_baseRenderer])
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v44 = &v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportSize];
  v45 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportSize];
  if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v45 <= -9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v45 >= 9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v46 = v44[1];
  if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v46 <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v46 >= 9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v47 = v45;
  v48 = v46;
  v49 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_baseRenderer];

  BaseRenderer.updateDepthAttachmentTexture(width:height:)(v47, v48);

  v50 = [v97 depthAttachment];
  if (!v50)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v51 = *&v2[v43];
  v52 = v95;
  if (!v51)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v53 = v97;
  if (!*(v51 + 32))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v54 = v50;
  [v50 setTexture_];

  v55 = [v52 renderCommandEncoderWithDescriptor_];
  if (!v55)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v56 = v55;
  aBlock = 0;
  v105 = 0;
  v106 = *v44;
  v107 = xmmword_23B91C510;
  [v55 setViewport_];
  [v56 setDepthStencilState_];
  if (!*&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_renderPrimitivePointsPipeline])
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  [v56 setRenderPipelineState_];
  [v56 setVertexBuffer:v93 offset:0 atIndex:0];
  [v56 setVertexBuffer:v94 offset:0 atIndex:1];
  [v56 drawPrimitives:0 vertexStart:0 vertexCount:dispatch thunk of OCDataBuffer.count.getter()];
  v94 = v56;
  [v56 endEncoding];
  v57 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraFrustumRendererForShots;
  if (*&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraFrustumRendererForShots])
  {
    v58 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraFrustumRendererForShots];

    CameraFrustumRendererForShots.render(into:desc:)(v52, v53);
  }

  v41 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraPathRenderer;
  v59 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraPathRenderer];
  if (v59)
  {
    v60 = *&v2[v57];
    if (v60)
    {
      v61 = *(v60 + 24);
      v44 = (v59 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled);
      v62 = *(v59 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled);
      *(v59 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled) = v61;
      if (v61 == v62)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v44 = (v59 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled);
      v63 = *(v59 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled);
      *(v59 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled) = 0;
      if ((v63 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    v64 = one-time initialization token for logger;

    if (v64 == -1)
    {
LABEL_35:
      v65 = type metadata accessor for Logger();
      __swift_project_value_buffer(v65, logger);

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      v93 = v66;
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 67109120;
        *(v68 + 4) = *v44;

        v69 = v67;
        v70 = v93;
        _os_log_impl(&dword_23B824000, v93, v69, "CameraPathRenderer.enabled = %{BOOL}d", v68, 8u);
        v71 = v68;
        v52 = v95;
        MEMORY[0x23EEB0B70](v71, -1, -1);
      }

      else
      {

        v52 = v95;
      }

LABEL_38:
      v72 = *(&v41->isa + v2);
      if (v72)
      {
        v73 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_colorScheme;
        swift_beginAccess();
        v74 = v98;
        v91 = v17;
        v75 = *(v98 + 16);
        v93 = v41;
        v76 = v99;
        v75(v100, &v2[v73], v99);
        v77 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_colorScheme;
        swift_beginAccess();
        v75(v101, (v72 + v77), v76);
        v17 = v91;
        swift_beginAccess();
        v90 = *(v74 + 24);

        v78 = v72 + v77;
        v79 = v100;
        v90(v78, v100, v76);
        swift_endAccess();
        v80 = v101;
        CameraPathRenderer.colorScheme.didset();

        v81 = *(v74 + 8);
        v82 = v80;
        v52 = v95;
        v81(v82, v76);
        v81(v79, v76);
        if (*(&v93->isa + v2))
        {
          v83 = *(&v93->isa + v2);

          specialized CameraPathRenderer.render(into:viewport:renderPassDescriptor:)(v52, v97);
        }
      }

      goto LABEL_41;
    }

LABEL_51:
    swift_once();
    goto LABEL_35;
  }

LABEL_41:
  v84 = [v102 currentDrawable];
  if (v84)
  {
    [v52 presentDrawable_];
    swift_unknownObjectRelease();
    v85 = swift_allocObject();
    v86 = v92;
    *(v85 + 16) = v2;
    *(v85 + 24) = v86;
    *&v107 = partial apply for closure #1 in FullscreenCoveragePointsRenderer.drawPointPrimitives(in:);
    *(&v107 + 1) = v85;
    aBlock = MEMORY[0x277D85DD0];
    v105 = 1107296256;
    *&v106 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MTLCommandBuffer) -> ();
    *(&v106 + 1) = &block_descriptor_92;
    v87 = _Block_copy(&aBlock);
    v88 = v2;

    [v52 addCompletedHandler_];
    _Block_release(v87);
    [v52 commit];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v14 + 8))(v17, v13);
    goto LABEL_43;
  }

LABEL_61:
  __break(1u);
}

void FullscreenCoveragePointsRenderer.drawCubes(in:)(void *a1)
{
  v2 = v1;
  v84 = a1;
  v3 = type metadata accessor for FullscreenCoveragePointsRenderer.ResourceEntry(0);
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_inFlightLock;
  v7 = *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_inFlightLock];

  os_unfair_lock_lock(v7 + 4);

  FullscreenCoveragePointsRenderer.updateInternal()();
  v8 = type metadata accessor for ObjectCaptureSession.Frame.PointCloud();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v83 = v11;
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v81 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v72 - v14;
  v16 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_coveragePoints;
  swift_beginAccess();
  v82 = v16;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v2[v16], v15, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v17 = *(v9 + 48);
  if (v17(v15, 1, v8) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v15, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, logger);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23B824000, v19, v20, "No coverage points -- can't render preview!", v21, 2u);
      MEMORY[0x23EEB0B70](v21, -1, -1);
    }

    goto LABEL_35;
  }

  v77 = *(v9 + 32);
  v78 = v9 + 32;
  v77(v12, v15, v8);
  v22 = FullscreenCoveragePointsRenderer.createUniformsForPointPrimitiveRenderPass(pointCloud:)();
  v23 = v3[5];
  (*(v9 + 16))(&v6[v23], v12, v8);
  v80 = v9;
  (*(v9 + 56))(&v6[v23], 0, 1, v8);
  swift_unknownObjectRetain();
  ObjectCaptureSession.Frame.PointCloud.points.getter();
  v24 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_device];
  v25 = dispatch thunk of OCDataBuffer.asMTLBuffer(from:)();

  v79 = v22;
  *v6 = v22;
  *&v6[v3[6]] = v25;
  *&v6[v3[7]] = 0;
  v26 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_inFlightQueue];
  v27 = specialized InFlightQueue.retain(_:)(v6, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMd, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMR, type metadata accessor for FullscreenCoveragePointsRenderer.ResourceEntry, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v28 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_commandQueue];
  if (!v28)
  {
    __break(1u);
    goto LABEL_44;
  }

  v29 = v6;
  v30 = [v28 commandBuffer];
  v31 = v80;
  if (!v30)
  {
LABEL_29:
    swift_unknownObjectRelease();
LABEL_34:
    _s19_RealityKit_SwiftUI18CoveragePointCloudVWOhTm_0(v29, type metadata accessor for FullscreenCoveragePointsRenderer.ResourceEntry);
    (*(v31 + 8))(v12, v8);
LABEL_35:
    v71 = *&v2[v85];

    os_unfair_lock_unlock(v71 + 4);

    return;
  }

  v32 = v30;
  v33 = [v84 currentRenderPassDescriptor];
  if (!v33)
  {
    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  v34 = v33;
  v75 = v27;
  v73 = v29;
  v35 = [v33 colorAttachments];
  v36 = [v35 objectAtIndexedSubscript_];

  if (!v36)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v74 = v12;
  [v36 setLoadAction_];

  v76 = v34;
  v37 = [v34 colorAttachments];
  v38 = [v37 objectAtIndexedSubscript_];

  if (!v38)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  [v38 setClearColor_];

  v39 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_baseRenderer;
  if (!*&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_baseRenderer])
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v40 = &v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportSize];
  v41 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportSize];
  if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v41 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v41 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v42 = v40[1];
  if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v42 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v42 >= 9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v43 = v41;
  v44 = v42;
  v45 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_baseRenderer];

  BaseRenderer.updateDepthAttachmentTexture(width:height:)(v43, v44);

  v46 = v76;
  v47 = [v76 depthAttachment];
  if (!v47)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v48 = *&v2[v39];
  if (!v48)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (!*(v48 + 32))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v49 = v47;
  [v47 setTexture_];

  v39 = v32;
  v50 = [v32 renderCommandEncoderWithDescriptor_];
  if (!v50)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  aBlock = 0;
  v87 = 0;
  v88 = *v40;
  v89 = xmmword_23B91C510;
  v72 = v50;
  v51 = [v50 setViewport_];
  v52 = MEMORY[0x28223BE20](v51);
  v54 = &v72 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v56 = &v72 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v2[v82], v56, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  if (v17(v56, 1, v8) == 1)
  {
    swift_unknownObjectRelease();
    outlined destroy of PerspectiveCameraComponent?(v56, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
    if (one-time initialization token for logger == -1)
    {
LABEL_25:
      v57 = type metadata accessor for Logger();
      __swift_project_value_buffer(v57, logger);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();
      v60 = os_log_type_enabled(v58, v59);
      v31 = v80;
      v61 = v39;
      if (v60)
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_23B824000, v58, v59, "coveragePoints is nil!  Not able to render voxels.", v62, 2u);
        MEMORY[0x23EEB0B70](v62, -1, -1);
      }

      v12 = v74;
      v63 = v75;
      v64 = v76;
      v65 = v72;
LABEL_32:
      [v65 endEncoding];
      v67 = [v84 currentDrawable];
      if (v67)
      {
        [v61 presentDrawable_];
        swift_unknownObjectRelease();
        v68 = swift_allocObject();
        *(v68 + 16) = v2;
        *(v68 + 24) = v63;
        *&v89 = partial apply for closure #1 in FullscreenCoveragePointsRenderer.drawCubes(in:);
        *(&v89 + 1) = v68;
        aBlock = MEMORY[0x277D85DD0];
        v87 = 1107296256;
        *&v88 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MTLCommandBuffer) -> ();
        *(&v88 + 1) = &block_descriptor_7;
        v69 = _Block_copy(&aBlock);
        v70 = v2;

        [v61 addCompletedHandler_];
        _Block_release(v69);
        [v61 commit];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v29 = v73;
        goto LABEL_34;
      }

      goto LABEL_51;
    }

LABEL_42:
    swift_once();
    goto LABEL_25;
  }

  v77(v54, v56, v8);
  if (FullscreenCoveragePointsRenderer.voxelRenderer.getter())
  {
    v66 = v72;
    VoxelRenderer.render(encoder:uniforms:pointCloud:)(v72, v79);

    swift_unknownObjectRelease();
    v31 = v80;
    (*(v80 + 8))(v54, v8);
    v65 = v66;
    v61 = v39;
    v12 = v74;
    v63 = v75;
    v64 = v76;
    goto LABEL_32;
  }

LABEL_52:
  __break(1u);
}

void closure #1 in FullscreenCoveragePointsRenderer.drawPointPrimitives(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMd, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v42 = &v38 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = (&v38 - v12);
  v14 = *(a2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_inFlightQueue);
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
      v24 = &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMd;
      v25 = &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMR;
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

void FullscreenCoveragePointsRenderer.initPointPrimitiveRenderPipeline()()
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for mtlLibrary != -1)
  {
    swift_once();
  }

  v1 = static FullscreenCoveragePointsRenderer.mtlLibrary;
  if (!static FullscreenCoveragePointsRenderer.mtlLibrary)
  {
    lazy protocol witness table accessor for type FullscreenCoveragePointsRenderer.Error and conformance FullscreenCoveragePointsRenderer.Error();
    swift_allocError();
    swift_willThrow();
    goto LABEL_13;
  }

  swift_unknownObjectRetain();
  v2 = MEMORY[0x23EEAF480](0xD00000000000002BLL, 0x800000023B926BB0);
  v3 = [v1 newFunctionWithName_];

  v4 = MEMORY[0x23EEAF480](0xD00000000000002ELL, 0x800000023B9254D0);
  v5 = [v1 newFunctionWithName_];

  v6 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  [v6 setVertexFunction_];
  [v6 setFragmentFunction_];
  v7 = [v6 colorAttachments];
  v8 = [v7 objectAtIndexedSubscript_];

  if (v8)
  {
    [v8 setPixelFormat_];

    v9 = [v6 colorAttachments];
    v10 = [v9 objectAtIndexedSubscript_];

    if (v10)
    {
      [v10 setBlendingEnabled_];

      [v6 setAlphaToCoverageEnabled_];
      [v6 setDepthAttachmentPixelFormat_];
      v11 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_device);
      v22[0] = 0;
      v12 = [v11 newRenderPipelineStateWithDescriptor:v6 error:v22];
      v13 = v22[0];
      if (v12)
      {
        v14 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_renderPrimitivePointsPipeline);
        *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_renderPrimitivePointsPipeline) = v12;
        v15 = v13;
        swift_unknownObjectRelease();
        v16 = [v11 newCommandQueue];
        if (v16)
        {
          v17 = v16;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v18 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_commandQueue);
          *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_commandQueue) = v17;
          swift_unknownObjectRelease();
LABEL_13:
          v21 = *MEMORY[0x277D85DE8];
          return;
        }

        lazy protocol witness table accessor for type FullscreenCoveragePointsRenderer.Error and conformance FullscreenCoveragePointsRenderer.Error();
        swift_allocError();
        swift_willThrow();
      }

      else
      {
        v19 = v22[0];
        v20 = _convertNSErrorToError(_:)();

        swift_willThrow();
        lazy protocol witness table accessor for type FullscreenCoveragePointsRenderer.Error and conformance FullscreenCoveragePointsRenderer.Error();
        swift_allocError();
        swift_willThrow();
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id FullscreenCoveragePointsRenderer.createUniformsForPointPrimitiveRenderPass(pointCloud:)()
{
  v1 = v0;
  v76.i64[0] = type metadata accessor for CoveragePointCloud();
  v2 = *(v76.i64[0] - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v76.i64[0]);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v68 - v11;
  result = [*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_device) newBufferWithLength:880 options:0];
  if (!result)
  {
    goto LABEL_25;
  }

  v14 = result;
  v15 = [swift_unknownObjectRetain() contents];
  v16 = v14;
  ObjectCaptureSession.Frame.PointCloud.points.getter();
  v17 = dispatch thunk of OCDataBuffer.count.getter();

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (HIDWORD(v17))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v15 + 135) = v17;
  v18 = v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportSize;
  v19 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportSize);
  v20 = v19;
  *(v15 + 137) = v20 * 0.006;
  v15[552] = 0;
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v19 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v19 >= 4294967300.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(v15 + 132) = v19;
  v21 = *(v18 + 8);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v21 <= -1.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 >= 4294967300.0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  *(v15 + 133) = v21;
  ObjectCaptureSession.Frame.PointCloud.transform.getter();
  *v15 = v22;
  *(v15 + 1) = v23;
  *(v15 + 2) = v24;
  *(v15 + 3) = v25;
  v26 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_objectToWorldUnscaled + 16);
  v27 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_objectToWorldUnscaled + 32);
  v28 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_objectToWorldUnscaled + 48);
  *(v15 + 8) = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_objectToWorldUnscaled);
  *(v15 + 9) = v26;
  *(v15 + 10) = v27;
  *(v15 + 11) = v28;
  v29 = (v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewToWorld);
  *(v15 + 3) = __invert_f4(*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewToWorld));
  v83 = __invert_f4(*v29);
  *(v15 + 4) = __invert_f4(v83);
  v84 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_projection);
  *(v15 + 5) = v84;
  *(v15 + 464) = __invert_f4(v84);
  v30 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_coveragePointCloud;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v30, v12, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v31 = *(v2 + 48);
  v32 = 1;
  if (v31(v12, 1, v76.i64[0]))
  {
    outlined destroy of PerspectiveCameraComponent?(v12, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    v81[0].i8[0] = 1;
    v33 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
  }

  else
  {
    outlined init with copy of CoveragePointCloud(v12, v5, type metadata accessor for CoveragePointCloud);
    outlined destroy of PerspectiveCameraComponent?(v12, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    *v37.i64 = CoveragePointCloud.bboxWorld.getter();
    v74 = v38;
    v75 = v37;
    v73 = v39;
    v72 = v40;
    _s19_RealityKit_SwiftUI18CoveragePointCloudVWOhTm_0(v5, type metadata accessor for CoveragePointCloud);
    v36 = v72;
    v35 = v73;
    v34 = v74;
    v33 = v75;
    v32 = 0;
    v81[0].i8[0] = 0;
  }

  v81[0] = v33;
  v81[1] = v34;
  v81[2] = v35;
  v81[3] = v36;
  v82 = v32;
  v41 = specialized static BoundingBoxHelpers.getBoundingSphere(boxWorld:)(v81);
  v41.n128_u32[2] = v42;
  *(v15 + 35) = v41;
  *(v15 + 144) = v43;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v30, v10, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  if (v31(v10, 1, v76.i64[0]))
  {
    outlined destroy of PerspectiveCameraComponent?(v10, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    LOBYTE(v79) = 1;
    v78 = 0;
    v44 = 0uLL;
    v77 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v52 = 0uLL;
    v53 = 0uLL;
    v54 = 0uLL;
    v55 = 0uLL;
  }

  else
  {
    outlined init with copy of CoveragePointCloud(v10, v5, type metadata accessor for CoveragePointCloud);
    outlined destroy of PerspectiveCameraComponent?(v10, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    *v48.i64 = CoveragePointCloud.bboxWorld.getter();
    v73 = v48;
    v74 = v49;
    v75 = v50;
    v76 = v51;
    _s19_RealityKit_SwiftUI18CoveragePointCloudVWOhTm_0(v5, type metadata accessor for CoveragePointCloud);
    LOBYTE(v79) = 0;
    v78 = 0;
    v77 = 0;
    Transform.init(matrix:)();
    v71 = v56;
    v70 = v57;
    v56.f32[0] = vmuls_lane_f32(0.5, v58, 2);
    v57.i64[0] = 0x3F0000003F000000;
    v57.i64[1] = 0x3F0000003F000000;
    v58.i64[0] = vmulq_f32(v58, v57).u64[0];
    v58.i64[1] = v56.u32[0];
    v59 = vrecpeq_f32(v58);
    v60 = vmulq_f32(v59, vrecpsq_f32(v58, v59));
    v72 = vmulq_f32(v60, vrecpsq_f32(v58, v60));
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of FullscreenCoveragePointsRenderer.createUniformsForPointPrimitiveRenderPass(pointCloud:));
    *v85.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*v70.i64, v71);
    v86 = __invert_f4(v85);
    v71 = v86.columns[0];
    v70 = v86.columns[1];
    v69 = v86.columns[2];
    v68 = v86.columns[3];
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of FullscreenCoveragePointsRenderer.createUniformsForPointPrimitiveRenderPass(pointCloud:));
    v54 = v68;
    v53 = v69;
    v52 = v70;
    v55 = v72;
    v47 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, *&v61), v74, *&v61, 1), v75, v61, 2), v76, v61, 3).i32[1];
    v46 = 0x400000003FC00000;
    v45 = 1;
    v44 = v71;
  }

  v62 = v77;
  v79 = v77;
  v63 = v78;
  v80 = v78;
  *(v15 + 37) = v44;
  *(v15 + 38) = v52;
  *(v15 + 39) = v53;
  *(v15 + 40) = v54;
  *(v15 + 41) = v55;
  *(v15 + 84) = v46;
  v15[680] = v45;
  *(v15 + 681) = v62;
  v15[683] = v63;
  *(v15 + 171) = v47;
  v15[688] = 0;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of FullscreenCoveragePointsRenderer.createUniformsForPointPrimitiveRenderPass(pointCloud:));
  *(v15 + 56) = v64;
  v65 = *(MEMORY[0x277D860B8] + 16);
  v66 = *(MEMORY[0x277D860B8] + 32);
  v67 = *(MEMORY[0x277D860B8] + 48);
  *(v15 + 24) = *MEMORY[0x277D860B8];
  *(v15 + 25) = v65;
  *(v15 + 26) = v66;
  *(v15 + 27) = v67;
  *(v15 + 114) = 1065353216;
  v15[689] = 0;
  return v14;
}

void type metadata completion function for FullscreenCoveragePointsRenderer()
{
  type metadata accessor for CoveragePointCloud?(319, &lazy cache variable for type metadata for CoveragePointCloud?, type metadata accessor for CoveragePointCloud);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for CoveragePointCloud?(319, &lazy cache variable for type metadata for ObjectCaptureSession.Frame.PointCloud?, MEMORY[0x282217620]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for ColorScheme();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for CoveragePointCloud?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata completion function for FullscreenCoveragePointsRenderer.ResourceEntry()
{
  type metadata accessor for MTLBuffer?(319, &lazy cache variable for type metadata for MTLBuffer?, &_sSo9MTLBuffer_pMd, &_sSo9MTLBuffer_pMR);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CoveragePointCloud?(319, &lazy cache variable for type metadata for ObjectCaptureSession.Frame.PointCloud?, MEMORY[0x282217620]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MTLBuffer?(319, &lazy cache variable for type metadata for MTLTexture?, &_sSo10MTLTexture_pMd, &_sSo10MTLTexture_pMR);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for MTLBuffer?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t specialized InFlightQueue.retain(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  os_unfair_lock_lock(v8 + 4);
  v9 = v3[3];
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    v3[3] = v9 + 1;
    swift_beginAccess();
    v4 = v3[4];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[4] = v4;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
  v3[4] = v4;
LABEL_3:
  v12 = v4[2];
  v11 = v4[3];
  if (v12 >= v11 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v4);
  }

  v4[2] = v12 + 1;
  v13 = &v4[4 * v12];
  v13[4] = v9;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v3[4] = v4;
  swift_endAccess();
  os_unfair_lock_unlock(v8 + 4);
  return v9;
}

uint64_t specialized InFlightQueue.retain(_:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v21 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v21 - v13);
  v15 = v5[2];
  os_unfair_lock_lock(v15 + 4);
  v16 = v5[3];
  if (__OFADD__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    v5[3] = v16 + 1;
    outlined init with copy of CoveragePointCloud(a1, v14 + *(v10 + 28), a4);
    *v14 = v16;
    swift_beginAccess();
    a4 = v5[4];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5[4] = a4;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  a4 = v21(0, *(a4 + 16) + 1, 1, a4);
  v5[4] = a4;
LABEL_3:
  v19 = *(a4 + 16);
  v18 = *(a4 + 24);
  if (v19 >= v18 >> 1)
  {
    a4 = v21(v18 > 1, v19 + 1, 1, a4);
  }

  *(a4 + 16) = v19 + 1;
  outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v14, a4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v19, a2, a3);
  v5[4] = a4;
  swift_endAccess();
  os_unfair_lock_unlock(v15 + 4);
  return v16;
}

id specialized DragGestureRecognizer.init(draggable:)(uint64_t a1, char *a2)
{
  v3 = &a2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21DragGestureRecognizer_startPoint];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  *&a2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21DragGestureRecognizer_draggable + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &protocol witness table for TurnTableCameraControl;
  swift_unknownObjectWeakAssign();

  v6.receiver = a2;
  v6.super_class = type metadata accessor for DragGestureRecognizer();
  v4 = objc_msgSendSuper2(&v6, sel_initWithTarget_action_, 0, 0);
  [v4 addTarget:v4 action:sel_onPanInternal_];
  [v4 setMaximumNumberOfTouches_];
  [v4 setDelegate_];

  return v4;
}

id specialized DragGestureRecognizer.init(draggable:)(void *a1, char *a2)
{
  v4 = &a2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21DragGestureRecognizer_startPoint];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&a2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21DragGestureRecognizer_draggable + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &protocol witness table for InteractiveCameraTransformManager;
  swift_unknownObjectWeakAssign();

  v7.receiver = a2;
  v7.super_class = type metadata accessor for DragGestureRecognizer();
  v5 = objc_msgSendSuper2(&v7, sel_initWithTarget_action_, 0, 0);
  [v5 addTarget:v5 action:sel_onPanInternal_];
  [v5 setMaximumNumberOfTouches_];
  [v5 setDelegate_];

  return v5;
}

unint64_t lazy protocol witness table accessor for type FullscreenCoveragePointsRenderer.Error and conformance FullscreenCoveragePointsRenderer.Error()
{
  result = lazy protocol witness table cache variable for type FullscreenCoveragePointsRenderer.Error and conformance FullscreenCoveragePointsRenderer.Error;
  if (!lazy protocol witness table cache variable for type FullscreenCoveragePointsRenderer.Error and conformance FullscreenCoveragePointsRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FullscreenCoveragePointsRenderer.Error and conformance FullscreenCoveragePointsRenderer.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FullscreenCoveragePointsRenderer.Error and conformance FullscreenCoveragePointsRenderer.Error;
  if (!lazy protocol witness table cache variable for type FullscreenCoveragePointsRenderer.Error and conformance FullscreenCoveragePointsRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FullscreenCoveragePointsRenderer.Error and conformance FullscreenCoveragePointsRenderer.Error);
  }

  return result;
}

uint64_t _s19_RealityKit_SwiftUI18CoveragePointCloudVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of CoveragePointCloud(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
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

uint64_t outlined assign with copy of CoveragePointCloud?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t InFlightQueue.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for InFlightQueue.Entry(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InFlightQueue.Entry(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for InFlightQueue.Entry(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 8] & ~v8;

  v18(v19);
}

uint64_t CameraFrustumRendererForShots.showShotLocations.didset(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    return result;
  }

  v2 = v1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v4, v5))
  {

    if ((*(v2 + 24) & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  v6 = swift_slowAlloc();
  *v6 = 67109120;
  *(v6 + 4) = *(v2 + 24);

  _os_log_impl(&dword_23B824000, v4, v5, "Set showShotLocations to %{BOOL}d", v6, 8u);
  MEMORY[0x23EEB0B70](v6, -1, -1);

  if (*(v2 + 24))
  {
    goto LABEL_8;
  }

LABEL_6:
  v7 = *(v2 + 48);
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  swift_unknownObjectRelease();
  v8 = *(v2 + 24);
LABEL_9:
  swift_beginAccess();
  outlined init with copy of Animation?(v2 + 72, v20);
  v9 = v21;
  if (v21)
  {
    outlined init with copy of Cancellable(v20, v18);
    outlined destroy of Animation?(v20);
    v10 = *__swift_project_boxed_opaque_existential_1(v18, v19);
    v11 = RampAnimation.update(time:)(*(v2 + 64));
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }

  else
  {
    outlined destroy of Animation?(v20);
    v11 = 0.0;
  }

  v12 = type metadata accessor for RampAnimation();
  result = swift_allocObject();
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0xFFF0000000000000;
  *(result + 24) = v8 ^ 1;
  *(result + 16) = 0x3FE0000000000000;
  v13 = 0.0;
  if (!v8)
  {
    v13 = 1.0;
  }

  if (v9)
  {
    v13 = v11;
  }

  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 72) = v13;
  if (v13 < 0.0 || v13 > 1.0)
  {
    __break(1u);
  }

  else
  {
    v21 = v12;
    v22 = &protocol witness table for RampAnimation;
    v20[0] = result;
    swift_beginAccess();
    outlined assign with take of Animation?(v20, v2 + 72);
    swift_endAccess();
    outlined init with copy of Animation?(v2 + 72, v20);
    if (v21)
    {
      outlined init with copy of Cancellable(v20, v18);
      outlined destroy of Animation?(v20);
      v14 = __swift_project_boxed_opaque_existential_1(v18, v19);
      v15 = *(v2 + 64);
      v16 = *v14;
      v17 = v15 + *(*v14 + 16);
      *(v16 + 48) = v15;
      *(v16 + 56) = v17;
      return __swift_destroy_boxed_opaque_existential_0Tm(v18);
    }

    else
    {
      return outlined destroy of Animation?(v20);
    }
  }

  return result;
}

uint64_t CameraFrustumRendererForShots.setup(device:pixelFormat:)(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23B824000, v7, v8, "Setting up CameraFrustumRendererForShots!", v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  v10 = *(v3 + 32);
  *(v3 + 32) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v11 = *(v3 + 40);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CameraFrustumMesh.Descriptor.init());
  v14 = v12;
  v15 = 1000593162;
  v16 = xmmword_23B921180;
  v17 = 0x3CF5C28F3F666666;
  v18 = 1017370378;
  v19 = 32;
  v20 = xmmword_23B921190;
  v21 = 981668463;
  v22 = 32;
  v23 = 1061997773;

  CameraFrustumRenderer.setup(device:pixelFormat:cameraFrustumMeshDescriptor:)(a1, a2, &v14);
}

void CameraFrustumRendererForShots.render(into:desc:)(void *a1, void *a2)
{
  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_shots;
    swift_beginAccess();
    if (*(*&v7[v8] + 16) && (CameraFrustumRendererForShots.createPosesMTLBufferIfNeeded()(), (v9 = v3[6]) != 0) && (v10 = v3[5], *(v10 + 176) > 0.001) && *(v10 + 24))
    {
      v11 = v3[7];

      swift_unknownObjectRetain();
      v12 = [a2 colorAttachments];
      v13 = [v12 objectAtIndexedSubscript_];

      if (v13)
      {
        [v13 setLoadAction_];

        CameraFrustumRenderer.renderCone(into:desc:cameraPosesMTLBuffer:numCameraPoses:)(a1, a2, v9, v11);
        CameraFrustumRenderer.renderHollowCylinder(into:desc:cameraPosesMTLBuffer:numCameraPoses:)(a1, a2, v9, v11);
        CameraFrustumRenderer.renderSphere(into:desc:cameraPosesMTLBuffer:numCameraPoses:)(a1, a2, v9, v11);

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall CameraFrustumRendererForShots.update(time:worldToView:viewToClip:)(Swift::Double time, simd_float4x4 *worldToView, simd_float4x4 *viewToClip)
{
  v22 = v9;
  v23 = v10;
  v20 = v7;
  v21 = v8;
  v18 = v5;
  v19 = v6;
  v17 = v4;
  *(v3 + 64) = time;
  if (*(v3 + 24))
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  swift_beginAccess();
  outlined init with copy of Animation?(v3 + 72, &v24);
  if (*(&v25 + 1))
  {
    outlined init with take of Animation(&v24, v27);
    v13 = __swift_project_boxed_opaque_existential_1(v27, v28);
    if (*(*v13 + 56) >= *(*v13 + 64))
    {
      v14 = v3;
      v15 = *__swift_project_boxed_opaque_existential_1(v27, v28);
      v3 = v14;
      v12 = RampAnimation.update(time:)(time);
    }

    else
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      swift_beginAccess();
      outlined assign with take of Animation?(&v24, v3 + 72);
      swift_endAccess();
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  else
  {
    outlined destroy of Animation?(&v24);
  }

  v16 = *(v3 + 40);
  *(v16 + 48) = v17;
  *(v16 + 64) = v18;
  *(v16 + 80) = v19;
  *(v16 + 96) = v20;
  *(v16 + 112) = v21;
  *(v16 + 128) = v22;
  *(v16 + 144) = v23;
  *(v16 + 160) = v29;
  *(v16 + 176) = v12;
}

void CameraFrustumRendererForShots.createPosesMTLBufferIfNeeded()()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_shots;
      swift_beginAccess();
      v5 = *(*&v3[v4] + 16);
      if (v5 && *(v0 + 56) != v5)
      {
        v6 = v0;
        v7 = one-time initialization token for logger;
        swift_unknownObjectRetain();
        if (v7 != -1)
        {
          goto LABEL_19;
        }

        while (1)
        {
          v8 = type metadata accessor for Logger();
          __swift_project_value_buffer(v8, logger);
          v9 = Logger.logObject.getter();
          v10 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            *v11 = 0;
            _os_log_impl(&dword_23B824000, v9, v10, "Creating MTLBuffer for shots...", v11, 2u);
            MEMORY[0x23EEB0B70](v11, -1, -1);
          }

          v12 = *(*&v3[v4] + 16);
          *(v6 + 56) = v12;
          if (v12 >> 57)
          {
            break;
          }

          v13 = [v1 newBufferWithLength:v12 << 6 options:1];
          if (!v13)
          {
            goto LABEL_22;
          }

          v14 = *(v6 + 48);
          *(v6 + 48) = v13;
          v15 = v13;
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v16 = [v15 contents];
          v17 = v15;
          v18 = *(v6 + 56);
          if (v18 < 0)
          {
            goto LABEL_21;
          }

          if (!v18)
          {
LABEL_16:

            swift_unknownObjectRelease();
            return;
          }

          v19 = *&v3[v4];
          v20 = *(v19 + 16);
          v21 = v16 + 32;
          v22 = (v19 + 96);
          while (v20)
          {
            v23 = *(v22 - 2);
            v24 = *(v22 - 1);
            v25 = *v22;
            *(v21 - 2) = *(v22 - 3);
            *(v21 - 1) = v23;
            *v21 = v24;
            v21[1] = v25;
            v21 += 4;
            --v20;
            v22 += 6;
            if (!--v18)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
LABEL_19:
          swift_once();
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
      }

      else
      {
      }
    }
  }
}

uint64_t CameraFrustumRendererForShots.__deallocating_deinit()
{
  MEMORY[0x23EEB0C40](v0 + 2);
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];
  swift_unknownObjectRelease();
  outlined destroy of Animation?((v0 + 9));

  return swift_deallocClassInstance();
}

uint64_t specialized CameraFrustumRendererForShots.init(cameraPathManager:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  type metadata accessor for CameraFrustumRenderer();
  v1 = swift_allocObject();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v2 = *MEMORY[0x277D860B8];
  v3 = *(MEMORY[0x277D860B8] + 16);
  v4 = *(MEMORY[0x277D860B8] + 32);
  v5 = *(MEMORY[0x277D860B8] + 48);
  *(v1 + 48) = *MEMORY[0x277D860B8];
  *(v1 + 64) = v3;
  *(v1 + 80) = v4;
  *(v1 + 96) = v5;
  *(v1 + 112) = v2;
  *(v1 + 128) = v3;
  *(v1 + 144) = v4;
  *(v1 + 160) = v5;
  *(v1 + 176) = 0;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  swift_unknownObjectWeakAssign();
  return v0;
}

uint64_t KeyframeAnimation.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for KeyframeAnimation.Keyframe(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for FreeformFullView()
{
  result = type metadata singleton initialization cache for FreeformFullView;
  if (!type metadata singleton initialization cache for FreeformFullView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for FreeformFullView()
{
  type metadata accessor for ObservedObject<DataModel>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<ColorScheme>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Environment<ColorScheme>()
{
  if (!lazy cache variable for type metadata for Environment<ColorScheme>)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<ColorScheme>);
    }
  }
}

uint64_t FreeformFullView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FreeformFullView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = v18;
  if (v18)
  {
    static Color.clear.getter();
    v17 = Color.opacity(_:)();

    v16 = static Edge.Set.all.getter();
    v9 = static SafeAreaRegions.all.getter();
    v10 = static Edge.Set.all.getter();
    v19 = 1;
    v20 = 0;
    outlined init with copy of FreeformFullView(v1, &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v12 = swift_allocObject();
    outlined init with take of FreeformFullView(&v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
    outlined init with copy of FreeformFullView(v1, &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v13 = swift_allocObject();
    result = outlined init with take of FreeformFullView(&v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v11);
    v14 = v17;
    *a1 = v8;
    *(a1 + 8) = v14;
    *(a1 + 16) = v16;
    *(a1 + 24) = v9;
    *(a1 + 32) = v10;
    *(a1 + 40) = 0;
    *(a1 + 48) = 257;
    *(a1 + 56) = 0x3FF0000000000000;
    *(a1 + 64) = 0;
    *(a1 + 65) = 1;
    *(a1 + 67) = 0;
    *(a1 + 72) = partial apply for closure #1 in FreeformFullView.body.getter;
    *(a1 + 80) = v12;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = partial apply for closure #2 in FreeformFullView.body.getter;
    *(a1 + 128) = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in FreeformFullView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = v14;
  if (v14)
  {
    v14[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_isFullViewEnabled] = 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = v14;
  if (v14)
  {
    v11 = a1 + *(type metadata accessor for FreeformFullView() + 20);
    specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR, MEMORY[0x277CDF3E0], v6);
    v12 = OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_colorScheme;
    swift_beginAccess();
    (*(v3 + 24))(&v10[v12], v6, v2);
    swift_endAccess();
    FreeformCloudRenderer.colorScheme.didset();

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void closure #2 in FreeformFullView.body.getter(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2)
  {
    v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_isFullViewEnabled] = 0;
  }
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance FreeformFullViewWrapper()
{
  result = *(*v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI21FreeformCloudRenderer_view);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance FreeformFullViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type FreeformFullViewWrapper and conformance FreeformFullViewWrapper();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance FreeformFullViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type FreeformFullViewWrapper and conformance FreeformFullViewWrapper();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance FreeformFullViewWrapper()
{
  lazy protocol witness table accessor for type FreeformFullViewWrapper and conformance FreeformFullViewWrapper();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  return specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR, MEMORY[0x277CDF3E0], a1);
}

{
  return specialized Environment.wrappedValue.getter(&_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMR, MEMORY[0x277CDD6C8], a1);
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v23 - v17);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t key path getter for DataModel.freeformCloudRenderer : DataModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for DataModel.freeformCloudRenderer : DataModel(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return static Published.subscript.setter();
}

uint64_t outlined init with take of FreeformFullView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FreeformFullView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for FreeformFullView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ColorScheme();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in FreeformFullView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FreeformFullView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout>, _AspectRatioLayout>, _ClipEffect<Rectangle>>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout>, _AspectRatioLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout>, _AspectRatioLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout>, _AspectRatioLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy012_RealityKit_aB023FreeformFullViewWrapper33_8883DE8B9714AC22F8132449FD924822LLVAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAA012_AspectRatioX0VGARGAA11_ClipEffectVyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy012_RealityKit_aB023FreeformFullViewWrapper33_8883DE8B9714AC22F8132449FD924822LLVAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAA012_AspectRatioX0VGARGAA11_ClipEffectVyAA9RectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA9RectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA9RectangleVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout>, _AspectRatioLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy012_RealityKit_aB023FreeformFullViewWrapper33_8883DE8B9714AC22F8132449FD924822LLVAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAA012_AspectRatioX0VGARGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy012_RealityKit_aB023FreeformFullViewWrapper33_8883DE8B9714AC22F8132449FD924822LLVAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAA012_AspectRatioX0VGARGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy012_RealityKit_aB023FreeformFullViewWrapper33_8883DE8B9714AC22F8132449FD924822LLVAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAA012_AspectRatioX0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy012_RealityKit_aB023FreeformFullViewWrapper33_8883DE8B9714AC22F8132449FD924822LLVAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAA012_AspectRatioX0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB023FreeformFullViewWrapper33_8883DE8B9714AC22F8132449FD924822LLVAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB023FreeformFullViewWrapper33_8883DE8B9714AC22F8132449FD924822LLVAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy012_RealityKit_aB023FreeformFullViewWrapper33_8883DE8B9714AC22F8132449FD924822LLVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy012_RealityKit_aB023FreeformFullViewWrapper33_8883DE8B9714AC22F8132449FD924822LLVAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type FreeformFullViewWrapper and conformance FreeformFullViewWrapper();
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<FreeformFullViewWrapper, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FreeformFullViewWrapper and conformance FreeformFullViewWrapper()
{
  result = lazy protocol witness table cache variable for type FreeformFullViewWrapper and conformance FreeformFullViewWrapper;
  if (!lazy protocol witness table cache variable for type FreeformFullViewWrapper and conformance FreeformFullViewWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FreeformFullViewWrapper and conformance FreeformFullViewWrapper);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FreeformFullViewWrapper and conformance FreeformFullViewWrapper;
  if (!lazy protocol witness table cache variable for type FreeformFullViewWrapper and conformance FreeformFullViewWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FreeformFullViewWrapper and conformance FreeformFullViewWrapper);
  }

  return result;
}

uint64_t specialized static MathHelpers.computeSampleMeanAndCovarianceMatrix(data:)@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2 < 2)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static MathHelpers.computeSampleMeanAndCovarianceMatrix(data:));
    v6 = 1.0 / v2;
    v7 = (v3 + 32);
    v8 = v7;
    v9 = v2;
    do
    {
      v10 = *v8++;
      v11 = vadd_f32(*&v5, vmul_n_f32(*v10.f32, v6));
      v12 = *(&v5 + 2) + vmuls_lane_f32(v6, v10, 2);
      *&v5 = v11;
      *(&v5 + 2) = v12;
      HIDWORD(v5) = 0;
      --v9;
    }

    while (v9);
    v32 = v5;
    v30 = v12;
    v31 = v11;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of static MathHelpers.computeSampleMeanAndCovarianceMatrix(data:));
    v29 = v13;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of static MathHelpers.computeSampleMeanAndCovarianceMatrix(data:));
    v28 = v14;
    result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #3 of static MathHelpers.computeSampleMeanAndCovarianceMatrix(data:));
    v18 = v28;
    v17 = v29;
    v19 = 1.0 / (v2 - 1);
    do
    {
      v20 = v17.i32[3];
      v21 = v18.i32[3];
      v22 = *v7++;
      v23 = vsub_f32(*&v22, v31);
      v24 = vmul_f32(v23, v23);
      *v16.f32 = vmul_n_f32(v23, *(&v22 + 2) - v30);
      *v25.f32 = vmul_lane_f32(v23, v23, 1);
      *v26.f32 = vzip1_s32(v24, *v25.f32);
      v26.i64[1] = v16.i64[0];
      v27 = v15.i32[3];
      *&v25.u32[2] = vdup_lane_s32(*v16.f32, 1);
      v16.f32[2] = (*(&v22 + 2) - v30) * (*(&v22 + 2) - v30);
      v17 = vaddq_f32(v17, vmulq_n_f32(v26, v19));
      v18 = vaddq_f32(v18, vmulq_n_f32(v25, v19));
      v15 = vaddq_f32(v15, vmulq_n_f32(v16, v19));
      v17.i32[3] = v20;
      v18.i32[3] = v21;
      v15.i32[3] = v27;
      --v2;
    }

    while (v2);
    *a2 = v32;
    a2[1] = v17;
    a2[2] = v18;
    a2[3] = v15;
  }

  return result;
}

void specialized static MathHelpers.computeEigenvectorsOfSymmetric2x2Matrix(_:)(double a1, double a2)
{
  v2 = *(&a1 + 1);
  if (vabds_f32(*(&a1 + 1), *&a2) >= 0.001)
  {
    __break(1u);
  }

  else
  {
    *&a2 = sqrtf(((*&a1 + *(&a2 + 1)) * (*&a1 + *(&a2 + 1))) + ((vmuls_lane_f32(*&a1, *&a2, 1) - (*(&a1 + 1) * *&a2)) * -4.0));
    *&v13 = (*&a1 + *(&a2 + 1)) + *&a2;
    *&v12 = (*&a1 + *(&a2 + 1)) - *&a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91BFD0;
    *(inited + 32) = 1065353216;
    v4 = vmul_f32(__PAIR64__(v12, v13), 0x3F0000003F000000);
    *(inited + 36) = vsub_f32(v4, *&a1).f32[0] / v2;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
    v6 = v5;
    swift_setDeallocating();
    v7 = vmul_f32(v6, v6);
    v7.i32[0] = vadd_f32(v7, vdup_lane_s32(v7, 1)).u32[0];
    v8 = vrsqrte_f32(v7.u32[0]);
    v9 = vmul_f32(v8, vrsqrts_f32(v7.u32[0], vmul_f32(v8, v8)));
    v15 = vmul_n_f32(v6, vmul_f32(v9, vrsqrts_f32(v7.u32[0], vmul_f32(v9, v9))).f32[0]);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_23B91BFD0;
    *(v10 + 32) = v15.i32[1];
    *(v10 + 36) = -v15.f32[0];
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(v10);
    swift_setDeallocating();
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_23B91BFD0;
    *(v11 + 32) = v4;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(v11);
    swift_setDeallocating();
  }
}

uint64_t specialized static MathHelpers.minAndMaxOver(points:)(float32x4_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6D0;
  *(inited + 32) = 0x7F0000007FLL;
  *(inited + 40) = -8388608;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
  v11 = v3;
  swift_setDeallocating();
  result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static MathHelpers.minAndMaxOver(points:));
  v6 = a1[1].i64[0];
  if (v6)
  {
    v7 = a1 + 2;
    v8 = v11;
    do
    {
      v9 = *v7++;
      v10 = v9;
      v10.i32[3] = 0;
      v8.i32[3] = 0;
      v8 = vmaxnmq_f32(v10, v8);
      v5.i32[3] = 0;
      v5 = vminnmq_f32(v10, v5);
      --v6;
    }

    while (v6);
  }

  return result;
}

void specialized static MathHelpers.angleBetween(_:_:)(float32x4_t a1, float32x4_t a2)
{
  v2 = vmulq_f32(a1, a1);
  v3 = vextq_s8(v2, v2, 4uLL).u64[0];
  v4 = vmulq_f32(a2, a2);
  v5 = vextq_s8(v4, v4, 4uLL).u64[0];
  v6 = vzip1_s32(*a2.f32, *a1.f32);
  v7 = vcgt_f32(vsqrt_f32(vadd_f32(vzip2_s32(v5, v3), vadd_f32(vmul_f32(v6, v6), vzip1_s32(v5, v3)))), vdup_n_s32(0x38D1B717u));
  if (v7.i32[1] & v7.i32[0])
  {
    v8 = vaddv_f32(*v2.i8);
    *v2.i8 = vrsqrte_f32(COERCE_UNSIGNED_INT(*&v2.i32[2] + v8));
    *v2.i8 = vmul_f32(*v2.i8, vrsqrts_f32(COERCE_UNSIGNED_INT(*&v2.i32[2] + v8), vmul_f32(*v2.i8, *v2.i8)));
    v9 = vmulq_n_f32(a1, vmul_f32(*v2.i8, vrsqrts_f32(COERCE_UNSIGNED_INT(*&v2.i32[2] + v8), vmul_f32(*v2.i8, *v2.i8))).f32[0]);
    *&v10 = *&v4.i32[2] + vaddv_f32(*v4.i8);
    v11 = vrsqrte_f32(v10);
    v12 = vmul_f32(v11, vrsqrts_f32(v10, vmul_f32(v11, v11)));
    v13 = vmulq_f32(v9, vmulq_n_f32(a2, vmul_f32(v12, vrsqrts_f32(v10, vmul_f32(v12, v12))).f32[0]));
    v14 = v13.f32[2] + vaddv_f32(*v13.f32);
    if (v14 <= -1.0)
    {
      v14 = -1.0;
    }

    if (v14 > 1.0)
    {
      v14 = 1.0;
    }

    acosf(v14);
  }

  else
  {
    lazy protocol witness table accessor for type MathHelpers.Error and conformance MathHelpers.Error();
    swift_allocError();
    *v15 = 0;
    v15[1] = 0;
    swift_willThrow();
  }
}

double specialized static MathHelpers.computeCameraLookAtRotation(pos:lookAt:up:)(float32x4_t a1, float32x4_t a2, float32x4_t a3)
{
  v4 = vsubq_f32(a2, a1);
  v5 = vmulq_f32(v4, v4);
  *&v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  *v5.f32 = vrsqrte_f32(v6);
  *v5.f32 = vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32)));
  v5.i32[0] = vmul_f32(*v5.f32, vrsqrts_f32(v6, vmul_f32(*v5.f32, *v5.f32))).u32[0];
  v7 = vmulq_n_f32(v4, v5.f32[0]);
  v19.columns[2].i64[0] = vnegq_f32(v7).u64[0];
  v19.columns[2].f32[2] = -v7.f32[2];
  v19.columns[2].i32[3] = 0;
  v5.i64[0] = v5.u32[0];
  v8 = vmulq_f32(a3, a3);
  *&v9 = v8.f32[2] + vaddv_f32(*v8.f32);
  *v8.f32 = vrsqrte_f32(v9);
  *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32)));
  v10 = vmulq_n_f32(a3, vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32))).f32[0]);
  v11 = vextq_s8(vuzp1q_s32(v19.columns[2], v19.columns[2]), v19.columns[2], 0xCuLL);
  v12 = vmlaq_f32(vmulq_f32(v11, vnegq_f32(v10)), v19.columns[2], vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL));
  v13 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
  v14 = vmulq_f32(v12, v12);
  *&v15 = v14.f32[1] + (v14.f32[2] + v14.f32[0]);
  *v14.f32 = vrsqrte_f32(v15);
  *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
  v19.columns[0] = vmulq_n_f32(v13, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]);
  v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19.columns[0], v19.columns[0]), v19.columns[0], 0xCuLL), vnegq_f32(v19.columns[2])), v19.columns[0], v11);
  v17 = vmulq_f32(v16, v16);
  v5.f32[0] = v17.f32[1] + (v17.f32[2] + v17.f32[0]);
  v19.columns[3] = vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL);
  *v11.f32 = vrsqrte_f32(*v5.f32);
  *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(*v5.f32, vmul_f32(*v11.f32, *v11.f32)));
  v19.columns[1] = vmulq_n_f32(v19.columns[3], vmul_f32(*v11.f32, vrsqrts_f32(*v5.f32, vmul_f32(*v11.f32, *v11.f32))).f32[0]);
  return simd_quaternion(v19);
}

unint64_t lazy protocol witness table accessor for type MathHelpers.Error and conformance MathHelpers.Error()
{
  result = lazy protocol witness table cache variable for type MathHelpers.Error and conformance MathHelpers.Error;
  if (!lazy protocol witness table cache variable for type MathHelpers.Error and conformance MathHelpers.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MathHelpers.Error and conformance MathHelpers.Error);
  }

  return result;
}

void specialized static MathHelpers.angleBetween(_:_:)(float32x2_t a1, float32x2_t a2)
{
  v2 = vmul_f32(a1, a1);
  v3 = vmul_f32(a2, a2);
  v4 = vcgt_f32(vsqrt_f32(vadd_f32(vzip1_s32(v3, v2), vzip2_s32(v3, v2))), vdup_n_s32(0x38D1B717u));
  if (v4.i32[1] & v4.i32[0])
  {
    v5 = vadd_f32(v2, vdup_lane_s32(v2, 1)).u32[0];
    v6 = vrsqrte_f32(v5);
    v7 = vmul_f32(v6, vrsqrts_f32(v5, vmul_f32(v6, v6)));
    v8 = vmul_n_f32(a1, vmul_f32(v7, vrsqrts_f32(v5, vmul_f32(v7, v7))).f32[0]);
    v9 = vadd_f32(v3, vdup_lane_s32(v3, 1)).u32[0];
    v10 = vrsqrte_f32(v9);
    v11 = vmul_f32(v10, vrsqrts_f32(v9, vmul_f32(v10, v10)));
    v12 = vaddv_f32(vmul_f32(v8, vmul_n_f32(a2, vmul_f32(v11, vrsqrts_f32(v9, vmul_f32(v11, v11))).f32[0])));
    if (v12 <= -1.0)
    {
      v12 = -1.0;
    }

    if (v12 > 1.0)
    {
      v12 = 1.0;
    }

    acosf(v12);
  }

  else
  {
    lazy protocol witness table accessor for type MathHelpers.Error and conformance MathHelpers.Error();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    swift_willThrow();
  }
}

float specialized static MathHelpers.computeClippingPlanes(boxWorld:worldToCamera:flipZ:)(char a1)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static MathHelpers.computeClippingPlanes(boxWorld:worldToCamera:flipZ:));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of static MathHelpers.computeClippingPlanes(boxWorld:worldToCamera:flipZ:));
  BoundingBox.init(min:max:)();
  if (a1)
  {
    v2 = &outlined read-only object #2 of static MathHelpers.computeClippingPlanes(boxWorld:worldToCamera:flipZ:);
  }

  else
  {
    v2 = &outlined read-only object #3 of static MathHelpers.computeClippingPlanes(boxWorld:worldToCamera:flipZ:);
  }

  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v2);
  BoundingBox.transformed(by:)();
  return v3;
}

uint64_t get_enum_tag_for_layout_string_19_RealityKit_SwiftUI11MathHelpersO5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for MathHelpers.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MathHelpers.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for MathHelpers.Error(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

Swift::Void __swiftcall ResourceTimedLogger.unrequestLogging()()
{
  v2 = *(v0 + 32);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_7;
  }

  *(v0 + 32) = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (v4)
    {
      return;
    }

    v5 = *(v0 + 24);
    if (!v5)
    {
      return;
    }

    goto LABEL_10;
  }

  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_16;
  }

LABEL_7:
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23B824000, v7, v8, "unrequestLogging() underflow!", v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  *(v1 + 32) = 0;
  v5 = *(v1 + 24);
  if (v5)
  {
LABEL_10:
    if ([v5 isValid])
    {

      ResourceTimedLogger.stopRunningTimer()();
    }
  }
}

void ResourceTimedLogger.stopRunningTimer()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v1 + 32);

    _os_log_impl(&dword_23B824000, v3, v4, "Use count=%ld went to 0... stopping the running resource logger.", v5, 0xCu);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  else
  {
  }

  v6 = *(v1 + 24);
  if (!v6)
  {
    goto LABEL_12;
  }

  if (![v6 isValid])
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  [*(v1 + 24) invalidate];
  v7 = *(v1 + 24);
  *(v1 + 24) = 0;
}

void ResourceTimedLogger.startNewTimer()()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2 && ([v2 isValid] & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, logger);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = *(v1 + 32);

      _os_log_impl(&dword_23B824000, v4, v5, "Use count=%ld moved above 0... starting the running resource logger.", v6, 0xCu);
      MEMORY[0x23EEB0B70](v6, -1, -1);
    }

    else
    {
    }

    v7 = objc_opt_self();
    v11[4] = closure #1 in ResourceTimedLogger.startNewTimer();
    v11[5] = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    v11[3] = &block_descriptor_8;
    v8 = _Block_copy(v11);
    v9 = [v7 scheduledTimerWithTimeInterval:1 repeats:v8 block:5.0];
    _Block_release(v8);
    v10 = *(v1 + 24);
    *(v1 + 24) = v9;
  }
}

void closure #1 in ResourceTimedLogger.startNewTimer()()
{
  act_list[1] = *MEMORY[0x277D85DE8];
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
    *v3 = 134349056;
    *(v3 + 4) = specialized static ResourceUsageHelper.memoryUsage(in:)(2);
    _os_log_impl(&dword_23B824000, v1, v2, "Memory usage: %{public}llu MB", v3, 0xCu);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    act_list[0] = 0;
    act_listCnt[0] = 0;
    v7 = task_threads(*MEMORY[0x277D85F48], act_list, act_listCnt);
    if (act_list[0])
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    v9 = act_listCnt[0];
    if (!v8)
    {
      v9 = -1;
    }

    *(v6 + 4) = v9;
    _os_log_impl(&dword_23B824000, v4, v5, "Thread count: %{public}ld", v6, 0xCu);
    MEMORY[0x23EEB0B70](v6, -1, -1);
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    act_list[0] = v13;
    *v12 = 136446210;
    v14 = [objc_opt_self() processInfo];
    v15 = [v14 thermalState];

    *act_listCnt = v15;
    type metadata accessor for NSProcessInfoThermalState(0);
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, act_list);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_23B824000, v10, v11, "Thermal state: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x23EEB0B70](v13, -1, -1);
    MEMORY[0x23EEB0B70](v12, -1, -1);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t ResourceTimedLogger.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t specialized static ResourceUsageHelper.memoryUsage(in:)(char a1)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  memset(v18, 0, sizeof(v18));
  v17 = 93;
  v4 = task_info(*MEMORY[0x277D85F48], 0x16u, v18, &v17);
  if (!v4)
  {
    result = v19 / qword_23B921688[a1];
LABEL_16:
    v16 = *MEMORY[0x277D85DE8];
    return result;
  }

  result = mach_error_string(v4);
  if (result)
  {
    static String.Encoding.ascii.getter();
    v6 = String.init(cString:encoding:)();
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0x206E776F6E6B6E55;
    }

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0xED0000726F727245;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v34[0] = v14;
      *v13 = 136446210;
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v34);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_23B824000, v11, v12, "Error with task_info(): %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x23EEB0B70](v14, -1, -1);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }

    else
    {
    }

    result = 0;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t MeshToTextureRenderer.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  v3 = *(v0 + 32);
  swift_unknownObjectRelease();

  v4 = *(v0 + 48);
  swift_unknownObjectRelease();
  v5 = *(v0 + 56);
  swift_unknownObjectRelease();
  v6 = *(v0 + 64);
  swift_unknownObjectRelease();
  v7 = *(v0 + 72);
  swift_unknownObjectRelease();
  v8 = *(v0 + 80);
  swift_unknownObjectRelease();
  v9 = *(v0 + 88);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t MeshToTextureRenderer.__deallocating_deinit()
{
  MeshToTextureRenderer.deinit();

  return swift_deallocClassInstance();
}

uint64_t Binding<A>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for HashableMetatype();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  HashableMetatype.init(_:)();
  v12 = (*(v6 + 16))(v9, v11, v5);
  MEMORY[0x28223BE20](v12);
  v14 = (&v16 - v13);
  *v14 = a2;
  v14[1] = a3;
  (*(v6 + 32))(&v16 - v13 + 16, v9, v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10RealityKit6EntityC0D10FoundationE10ObservableV10ComponentsVGMd, &_s7SwiftUI7BindingVy10RealityKit6EntityC0D10FoundationE10ObservableV10ComponentsVGMR);
  Binding.subscript.getter();

  return (*(v6 + 8))(v11, v5);
}

{
  v5 = *(a3 + 8);
  v6 = type metadata accessor for HashableMetatype();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  HashableMetatype.init(_:)();
  v13 = (*(v7 + 16))(v10, v12, v6);
  MEMORY[0x28223BE20](v13);
  v15 = (&v17 - v14);
  *v15 = a2;
  v15[1] = a3;
  (*(v7 + 32))(&v17 - v14 + 16, v10, v6);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy10RealityKit6EntityC0D10FoundationE10ObservableV10ComponentsVGMd, &_s7SwiftUI7BindingVy10RealityKit6EntityC0D10FoundationE10ObservableV10ComponentsVGMR);
  Binding.subscript.getter();

  return (*(v7 + 8))(v12, v6);
}

uint64_t key path index equality operator for <A><A1>(HashableMetatype<A1>)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + a3 - 16);
  v4 = *(a1 + a3 - 8);
  type metadata accessor for HashableMetatype();
  swift_getWitnessTable();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

{
  v3 = *(a1 + a3 - 16);
  v4 = *(*(a1 + a3 - 8) + 8);
  type metadata accessor for HashableMetatype();
  swift_getWitnessTable();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t key path index hash operator for <A><A1>(HashableMetatype<A1>)(uint64_t a1, uint64_t a2)
{
  v2 = a1 + a2;
  v3 = *(a1 + a2 - 16);
  v4 = *(v2 - 8);
  type metadata accessor for HashableMetatype();
  swift_getWitnessTable();
  return dispatch thunk of Hashable.hashValue.getter();
}

{
  v2 = a1 + a2;
  v3 = *(a1 + a2 - 16);
  v4 = *(*(v2 - 8) + 8);
  type metadata accessor for HashableMetatype();
  swift_getWitnessTable();
  return dispatch thunk of Hashable.hashValue.getter();
}

uint64_t key path setter for Entity.Observable.Components.subscript<A>(hashableMetatype:) : <A><A1>Entity.Observable.ComponentsA1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = type metadata accessor for HashableMetatype();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  (*(v16 + 16))(&v18 - v15, a3);
  (*(v9 + 16))(v12, a1, v8);
  return Entity.Observable.Components.subscript.setter();
}

uint64_t key path setter for Entity.Observable.Components.subscript<A>(hashableBuiltinType:) : <A><A1>Entity.Observable.ComponentsA1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = *(v7 + 8);
  v14 = type metadata accessor for HashableMetatype();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  (*(v17 + 16))(&v19 - v16, a3);
  (*(v9 + 16))(v12, a1, v8);
  return Entity.Observable.Components.subscript.setter();
}

uint64_t descriptionString(for:)(uint64_t a1)
{
  v2 = type metadata accessor for ObjectCaptureSession.State();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (MEMORY[0x277D00478] && v7 == *MEMORY[0x277D00478])
  {
    (*(v3 + 96))(v6, v2);
    v8 = type metadata accessor for ObjectCaptureSession.Error();
    v9 = *(v8 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
    v12 = (*(v9 + 32))(v16 - v11, v6, v8);
    v16[0] = 0x28726F727245;
    v16[1] = 0xE600000000000000;
    MEMORY[0x28223BE20](v12);
    (*(v9 + 16))(v16 - v11, v16 - v11, v8);
    v13 = String.init<A>(describing:)();
    MEMORY[0x23EEAF590](v13);

    MEMORY[0x23EEAF590](41, 0xE100000000000000);
    v14 = v16[0];
    (*(v9 + 8))(v16 - v11, v8);
    return v14;
  }

  else if (MEMORY[0x277D00468] && v7 == *MEMORY[0x277D00468])
  {
    return 0x696C616974696E49;
  }

  else if (MEMORY[0x277D00488] && v7 == *MEMORY[0x277D00488])
  {
    return 0x676E696E6E7552;
  }

  else if (MEMORY[0x277D00470] && v7 == *MEMORY[0x277D00470])
  {
    return 0x7964616552;
  }

  else if (MEMORY[0x277D00480] && v7 == *MEMORY[0x277D00480])
  {
    return 0x646573756150;
  }

  else if (MEMORY[0x277D004A0] && v7 == *MEMORY[0x277D004A0])
  {
    return 0x6E69746365746544;
  }

  else if (MEMORY[0x277D00490] && v7 == *MEMORY[0x277D00490])
  {
    return 0x676E696E6E616353;
  }

  else if (MEMORY[0x277D004A8] && v7 == *MEMORY[0x277D004A8])
  {
    return 0x6E696873696E6946;
  }

  else if (MEMORY[0x277D00498] && v7 == *MEMORY[0x277D00498])
  {
    return 0x6574656C706D6F43;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return 0xD000000000000023;
  }
}

id specialized static MetalHelpers.loadFeatherMaskLayer(named:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v4 = static BoundingBoxHelpers.bundle;
  v5 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v6 = v4;
  v7 = MEMORY[0x23EEAF480](a1, a2);
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6];

  if (v8)
  {
    v9 = [v8 CGImage];
    [v5 setContents_];

    [v5 setOpaque_];
    [v5 setContentsGravity_];
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t _RealityViewImpl.layoutOption.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2 + *(a1 + 72);
  v12 = *v11;
  if (*(v11 + 8) == 1)
  {
    *a2 = v12;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<RealityViewLayoutOption>.Content(v12, 0);
    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

void *_RealityViewImpl.uiScene.getter(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + *(a1 + 60);
  v9 = *v8;
  if (*(v8 + 8) == 1)
  {
    v10 = v9;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<UIScene?>.Content(v9, 0);
    (*(v4 + 8))(v7, v3);
    return v13[1];
  }

  return v9;
}

uint64_t RealityView.init<A>(make:update:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, char *a6@<X8>)
{
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17(v14);
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v18 = type metadata accessor for RealityViewCameraContent.Body();
  result = (*(v12 + 32))(&a6[*(v18 + 40)], v16, a5);
  v20 = &a6[*(v18 + 44)];
  *v20 = implicit closure #2 in implicit closure #1 in variable initialization expression of RealityViewCameraContent.Body._strongModel;
  *(v20 + 1) = 0;
  v20[16] = 0;
  return result;
}

uint64_t RealityView.init<>(make:update:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = implicit closure #2 in implicit closure #1 in variable initialization expression of RealityViewCameraContent.Body._strongModel;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  return result;
}

uint64_t RealityViewCameraContent.Body.strongModel.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = type metadata accessor for _RealityViewCameraModel(0);
  v7 = _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type _RealityViewCameraModel and conformance _RealityViewCameraModel, type metadata accessor for _RealityViewCameraModel);

  return MEMORY[0x282130840](v3, v4, v5, v6, v7);
}

uint64_t implicit closure #2 in implicit closure #1 in variable initialization expression of RealityViewCameraContent.Body._strongModel()
{
  v0 = type metadata accessor for _RealityViewCameraModel(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
  v5 = objc_allocWithZone(type metadata accessor for ARView());
  v6 = ARView.init(frame:forRealityView:)();
  RealityViewCameraContent.init(view:)(v6, (v3 + v4));
  *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_makeTaskBegun) = 0;
  v7 = v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  Published.init(initialValue:)();
  return v3;
}

uint64_t RealityViewCameraContent.Body.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v8 = *(a1 + 24);
  *(v7 + 16) = *(a1 + 16);
  *(v7 + 24) = v8;
  (*(v4 + 32))(v7 + v6, v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for _RealityViewImpl();
  v39[3] = swift_getWitnessTable();
  v9 = GeometryReader.init(content:)();
  v43 = v10;
  v64 = v9;
  v65 = v10;
  v11 = RealityViewCameraContent.Body.strongModel.getter(a1);
  v12 = *(v11 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize);
  v13 = *(v11 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize + 16);
  v42 = v13;

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  v41 = v14;
  v15 = RealityViewCameraContent.Body.strongModel.getter(a1);
  v16 = *(v15 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize);
  v17 = *(v15 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize + 16);
  v40 = v17;

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  v39[4] = v18;
  v19 = RealityViewCameraContent.Body.strongModel.getter(a1);
  v20 = *(v19 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize);
  v21 = *(v19 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize + 16);

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  v39[2] = v22;
  v23 = RealityViewCameraContent.Body.strongModel.getter(a1);
  v24 = *(v23 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize + 8);
  v25 = *(v23 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize + 16);

  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v39[1] = v26;
  v27 = RealityViewCameraContent.Body.strongModel.getter(a1);
  v28 = *(v27 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize + 8);
  v29 = *(v27 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize + 16);

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v28;
  }

  v39[0] = v30;
  v31 = RealityViewCameraContent.Body.strongModel.getter(a1);
  v32 = *(v31 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize + 8);
  v33 = *(v31 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize + 16);

  static Alignment.center.getter();
  type metadata accessor for GeometryReader();
  WitnessTable = swift_getWitnessTable();
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();

  v60 = v70;
  v61 = v71;
  v62 = v72;
  v63 = v73;
  v56 = v66;
  v57 = v67;
  v58 = v68;
  v59 = v69;
  v34 = type metadata accessor for ModifiedContent();
  v53 = WitnessTable;
  v54 = MEMORY[0x277CDFC60];
  v35 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v56, v34, v35);
  v55[4] = v60;
  v55[5] = v61;
  v55[6] = v62;
  v55[7] = v63;
  v55[0] = v56;
  v55[1] = v57;
  v55[2] = v58;
  v55[3] = v59;
  v36 = *(*(v34 - 8) + 8);
  v36(v55, v34);
  v49 = v78;
  v50 = v79;
  v51 = v80;
  v52 = v81;
  v45 = v74;
  v46 = v75;
  v47 = v76;
  v48 = v77;
  static ViewBuilder.buildExpression<A>(_:)(&v45, v34, v35);
  v60 = v49;
  v61 = v50;
  v62 = v51;
  v63 = v52;
  v56 = v45;
  v57 = v46;
  v58 = v47;
  v59 = v48;
  return v36(&v56, v34);
}

uint64_t closure #1 in RealityViewCameraContent.Body.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a1;
  v55 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA5ImageV12DynamicRangeVSgGMd, &_s7SwiftUI11EnvironmentVyAA5ImageV12DynamicRangeVSgGMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = (&v45 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVy17RealityFoundation14CameraControlsVGMd, &_s7SwiftUI11EnvironmentVy17RealityFoundation14CameraControlsVGMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v53 = (&v45 - v13);
  v14 = type metadata accessor for GeometryProxy();
  v46 = *(v14 - 8);
  v47 = v14;
  v15 = *(v46 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v58 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v56 = a4;
  v57 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a3;
  v22 = type metadata accessor for _RealityViewImpl();
  v52 = *(v22 - 8);
  v23 = *(v52 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v49 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v50 = &v45 - v26;
  v27 = a2[1];
  v48 = *a2;
  v29 = a2[2];
  v28 = a2[3];
  if (v29)
  {
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v28;
    v31 = partial apply for thunk for @escaping @callee_guaranteed (@inout RealityViewCameraContent) -> ();
  }

  else
  {
    v31 = closure #1 in BoundingBoxRotateManipulator.requestAsyncModelLoad();
    v30 = 0;
  }

  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v30;
  v33 = type metadata accessor for RealityViewCameraContent.Body();
  (*(v18 + 16))(v57, a2 + *(v33 + 40), v21);
  (*(v46 + 16))(v58, v51, v47);

  outlined copy of (@escaping @callee_guaranteed () -> ())?(v29);
  RealityViewCameraContent.Body.strongModel.getter(v33);
  v34 = v53;
  default argument 5 of _RealityViewImpl.init(make:update:placeholder:proxy:model:cameraControls:cameraControlsPublisher:uiScene:dynamicRange:backgroundStyle:layoutOption:)(&_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMR, v53);
  KeyPath = swift_getKeyPath();
  v36 = swift_getKeyPath();
  v37 = v54;
  default argument 5 of _RealityViewImpl.init(make:update:placeholder:proxy:model:cameraControls:cameraControlsPublisher:uiScene:dynamicRange:backgroundStyle:layoutOption:)(&_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMR, v54);
  v38 = swift_getKeyPath();
  v59 = swift_getKeyPath();
  v60 = 0;
  v44 = v38;
  v39 = v49;
  _RealityViewImpl.init(make:update:placeholder:proxy:model:cameraControls:cameraControlsPublisher:uiScene:dynamicRange:backgroundStyle:layoutOption:)(v48, v27, partial apply for thunk for @escaping @callee_guaranteed (@inout RealityViewCameraContent) -> (@out ()), v32, v57, v58, v34, v49, KeyPath, 0, v36, 0, v37, v44, 0, &v59, v21);
  WitnessTable = swift_getWitnessTable();
  v41 = v50;
  static ViewBuilder.buildExpression<A>(_:)(v39, v22, WitnessTable);
  v42 = *(v52 + 8);
  v42(v39, v22);
  static ViewBuilder.buildExpression<A>(_:)(v41, v22, WitnessTable);
  return (v42)(v41, v22);
}

uint64_t partial apply for closure #1 in RealityViewCameraContent.Body.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for RealityViewCameraContent.Body() - 8);
  v8 = (v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));

  return closure #1 in RealityViewCameraContent.Body.body.getter(a1, v8, v5, v6, a2);
}

uint64_t default argument 5 of _RealityViewImpl.init(make:update:placeholder:proxy:model:cameraControls:cameraControlsPublisher:uiScene:dynamicRange:backgroundStyle:layoutOption:)@<X0>(uint64_t *a1@<X3>, uint64_t *a2@<X4>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);

  return swift_storeEnumTagMultiPayload();
}

uint64_t _RealityViewImpl.init(make:update:placeholder:proxy:model:cameraControls:cameraControlsPublisher:uiScene:dynamicRange:backgroundStyle:layoutOption:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, char *a8@<X8>, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t *a16, uint64_t a17)
{
  v31 = *a16;
  v30 = *(a16 + 8);
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  v21 = type metadata accessor for _RealityViewImpl();
  (*(*(a17 - 8) + 32))(&a8[v21[10]], a5, a17);
  v22 = v21[11];
  v23 = type metadata accessor for GeometryProxy();
  (*(*(v23 - 8) + 32))(&a8[v22], a6, v23);
  v24 = v21[12];
  swift_weakInit();

  outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(a7, &a8[v21[13]], &_s7SwiftUI11EnvironmentVy17RealityFoundation14CameraControlsVGMd, &_s7SwiftUI11EnvironmentVy17RealityFoundation14CameraControlsVGMR);
  v25 = &a8[v21[14]];
  *v25 = a9;
  v25[8] = a10 & 1;
  v26 = &a8[v21[15]];
  *v26 = a11;
  v26[8] = a12 & 1;
  result = outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(a13, &a8[v21[16]], &_s7SwiftUI11EnvironmentVyAA5ImageV12DynamicRangeVSgGMd, &_s7SwiftUI11EnvironmentVyAA5ImageV12DynamicRangeVSgGMR);
  v28 = &a8[v21[17]];
  *v28 = a14;
  v28[8] = a15 & 1;
  v29 = &a8[v21[18]];
  *v29 = v31;
  v29[8] = v30;
  return result;
}

void RealityViewCameraContent.init(view:)(char *a1@<X0>, char *a2@<X8>)
{
  v99 = a1;
  v3 = type metadata accessor for ARView.Environment.Background();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v92 = v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ARView.Environment();
  v95 = *(v6 - 8);
  v96 = v6;
  v7 = *(v95 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v94 = v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v93 = v83 - v10;
  v11 = type metadata accessor for RealityViewRenderingEffects(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v88 = v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RealityViewCamera(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v90 = (v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = type metadata accessor for ARView.RenderOptions();
  v17 = *(v98 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v98);
  v21 = v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v97 = v83 - v22;
  v23 = type metadata accessor for AnchorEntity();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *(a2 + 1) = Entity.init()();
  v26 = type metadata accessor for RealityViewCameraContent(0);
  v27 = v26[6];
  v28 = type metadata accessor for GeometryProxy();
  (*(*(v28 - 8) + 56))(&a2[v27], 1, 1, v28);
  v29 = v26[7];
  swift_weakInit();
  v30 = v26[8];
  v31 = type metadata accessor for RealityViewCameraContent.ContentStorage(0);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  v34 = swift_allocObject();
  *(v34 + 16) = MEMORY[0x277D84F90];
  *(v34 + 24) = 0;
  v35 = OBJC_IVAR____TtCV19_RealityKit_SwiftUI24RealityViewCameraContent14ContentStorage_unavailableCapabilities;
  v36 = type metadata accessor for SpatialTrackingSession.UnavailableCapabilities();
  (*(*(v36 - 8) + 56))(v34 + v35, 1, 1, v36);
  *&a2[v30] = v34;
  *&a2[v26[9]] = 1;
  v37 = &a2[v26[10]];
  *v37 = 0;
  v38 = *(v14 + 20);

  static CameraControls.none.getter();
  v89 = v14;
  v39 = *(v14 + 24);
  v87 = v37;
  v37[v39] = 0;
  *&a2[v26[11]] = 0;
  v40 = v26[12];
  *&v40[a2] = 0;
  v41 = &a2[v26[13]];
  *v41 = 0;
  *(v41 + 1) = 0;
  *(v41 + 2) = 0;
  v42 = v11[7];
  v43 = *MEMORY[0x277CDB3B0];
  v44 = type metadata accessor for AntialiasingMode();
  v45 = *(v44 - 8);
  v46 = *(v45 + 104);
  v86 = v43;
  v84 = v46;
  v85 = v44;
  v83[1] = v45 + 104;
  (v46)(&v41[v42], v43);
  *&v41[v11[8]] = 0;
  v91 = v11;
  v47 = &v41[v11[9]];
  *v47 = 0u;
  *(v47 + 1) = 0u;
  v48 = v26[14];
  v49 = type metadata accessor for RealityViewCameraController(0);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  *&a2[v48] = RealityViewCameraController.init()();
  a2[v26[15]] = 0;
  v52 = v99;
  *a2 = v99;
  v53 = v52;
  static ARView.RenderOptions.disableFaceOcclusions.getter();
  v54 = ARView.renderOptions.modify();
  v55 = v97;
  specialized OptionSet<>.insert(_:)(v97, v21);
  v56 = *(v17 + 8);
  v57 = v21;
  v58 = v98;
  v56(v57, v98);
  v56(v55, v58);
  v54(v100, 0);
  if (!dispatch thunk of ARView.realityFusionSession.getter())
  {
    __break(1u);
    goto LABEL_7;
  }

  v59 = dispatch thunk of RealityFusionSession.serviceManager.getter();

  if (!v59)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v99 = v40;
  v60 = type metadata accessor for SpatialTrackingManager();
  v61 = type metadata accessor for ARSessionManager();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  v64 = v53;
  v65 = v59;
  v66 = ARSessionManager.init(arView:)();
  v100[3] = v61;
  v100[4] = _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARSessionManager and conformance ARSessionManager, MEMORY[0x277CDB588]);
  v100[0] = v66;
  v67 = *(v60 + 48);
  v68 = *(v60 + 52);
  swift_allocObject();
  SpatialTrackingManager.init(serviceManager:arkitRunnable:)();
  static SpatialTrackingManager.shared.setter();

  Entity.coreEntity.getter();

  REHideEntity();
  dispatch thunk of ARView.scene.getter();

  dispatch thunk of Scene.addAnchor(_:)();

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v69 = dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  if (MEMORY[0x23EEB0240](v69))
  {
    REPhysicsSimulationServiceSetAnchorShouldHaveSharedSimulationByDefault();
  }

  v71 = v89;
  v70 = v90;
  *v90 = 0;
  v72 = v70 + *(v71 + 20);
  static CameraControls.none.getter();
  *(v70 + *(v71 + 24)) = 0;
  outlined assign with copy of RealityViewCamera(v70, v87, type metadata accessor for RealityViewCamera);
  RealityViewCameraContent.camera.didset();
  outlined destroy of RealityViewCamera(v70, type metadata accessor for RealityViewCamera);
  v73 = v88;
  *(v88 + 1) = 0;
  *(v73 + 2) = 0;
  *v73 = 0;
  v74 = v91;
  v84(&v73[v91[7]], v86, v85);
  *&v73[v74[8]] = 0;
  v75 = &v73[v74[9]];
  *v75 = 0u;
  *(v75 + 1) = 0u;
  outlined assign with copy of RealityViewCamera(v73, v41, type metadata accessor for RealityViewRenderingEffects);
  RealityViewCameraContent.renderingEffects.didset();
  outlined destroy of RealityViewCamera(v73, type metadata accessor for RealityViewRenderingEffects);
  v76 = v99;
  v77 = *&v99[a2];

  *&v76[a2] = 0;
  v78 = v93;
  dispatch thunk of ARView.environment.getter();
  v79 = [objc_opt_self() clearColor];
  static ARView.Environment.Background.color(_:)();

  ARView.Environment.background.setter();
  v80 = ARView.Environment.lighting.modify();
  ARView.Environment.ImageBasedLight.resource.setter();
  v80(v100, 0);
  v81 = v95;
  v82 = v96;
  (*(v95 + 16))(v94, v78, v96);
  dispatch thunk of ARView.environment.setter();
  (*(v81 + 8))(v78, v82);
}

uint64_t _RealityViewCameraModel.makeTaskComplete.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t _RealityViewCameraModel.__deallocating_deinit()
{
  outlined destroy of RealityViewCamera(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content, type metadata accessor for RealityViewCameraContent);
  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel__makeTaskComplete;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance _RealityViewCameraModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for _RealityViewCameraModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t _RealityViewImpl.cameraControls.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v2 + *(a1 + 52), &v18 - v12, &_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for CameraControls();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t _RealityViewImpl.cameraControlsPublisher.getter(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(a1 + 56));
  v9 = *v8;
  v10 = *(v8 + 8);

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    protocol witness for System.init(scene:) in conformance _RealityViewCameraControllerSystem(v9, 0);
    (*(v4 + 8))(v7, v3);
    return v13[1];
  }

  return v9;
}

uint64_t _RealityViewImpl.dynamicRange.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v17 - v12);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v2 + *(a1 + 64), &v17 - v12, &_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v13, a2, &_s7SwiftUI5ImageV12DynamicRangeVSgMd, &_s7SwiftUI5ImageV12DynamicRangeVSgMR);
  }

  v15 = *v13;
  static os_log_type_t.fault.getter();
  v16 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v9, v5);
}

uint64_t _RealityViewImpl.backgroundStyle.getter(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(a1 + 68));
  v9 = *v8;
  v10 = *(v8 + 8);

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    protocol witness for System.init(scene:) in conformance _RealityViewCameraControllerSystem(v9, 0);
    (*(v4 + 8))(v7, v3);
    return v13[1];
  }

  return v9;
}

uint64_t _RealityViewImpl.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v70 = type metadata accessor for TaskPriority();
  v74 = *(v70 - 8);
  v4 = *(v74 + 64);
  v5 = MEMORY[0x28223BE20](v70);
  v73 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1;
  v7 = *(a1 - 8);
  a1 -= 8;
  v69 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v68 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMd, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMR);
  v67 = *(a1 + 24);
  type metadata accessor for _ConditionalContent();
  v9 = type metadata accessor for Group();
  v72 = *(v9 - 8);
  v10 = *(v72 + 64);
  MEMORY[0x28223BE20](v9);
  v82 = v61 - v11;
  v12 = lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SubscriptionView<CameraControlsPublisher, ModifiedContent<<<opaque return type of View.onContinuousHover<A>(coordinateSpace:perform:)>>.0, _PreferenceWritingModifier<RealityViewCameraConvertibleKey>>> and conformance SubscriptionView<A, B>, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMd, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMR);
  v13 = *(a1 + 32);
  v87 = v12;
  v88 = v13;
  v66 = v13;
  WitnessTable = swift_getWitnessTable();
  v86 = WitnessTable;
  v14 = swift_getWitnessTable();
  v77 = v9;
  v84 = v9;
  v85 = v14;
  v79 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = *(OpaqueTypeMetadata2 - 8);
  v16 = *(v76 + 64);
  v17 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v19 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v61 - v20;
  v75 = type metadata accessor for Optional();
  v80 = *(v75 - 8);
  v22 = *(v80 + 64);
  v23 = MEMORY[0x28223BE20](v75);
  v25 = v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v78 = v61 - v26;
  v27 = *(a1 + 56);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v30 = MEMORY[0x28223BE20](Strong);
    v64 = v25;
    v31 = v67;
    v32 = v66;
    v61[-4] = v67;
    v61[-3] = v32;
    v59 = v30;
    v60 = v2;
    v61[1] = v8;
    Group<A>.init(content:)();
    v63 = "unavailableCapabilities";
    v33 = v69;
    v34 = *(v69 + 16);
    v62 = v19;
    WitnessTable = v21;
    v35 = v68;
    v36 = v71;
    v34(v68, v2, v71);
    type metadata accessor for MainActor();

    v37 = static MainActor.shared.getter();
    v38 = (*(v33 + 80) + 56) & ~*(v33 + 80);
    v39 = swift_allocObject();
    v40 = MEMORY[0x277D85700];
    *(v39 + 2) = v37;
    *(v39 + 3) = v40;
    *(v39 + 4) = v31;
    *(v39 + 5) = v32;
    v25 = v64;
    *(v39 + 6) = v29;
    (*(v33 + 32))(&v39[v38], v35, v36);
    v41 = v73;
    v42 = v77;
    v43 = v79;
    _s7SwiftUI4ViewPAAE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntFfA0_();
    v44 = v62;
    v45 = v39;
    v46 = v82;
    _s7SwiftUI4ViewPAAE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntF(0, v41, 0xD00000000000002CLL, v63 | 0x8000000000000000, 300, &async function pointer to partial apply for closure #2 in _RealityViewImpl.body.getter, v45, v62, v42, v43);

    (*(v74 + 8))(v41, v70);
    (*(v72 + 8))(v46, v42);
    v84 = v42;
    v85 = v43;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v48 = WitnessTable;
    static ViewBuilder.buildExpression<A>(_:)(v44, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v49 = v76;
    v50 = *(v76 + 8);
    v50(v44, OpaqueTypeMetadata2);
    static ViewBuilder.buildExpression<A>(_:)(v48, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v50(v48, OpaqueTypeMetadata2);
    (*(v49 + 32))(v25, v44, OpaqueTypeMetadata2);
    v51 = 0;
    v52 = v43;
  }

  else
  {
    v51 = 1;
    v52 = v79;
    v49 = v76;
    v42 = v77;
  }

  (*(v49 + 56))(v25, v51, 1, OpaqueTypeMetadata2);
  v53 = v80;
  v54 = v78;
  v55 = v75;
  (*(v80 + 16))(v78, v25, v75);
  v56 = *(v53 + 8);
  v56(v25, v55);
  v84 = v42;
  v85 = v52;
  v83 = swift_getOpaqueTypeConformance2();
  v57 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v54, v55, v57);
  return (v56)(v54, v55);
}

uint64_t closure #1 in _RealityViewImpl.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v121 = a1;
  v122 = a2;
  v119 = a5;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v100 = &v90 - v12;
  v113 = type metadata accessor for LocalCoordinateSpace();
  v111 = *(v113 - 8);
  v13 = *(v111 + 64);
  MEMORY[0x28223BE20](v113);
  v107 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for _RealityViewImpl();
  v120 = *(v15 - 8);
  v99 = *(v120 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = &v90 - v16;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGMR);
  v18 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v101 = &v90 - v19;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGAA012_EnvironmentqtS0VyAA03AnyrT0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGAA012_EnvironmentqtS0VyAA03AnyrT0VGGMR);
  v20 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v104 = &v90 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0F5PhaseOctAA010CoordinateH8ProtocolRd__lFQOyAA15ModifiedContentVyAKyAC012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAL0C7AdaptorVy0oP06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Z5StyleVAA9RectangleVGGAA012_EnvironmentZ13StyleModifierVyAA13AnyShapeStyleVGG_AA05LocalkH0VQo_Md, &_s7SwiftUI4ViewPAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0F5PhaseOctAA010CoordinateH8ProtocolRd__lFQOyAA15ModifiedContentVyAKyAC012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAL0C7AdaptorVy0oP06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Z5StyleVAA9RectangleVGGAA012_EnvironmentZ13StyleModifierVyAA13AnyShapeStyleVGG_AA05LocalkH0VQo_MR);
  v108 = *(v22 - 8);
  v109 = v22;
  v23 = *(v108 + 64);
  MEMORY[0x28223BE20](v22);
  v106 = &v90 - v24;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0H5PhaseOctAA010CoordinateJ8ProtocolRd__lFQOyACyACyAE012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAL0E7AdaptorVy0oP06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Z5StyleVAA9RectangleVGGAA012_EnvironmentZ13StyleModifierVyAA13AnyShapeStyleVGG_AA05LocalmJ0VQo_AA26_PreferenceWritingModifierVyAL0oE20CameraConvertibleKeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0H5PhaseOctAA010CoordinateJ8ProtocolRd__lFQOyACyACyAE012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAL0E7AdaptorVy0oP06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Z5StyleVAA9RectangleVGGAA012_EnvironmentZ13StyleModifierVyAA13AnyShapeStyleVGG_AA05LocalmJ0VQo_AA26_PreferenceWritingModifierVyAL0oE20CameraConvertibleKeyVGGMR);
  v25 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v112 = &v90 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMd, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMR);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v110 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v114 = &v90 - v31;
  v32 = type metadata accessor for _ConditionalContent();
  v117 = *(v32 - 8);
  v118 = v32;
  v33 = *(v117 + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v90 - v34;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v123 == 1)
  {
    v98 = v27;
    v100 = v35;
    v36 = v17;
    v115 = a4;
    v116 = v17;
    v37 = a4;
    v91 = v15;
    v38 = v120;
    v39 = v120 + 16;
    v40 = *(v120 + 16);
    v40(v36, v122, v15);
    v41 = *(v38 + 80);
    v42 = v99;
    v43 = swift_allocObject();
    *(v43 + 2) = a3;
    *(v43 + 3) = v37;
    *(v43 + 4) = v121;
    v44 = *(v38 + 32);
    v45 = v116;
    v46 = v91;
    v44(&v43[(v41 + 40) & ~v41], v116, v91);
    v97 = v39;
    v96 = v40;
    v40(v45, v122, v46);
    v47 = (v41 + 32) & ~v41;
    v48 = (v42 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = v41;
    v49 = swift_allocObject();
    v99 = a3;
    v50 = v115;
    *(v49 + 16) = a3;
    *(v49 + 24) = v50;
    v93 = v47;
    v51 = v46;
    v92 = v44;
    v44((v49 + v47), v116, v46);
    v52 = v38 + 32;
    v94 = v48;
    v53 = v121;
    *(v49 + v48) = v121;
    v123 = partial apply for closure #1 in closure #1 in _RealityViewImpl.body.getter;
    v124 = v43;
    v125 = partial apply for closure #2 in closure #1 in _RealityViewImpl.body.getter;
    v126 = v49;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI11ViewAdaptorVy0aB06ARViewCGMd, &_s19_RealityKit_SwiftUI11ViewAdaptorVy0aB06ARViewCGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type ViewAdaptor<ARView> and conformance ViewAdaptor<A>, &_s19_RealityKit_SwiftUI11ViewAdaptorVy0aB06ARViewCGMd, &_s19_RealityKit_SwiftUI11ViewAdaptorVy0aB06ARViewCGMR);
    v54 = v101;
    View.rootEntityGestureResponder()();

    *(v54 + *(v102 + 36)) = 256;
    v55 = v122;
    v56 = _RealityViewImpl.backgroundStyle.getter(v51);
    v57 = v53;
    v58 = v116;
    v120 = v52;
    if (!v56)
    {
      v123 = static Color.clear.getter();
      v56 = AnyShapeStyle.init<A>(_:)();
    }

    v59 = v56;
    v60 = v104;
    outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v54, v104, &_s7SwiftUI15ModifiedContentVyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGMR);
    *(v60 + *(v103 + 36)) = v59;

    v61 = v107;
    static CoordinateSpaceProtocol<>.local.getter();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.rootEntityGestureResponderBackDeployable()>>.0, _InsettableBackgroundShapeModifier<BackgroundStyle, Rectangle>>, _EnvironmentBackgroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>();
    v62 = v106;
    v63 = v113;
    View.onContinuousHover<A>(coordinateSpace:perform:)();

    (*(v111 + 8))(v61, v63);
    outlined destroy of PerspectiveCameraComponent?(v60, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGAA012_EnvironmentqtS0VyAA03AnyrT0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGAA012_EnvironmentqtS0VyAA03AnyrT0VGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI0D21ViewCameraConvertibleVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI0D21ViewCameraConvertibleVGMR);
    v64 = (type metadata accessor for RealityViewCameraConvertible(0) - 8);
    v65 = *(*v64 + 72);
    v66 = (*(*v64 + 80) + 32) & ~*(*v64 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_23B91A6F0;
    v68 = (v67 + v66);
    v69 = OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
    swift_beginAccess();
    v70 = *(v57 + v69);
    v71 = *(v51 + 44);
    v72 = v64[7];
    v73 = type metadata accessor for GeometryProxy();
    (*(*(v73 - 8) + 16))(&v68[v72], v55 + v71, v73);
    *v68 = v70;
    v74 = v112;
    (*(v108 + 32))(v112, v62, v109);
    *(v74 + *(v105 + 36)) = v67;
    v75 = v70;
    v76 = _RealityViewImpl.cameraControlsPublisher.getter(v51);
    v96(v58, v55, v51);
    v77 = v94;
    v78 = swift_allocObject();
    v79 = v115;
    *(v78 + 16) = v99;
    *(v78 + 24) = v79;
    v92(v78 + v93, v58, v51);
    *(v78 + v77) = v57;
    v80 = v110;
    outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v74, v110, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0H5PhaseOctAA010CoordinateJ8ProtocolRd__lFQOyACyACyAE012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAL0E7AdaptorVy0oP06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Z5StyleVAA9RectangleVGGAA012_EnvironmentZ13StyleModifierVyAA13AnyShapeStyleVGG_AA05LocalmJ0VQo_AA26_PreferenceWritingModifierVyAL0oE20CameraConvertibleKeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0H5PhaseOctAA010CoordinateJ8ProtocolRd__lFQOyACyACyAE012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAL0E7AdaptorVy0oP06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Z5StyleVAA9RectangleVGGAA012_EnvironmentZ13StyleModifierVyAA13AnyShapeStyleVGG_AA05LocalmJ0VQo_AA26_PreferenceWritingModifierVyAL0oE20CameraConvertibleKeyVGGMR);
    v81 = v98;
    *(v80 + *(v98 + 52)) = v76;
    v82 = (v80 + *(v81 + 56));
    *v82 = partial apply for closure #4 in closure #1 in _RealityViewImpl.body.getter;
    v82[1] = v78;
    v83 = v114;
    outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v80, v114, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMd, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SubscriptionView<CameraControlsPublisher, ModifiedContent<<<opaque return type of View.onContinuousHover<A>(coordinateSpace:perform:)>>.0, _PreferenceWritingModifier<RealityViewCameraConvertibleKey>>> and conformance SubscriptionView<A, B>, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMd, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMR);

    v35 = v100;
    static ViewBuilder.buildEither<A, B>(first:)(v83, v81);
    outlined destroy of PerspectiveCameraComponent?(v83, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMd, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMR);
  }

  else
  {
    v84 = v122 + *(v15 + 40);
    v85 = v100;
    static ViewBuilder.buildExpression<A>(_:)(v84, a3, a4);
    static ViewBuilder.buildExpression<A>(_:)(v85, a3, a4);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SubscriptionView<CameraControlsPublisher, ModifiedContent<<<opaque return type of View.onContinuousHover<A>(coordinateSpace:perform:)>>.0, _PreferenceWritingModifier<RealityViewCameraConvertibleKey>>> and conformance SubscriptionView<A, B>, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMd, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMR);
    static ViewBuilder.buildEither<A, B>(second:)(v11, v27, a3);
    v86 = *(v7 + 8);
    v86(v11, a3);
    v86(v85, a3);
    v79 = a4;
  }

  v127 = lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SubscriptionView<CameraControlsPublisher, ModifiedContent<<<opaque return type of View.onContinuousHover<A>(coordinateSpace:perform:)>>.0, _PreferenceWritingModifier<RealityViewCameraConvertibleKey>>> and conformance SubscriptionView<A, B>, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMd, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMR);
  v128 = v79;
  v87 = v118;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v35, v87, WitnessTable);
  return (*(v117 + 8))(v35, v87);
}

Swift::Void __swiftcall RealityViewCameraContent.makeSettings()()
{
  v1 = v0;
  v2 = type metadata accessor for RealityViewCameraComponent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Entity.ComponentSet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  dispatch thunk of Entity.components.getter();
  v12 = type metadata accessor for RealityViewCameraContent(0);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + *(v12 + 24), v5, &_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type RealityViewCameraComponent and conformance RealityViewCameraComponent, type metadata accessor for RealityViewCameraComponent);
  Entity.ComponentSet.set<A>(_:)();
  outlined destroy of RealityViewCamera(v5, type metadata accessor for RealityViewCameraComponent);
  (*(v7 + 8))(v10, v6);
  v13 = *v1;
  v14 = [v13 gestureRecognizers];
  if (v14)
  {
    v15 = v14;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIGestureRecognizer, 0x277D75548);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v13 setGestureRecognizers_];
  }

  else
  {
    [v13 setGestureRecognizers_];
  }
}

uint64_t closure #2 in closure #1 in _RealityViewImpl.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v58 = a2;
  v59 = a6;
  v63 = type metadata accessor for RealityViewCameraContent(0);
  v8 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CameraControls();
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v11);
  v60 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ARView.EDRHeadroomPolicy();
  v56 = *(v14 - 8);
  v57 = v14;
  v15 = *(v56 + 64);
  MEMORY[0x28223BE20](v14);
  v55 = (&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV12DynamicRangeVSgMd, &_s7SwiftUI5ImageV12DynamicRangeVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v52 - v19;
  v21 = type metadata accessor for Image.DynamicRange();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v52 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v52 - v30;
  v32 = type metadata accessor for _RealityViewImpl();
  v59 = a3;
  _RealityViewImpl.dynamicRange.getter(v32, v20);
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    v52 = v32;
    v54 = v10;
    (*(v22 + 32))(v31, v20, v21);
    v33 = OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
    swift_beginAccess();
    v53 = a4;
    v34 = *(a4 + v33);
    (*(v22 + 16))(v29, v31, v21);
    v35 = v34;
    static Image.DynamicRange.high.getter();
    _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type Image.DynamicRange and conformance Image.DynamicRange, MEMORY[0x277CE0FC8]);
    LOBYTE(v34) = dispatch thunk of static Equatable.== infix(_:_:)();
    v36 = *(v22 + 8);
    v36(v26, v21);
    if (v34)
    {
      v36(v29, v21);
      dispatch thunk of ARView.extendedDynamicRangeOutput.setter();
      v37 = *MEMORY[0x277CDB668];
      v39 = v55;
      v38 = v56;
    }

    else
    {
      static Image.DynamicRange.constrainedHigh.getter();
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36(v26, v21);
      v36(v29, v21);
      if ((v40 & 1) == 0)
      {
        dispatch thunk of ARView.extendedDynamicRangeOutput.setter();
        goto LABEL_9;
      }

      dispatch thunk of ARView.extendedDynamicRangeOutput.setter();
      v39 = v55;
      v38 = v56;
      *v55 = 0x40000000;
      v37 = *MEMORY[0x277CDB660];
    }

    (*(v38 + 104))(v39, v37, v57);
    dispatch thunk of ARView.edrHeadroomPolicy.setter();
LABEL_9:

    v36(v31, v21);
    a4 = v53;
    v10 = v54;
    v32 = v52;
    goto LABEL_10;
  }

  outlined destroy of PerspectiveCameraComponent?(v20, &_s7SwiftUI5ImageV12DynamicRangeVSgMd, &_s7SwiftUI5ImageV12DynamicRangeVSgMR);
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI26UIViewRepresentableContextVy012_RealityKit_aB011ViewAdaptorV14RepresentationVy0fG06ARViewC_GGMd, &_s7SwiftUI26UIViewRepresentableContextVy012_RealityKit_aB011ViewAdaptorV14RepresentationVy0fG06ARViewC_GGMR);
  v41 = UIViewRepresentableContext.transaction.getter();
  v42 = a4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
  swift_beginAccess();
  v43 = v63;
  v44 = *(v63 + 36);
  v45 = *(v42 + v44);
  *(v42 + v44) = v41;
  outlined consume of PlatterRenderer??(v45);
  v46 = *(v59 + 24);
  (*(v59 + 16))(v42);
  v47 = *(v42 + v44);
  *(v42 + v44) = 1;
  swift_endAccess();
  outlined consume of PlatterRenderer??(v47);
  v48 = v60;
  _RealityViewImpl.cameraControls.getter(v32, v60);
  swift_beginAccess();
  v49 = *(v43 + 40);
  v50 = type metadata accessor for RealityViewCamera(0);
  (*(v61 + 40))(v42 + v49 + *(v50 + 20), v48, v62);
  RealityViewCameraContent.camera.didset();
  swift_endAccess();
  outlined init with copy of RealityViewCamera(v42, v10, type metadata accessor for RealityViewCameraContent);
  RealityViewCameraContent.updateSettings()();
  return outlined destroy of RealityViewCamera(v10, type metadata accessor for RealityViewCameraContent);
}

uint64_t *(*RealityViewCameraContent.camera.modify(void *a1))(uint64_t *result, char a2)
{
  *a1 = v1;
  v2 = *(type metadata accessor for RealityViewCameraContent(0) + 40);
  return RealityViewCameraContent.camera.modify;
}

uint64_t *RealityViewCameraContent.camera.modify(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    return RealityViewCameraContent.camera.didset();
  }

  return result;
}

Swift::Void __swiftcall RealityViewCameraContent.updateSettings()()
{
  v1 = v0;
  v2 = type metadata accessor for CameraControls();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RealityViewCameraComponent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Entity.ComponentSet();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ARView.DebugOptions();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = *v0;
  RealityViewCameraContent.updateDebugOptions()(&v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = v18;
  dispatch thunk of ARView.debugOptions.setter();
  v19 = v1[1];
  dispatch thunk of Entity.components.getter();
  v20 = type metadata accessor for RealityViewCameraContent(0);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v20[6], v9, &_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type RealityViewCameraComponent and conformance RealityViewCameraComponent, type metadata accessor for RealityViewCameraComponent);
  Entity.ComponentSet.set<A>(_:)();
  outlined destroy of RealityViewCamera(v9, type metadata accessor for RealityViewCameraComponent);
  (*(v11 + 8))(v14, v10);
  v21 = (v1 + v20[10]);
  v22 = type metadata accessor for RealityViewCamera(0);
  if ((*(v21 + *(v22 + 24)) & 1) == 0)
  {
    v23 = *(v22 + 20);
    static CameraControls.none.getter();
    _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type CameraControls and conformance CameraControls, MEMORY[0x277CDB288]);
    LOBYTE(v23) = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v29 + 8))(v5, v2);
    if ((v23 & 1) == 0 && *v21)
    {
      v24 = *(v1 + v20[14]);
      v25 = *v21;

      v26 = v24;
LABEL_8:
      Entity.update(from:overrideDistance:)(v26, 0);

      return;
    }

    if (*(v1 + v20[15]) == 1)
    {
      dispatch thunk of ARView.scene.getter();
      active = dispatch thunk of Scene.internalActiveCamera.getter();

      if (active)
      {
        v26 = *(v1 + v20[14]);
        goto LABEL_8;
      }
    }
  }
}

uint64_t closure #3 in closure #1 in _RealityViewImpl.body.getter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for RealityViewCameraContent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
  swift_beginAccess();
  outlined init with copy of RealityViewCamera(a4 + v12, v11, type metadata accessor for RealityViewCameraContent);
  RealityViewCameraContent.hoverEffect(_:)(a1, a2, a3 & 1);
  return outlined destroy of RealityViewCamera(v11, type metadata accessor for RealityViewCameraContent);
}

uint64_t RealityViewCameraContent.hoverEffect(_:)(uint64_t a1, uint64_t a2, char a3)
{
  v32 = a2;
  v31 = a1;
  v39 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for CollisionCastHit();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v28 = &v28 - v9;
  v10 = type metadata accessor for CollisionGroup();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Type = type metadata accessor for CollisionCastQueryType();
  v16 = *(Type - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](Type);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v20 = dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  MEMORY[0x23EEB0250](v20);
  result = RERemoteEffectsServiceInvalidateHitTestData();
  if ((a3 & 1) == 0)
  {
    v22 = *v33;
    (*(v16 + 104))(v19, *MEMORY[0x277CDAE48], Type);
    static CollisionGroup.all.getter();
    v23 = ARView.hitTest(_:requireInputTarget:query:mask:)();
    (*(v11 + 8))(v14, v10);
    (*(v16 + 8))(v19, Type);
    if (*(v23 + 16))
    {
      v25 = v29;
      v24 = v30;
      (*(v29 + 16))(v8, v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v30);

      v26 = v28;
      (*(v25 + 32))(v28, v8, v24);
      RERemoteEffectsServiceHoverEffectSettingsCreate();
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      RERemoteEffectsServiceHitTestDataSetSource();
      CollisionCastHit.position.getter();
      RERemoteEffectsServiceHitTestDataSetLocation();
      CollisionCastHit.entity.getter();
      Entity.coreEntity.getter();

      RERemoteEffectsServiceHitTestDataSetTargetEntity();
      RERemoteEffectsServiceAddHitTestData();
      RERelease();
      result = (*(v25 + 8))(v26, v24);
    }

    else
    {
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #4 in closure #1 in _RealityViewImpl.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CameraControls();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = type metadata accessor for _RealityViewImpl();
  _RealityViewImpl.cameraControls.getter(v14, v13);
  static CameraControls.none.getter();
  _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type CameraControls and conformance CameraControls, MEMORY[0x277CDB288]);
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v7 + 8);
  v16(v11, v6);
  result = (v16)(v13, v6);
  if ((v15 & 1) == 0)
  {
    v18 = a3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
    swift_beginAccess();
    v19 = type metadata accessor for RealityViewCameraContent(0);
    v20 = v18 + *(v19 + 40);
    result = type metadata accessor for RealityViewCamera(0);
    if ((*(v20 + *(result + 24)) & 1) == 0)
    {
      v21 = *(v18 + *(v19 + 56));
      v22 = *(v14 + 44);

      RealityViewCameraController.updateGesture(_:geometry:)(a1, a2 + v22);
    }
  }

  return result;
}

uint64_t closure #2 in _RealityViewImpl.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v7 = *(*(type metadata accessor for RealityViewCameraContent(0) - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[13] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[14] = v9;
  v6[15] = v8;

  return MEMORY[0x2822009F8](closure #2 in _RealityViewImpl.body.getter, v9, v8);
}

uint64_t closure #2 in _RealityViewImpl.body.getter()
{
  v1 = v0[8];
  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_makeTaskBegun) == 1)
  {
    v2 = v0[13];

    v3 = v0[12];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[12];
    v7 = v0[9];
    *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_makeTaskBegun) = 1;
    type metadata accessor for ImplicitAnimationSystem();
    _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ImplicitAnimationSystem and conformance ImplicitAnimationSystem, type metadata accessor for ImplicitAnimationSystem);
    static System.registerSystem()();
    v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
    v0[16] = OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
    swift_beginAccess();
    outlined init with copy of RealityViewCamera(v1 + v8, v6, type metadata accessor for RealityViewCameraContent);
    v9 = v7[1];
    v13 = (*v7 + **v7);
    v10 = (*v7)[1];
    v11 = swift_task_alloc();
    v0[17] = v11;
    *v11 = v0;
    v11[1] = closure #2 in _RealityViewImpl.body.getter;
    v12 = v0[12];

    return v13(v12);
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v6 = *v0;

  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return MEMORY[0x2822009F8](closure #2 in _RealityViewImpl.body.getter, v4, v3);
}

{
  v1 = *(v0 + 128);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);

  type metadata accessor for _RealityViewImpl();
  _RealityViewImpl.setIdealSize()();
  swift_beginAccess();
  outlined assign with copy of RealityViewCamera(v3, v7 + v1, type metadata accessor for RealityViewCameraContent);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 144) = 1;

  static Published.subscript.setter();
  outlined destroy of RealityViewCamera(v3, type metadata accessor for RealityViewCameraContent);
  v8 = *(v0 + 96);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t closure #1 in RealityViewCameraContent.ContentStorage.deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](closure #1 in RealityViewCameraContent.ContentStorage.deinit, v6, v5);
}

uint64_t closure #1 in RealityViewCameraContent.ContentStorage.deinit()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = *(MEMORY[0x277CDB4E8] + 4);
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = closure #1 in RealityViewCameraContent.ContentStorage.deinit;

    return MEMORY[0x28212A650]();
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](closure #1 in RealityViewCameraContent.ContentStorage.deinit, v4, v3);
}

{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t RealityViewCameraContent.ContentStorage.__deallocating_deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v8 = v0[3];
  swift_weakInit();
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in RealityViewCameraContent.ContentStorage.deinit, v10);

  v12 = v1[2];

  v13 = v1[3];

  outlined destroy of PerspectiveCameraComponent?(v1 + OBJC_IVAR____TtCV19_RealityKit_SwiftUI24RealityViewCameraContent14ContentStorage_unavailableCapabilities, &_s17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSgMR);
  v14 = *(*v1 + 48);
  v15 = *(*v1 + 52);
  return swift_deallocClassInstance();
}

uint64_t key path setter for RealityViewCameraContent.entities : RealityViewCameraContent(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for Entity();
  v4 = *(a2 + 8);
  result = static Entity.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t RealityViewCameraContent.entities.setter(uint64_t *a1)
{
  v2 = *a1;
  type metadata accessor for Entity();
  v3 = *(v1 + 8);
  v4 = static Entity.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*RealityViewCameraContent.entities.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 8);
  *a1 = v3;
  a1[1] = v3;

  return RealityViewCameraContent.entities.modify;
}

uint64_t RealityViewCameraContent.entities.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for Entity();
  v5 = a1[1];
  if ((a2 & 1) == 0)
  {
    v9 = a1[1];
    v10 = static Entity.== infix(_:_:)();

    if (v10)
    {
      return result;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  v6 = static Entity.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *a1;
}

uint64_t static RealityViewCamera.virtual.getter@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for RealityViewCamera(0);
  v3 = a1 + *(v2 + 20);
  result = static CameraControls.none.getter();
  *(a1 + *(v2 + 24)) = 0;
  return result;
}

uint64_t key path setter for RealityViewCameraContent.camera : RealityViewCameraContent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RealityViewCamera(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RealityViewCamera(a1, v7, type metadata accessor for RealityViewCamera);
  v8 = type metadata accessor for RealityViewCameraContent(0);
  outlined assign with copy of RealityViewCamera(v7, a2 + *(v8 + 40), type metadata accessor for RealityViewCamera);
  RealityViewCameraContent.camera.didset();
  return outlined destroy of RealityViewCamera(v7, type metadata accessor for RealityViewCamera);
}

uint64_t RealityViewCameraContent.camera.setter(uint64_t a1)
{
  v3 = type metadata accessor for RealityViewCameraContent(0);
  outlined assign with copy of RealityViewCamera(a1, v1 + *(v3 + 40), type metadata accessor for RealityViewCamera);
  RealityViewCameraContent.camera.didset();
  return outlined destroy of RealityViewCamera(a1, type metadata accessor for RealityViewCamera);
}

uint64_t RealityViewCameraContent.camera.didset()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v58 = &v57 - v4;
  v5 = type metadata accessor for ARView.Environment.Background();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ARView.Environment();
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = *(v66 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v65 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v64 = &v57 - v13;
  MEMORY[0x28223BE20](v12);
  v57 = &v57 - v14;
  v15 = type metadata accessor for ARView.CameraMode();
  v60 = *(v15 - 8);
  v61 = v15;
  v16 = *(v60 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14CameraControlsV15InteractionModeOSgMd, &_s17RealityFoundation14CameraControlsV15InteractionModeOSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v57 - v21;
  v23 = type metadata accessor for CameraControls.InteractionMode();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *v0;
  dispatch thunk of ARView.scene.getter();
  active = dispatch thunk of Scene.internalActiveCamera.getter();

  v29 = type metadata accessor for RealityViewCameraContent(0);
  v30 = (v0 + *(v29 + 40));
  v31 = *v30;

  *v30 = active;
  v32 = type metadata accessor for RealityViewCamera(0);
  v33 = v30 + *(v32 + 20);
  CameraControls.interactionMode.getter();
  v34 = (*(v24 + 48))(v22, 1, v23);
  v59 = v1;
  v68 = v29;
  if (v34 == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v22, &_s17RealityFoundation14CameraControlsV15InteractionModeOSgMd, &_s17RealityFoundation14CameraControlsV15InteractionModeOSgMR);
  }

  else
  {
    (*(v24 + 32))(v27, v22, v23);
    v35 = *(v1 + *(v29 + 56));
    v36 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_interactionMode;
    swift_beginAccess();
    (*(v24 + 24))(v35 + v36, v27, v23);
    swift_endAccess();
    (*(v24 + 8))(v27, v23);
  }

  v37 = *(v60 + 104);
  v38 = v67;
  v39 = v65;
  if (*(v30 + *(v32 + 24)) == 1)
  {
    v37(v18, *MEMORY[0x277CDB590], v61);
    ARView.cameraMode.setter();
    v39 = v57;
    dispatch thunk of ARView.environment.getter();
    static ARView.Environment.Background.cameraFeed(exposureCompensation:)();
    ARView.Environment.background.setter();
    v40 = ARView.Environment.lighting.modify();
    ARView.Environment.ImageBasedLight.resource.setter();
    v40(v69, 0);
    v41 = v66;
    (*(v66 + 16))(v64, v39, v38);
    dispatch thunk of ARView.environment.setter();
    type metadata accessor for SpatialTrackingManager();
    if (static SpatialTrackingManager.shared.getter())
    {
      v42 = &async function pointer to partial apply for closure #1 in RealityViewCameraContent.camera.didset;
      v43 = v59;
LABEL_12:
      v49 = type metadata accessor for TaskPriority();
      v50 = v58;
      (*(*(v49 - 8) + 56))(v58, 1, 1, v49);
      v51 = swift_allocObject();
      v52 = *(v43 + *(v68 + 32));
      swift_weakInit();
      type metadata accessor for MainActor();

      v53 = static MainActor.shared.getter();
      v54 = swift_allocObject();
      v55 = MEMORY[0x277D85700];
      v54[2] = v53;
      v54[3] = v55;
      v54[4] = v51;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v50, v42, v54);
    }
  }

  else
  {
    v37(v18, *MEMORY[0x277CDB598], v61);
    ARView.cameraMode.setter();
    dispatch thunk of ARView.environment.getter();
    v44 = *(v68 + 48);
    v43 = v59;
    if (*(v59 + v44))
    {
      v45 = *(v59 + v44);

      static ARView.Environment.Background.skybox(_:)();
      ARView.Environment.background.setter();

      v46 = ARView.Environment.lighting.modify();
      ARView.Environment.ImageBasedLight.resource.setter();
      v46(v69, 0);
    }

    else
    {
      v47 = [objc_opt_self() clearColor];
      static ARView.Environment.Background.color(_:)();

      ARView.Environment.background.setter();
      v48 = ARView.Environment.lighting.modify();
      ARView.Environment.ImageBasedLight.resource.setter();
      v48(v69, 0);
    }

    v41 = v66;
    (*(v66 + 16))(v64, v39, v38);
    dispatch thunk of ARView.environment.setter();
    type metadata accessor for SpatialTrackingManager();
    if (static SpatialTrackingManager.shared.getter())
    {
      v42 = &async function pointer to partial apply for closure #2 in RealityViewCameraContent.camera.didset;
      goto LABEL_12;
    }
  }

  return (*(v41 + 8))(v39, v38);
}

uint64_t closure #1 in RealityViewCameraContent.camera.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSgMR) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for SpatialTrackingSession.Configuration.Camera();
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v8 = *(v7 + 64) + 15;
  v4[12] = swift_task_alloc();
  v9 = type metadata accessor for SpatialTrackingSession.Configuration();
  v4[13] = v9;
  v10 = *(v9 - 8);
  v4[14] = v10;
  v11 = *(v10 + 64) + 15;
  v4[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[16] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[17] = v13;
  v4[18] = v12;

  return MEMORY[0x2822009F8](closure #1 in RealityViewCameraContent.camera.didset, v13, v12);
}

uint64_t closure #1 in RealityViewCameraContent.camera.didset()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v5 = v0[11];
    v4 = v0[12];
    v39 = v0[10];
    v40 = v0[15];
    v6 = type metadata accessor for SpatialTrackingSession();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = SpatialTrackingSession.init()();
    v10 = *(v3 + 24);
    *(v3 + 24) = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMR);
    v11 = *(type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability() - 8);
    v12 = *(v11 + 72);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_23B91AE90;
    static SpatialTrackingSession.Configuration.AnchorCapability.camera.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.world.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.plane.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.object.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.image.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.face.getter();
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityV_Tt0g5Tf4g_n(v14);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    v15 = *(type metadata accessor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability() - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_23B91A6E0;
    static SpatialTrackingSession.Configuration.AnchorCapability.plane.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.world.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.image.getter();
    static SpatialTrackingSession.Configuration.AnchorCapability.object.getter();
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityV_Tt0g5Tf4g_n(v18);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v5 + 104))(v4, *MEMORY[0x277CDB4D8], v39);
    SpatialTrackingSession.Configuration.init(tracking:sceneUnderstanding:camera:)();
    v19 = *(v3 + 24);
    v0[20] = v19;
    if (v19)
    {
      v20 = *(MEMORY[0x277CDB4F0] + 4);

      v21 = swift_task_alloc();
      v0[21] = v21;
      *v21 = v0;
      v21[1] = closure #1 in RealityViewCameraContent.camera.didset;
      v22 = v0[15];
      v23 = v0[9];

      return MEMORY[0x28212A658](v23, v22);
    }

    v26 = v0[15];
    v25 = v0[16];
    v27 = v0[13];
    v28 = v0[14];
    v29 = v0[9];

    (*(v28 + 8))(v26, v27);
    v30 = type metadata accessor for SpatialTrackingSession.UnavailableCapabilities();
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
    v31 = v0[19];
    v32 = v0[9];
    v33 = OBJC_IVAR____TtCV19_RealityKit_SwiftUI24RealityViewCameraContent14ContentStorage_unavailableCapabilities;
    swift_beginAccess();
    outlined assign with take of Cancellable?(v32, v31 + v33, &_s17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSgMR);
    swift_endAccess();
  }

  else
  {
    v24 = v0[16];
  }

  v34 = v0[15];
  v35 = v0[12];
  v36 = v0[9];

  v37 = v0[1];

  return v37();
}

{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v7 = *v0;

  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return MEMORY[0x2822009F8](closure #1 in RealityViewCameraContent.camera.didset, v5, v4);
}

{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];

  (*(v4 + 8))(v2, v3);
  v5 = v0[19];
  v6 = v0[9];
  v7 = OBJC_IVAR____TtCV19_RealityKit_SwiftUI24RealityViewCameraContent14ContentStorage_unavailableCapabilities;
  swift_beginAccess();
  outlined assign with take of Cancellable?(v6, v5 + v7, &_s17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSgMd, &_s17RealityFoundation22SpatialTrackingSessionC23UnavailableCapabilitiesVSgMR);
  swift_endAccess();

  v8 = v0[15];
  v9 = v0[12];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t closure #2 in RealityViewCameraContent.camera.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](closure #2 in RealityViewCameraContent.camera.didset, v6, v5);
}

uint64_t closure #2 in RealityViewCameraContent.camera.didset()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 24);
    v0[10] = v3;
    if (v3)
    {
      v4 = *(MEMORY[0x277CDB4F8] + 4);

      v5 = swift_task_alloc();
      v0[11] = v5;
      *v5 = v0;
      v5[1] = closure #2 in RealityViewCameraContent.camera.didset;

      return MEMORY[0x28212A660]();
    }

    v7 = v0[6];
  }

  else
  {
    v6 = v0[6];
  }

  v8 = v0[1];

  return v8();
}

{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](closure #2 in RealityViewCameraContent.camera.didset, v5, v4);
}

uint64_t RealityViewCameraContent.cameraTarget.getter()
{
  v1 = *(v0 + *(type metadata accessor for RealityViewCameraContent(0) + 44));
}

uint64_t RealityViewCameraContent.cameraTarget.setter(uint64_t a1)
{
  v3 = type metadata accessor for RealityViewCameraContent(0);
  v4 = *(v3 + 44);
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;

  v6 = *(v1 + *(v3 + 56));
  v7 = *(v6 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController__orbitTargetEntity);
  *(v6 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController__orbitTargetEntity) = a1;

  if (a1)
  {
    type metadata accessor for Entity();
    HasTransform.visualBounds(recursive:relativeTo:excludeInactive:)();
    v14 = v10;
    v15 = v9;
    v11 = BoundingBox.center.getter();
    *(v6 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_target) = v12;
    *(v6 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_baseScale) = MEMORY[0x23EEAC580](v11, v15, v14);
    *(v6 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orbitRotation) = xmmword_23B91BFE0;
    if (*(v6 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView))
    {
      v13 = *(v6 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView);

      Entity.update(from:overrideDistance:)(v6, 1);
    }
  }

  return result;
}

uint64_t (*RealityViewCameraContent.cameraTarget.modify(uint64_t a1))(uint64_t result, char a2)
{
  *a1 = v1;
  v3 = type metadata accessor for RealityViewCameraContent(0);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v3 + 44);
  return RealityViewCameraContent.cameraTarget.modify;
}

uint64_t RealityViewCameraContent.cameraTarget.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(*result + *(*(result + 8) + 56));
    v3 = *(*result + *(result + 16));
    v4 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController__orbitTargetEntity);
    *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController__orbitTargetEntity) = v3;
    swift_retain_n();

    if (v3)
    {
      type metadata accessor for Entity();
      HasTransform.visualBounds(recursive:relativeTo:excludeInactive:)();
      v10 = v6;
      v11 = v5;
      v7 = BoundingBox.center.getter();
      *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_target) = v8;
      *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_baseScale) = MEMORY[0x23EEAC580](v7, v11, v10);
      *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_orbitRotation) = xmmword_23B91BFE0;
      if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView))
      {
        v9 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_pointOfView);

        Entity.update(from:overrideDistance:)(v2, 1);
      }
    }
  }

  return result;
}

uint64_t RealityViewCameraContent.environment.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for RealityViewCameraContent(0) + 48));
}

uint64_t key path setter for RealityViewCameraContent.environment : RealityViewCameraContent(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for RealityViewCameraContent(0) + 48);
  v5 = *(a2 + v4);

  *(a2 + v4) = v3;
  return RealityViewCameraContent.environment.didset();
}

uint64_t RealityViewCameraContent.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for RealityViewCameraContent(0) + 48);
  v4 = *(v1 + v3);

  *(v1 + v3) = v2;

  return RealityViewCameraContent.environment.didset();
}

uint64_t RealityViewCameraContent.environment.didset()
{
  v1 = type metadata accessor for ARView.Environment.Background();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = type metadata accessor for ARView.Environment();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-v9];
  v11 = *v0;
  dispatch thunk of ARView.environment.getter();
  if (*(v0 + *(type metadata accessor for RealityViewCameraContent(0) + 48)))
  {

    static ARView.Environment.Background.skybox(_:)();
    ARView.Environment.background.setter();

    v12 = ARView.Environment.lighting.modify();
    ARView.Environment.ImageBasedLight.resource.setter();
    v12(v16, 0);
  }

  else
  {
    v13 = [objc_opt_self() clearColor];
    static ARView.Environment.Background.color(_:)();

    ARView.Environment.background.setter();
    v14 = ARView.Environment.lighting.modify();
    ARView.Environment.ImageBasedLight.resource.setter();
    v14(v16, 0);
  }

  (*(v4 + 16))(v8, v10, v3);
  dispatch thunk of ARView.environment.setter();
  return (*(v4 + 8))(v10, v3);
}

uint64_t *(*RealityViewCameraContent.environment.modify(void *a1))(uint64_t *result, char a2)
{
  *a1 = v1;
  v2 = *(type metadata accessor for RealityViewCameraContent(0) + 48);
  return RealityViewCameraContent.environment.modify;
}

uint64_t *RealityViewCameraContent.environment.modify(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    return RealityViewCameraContent.environment.didset();
  }

  return result;
}

uint64_t (*RealityViewCameraContent.audioListener.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = *v1;
  *a1 = dispatch thunk of ARView.audioListener.getter();
  return RealityViewCameraContent.audioListener.modify;
}

uint64_t outlined init with copy of RealityViewCamera(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t key path setter for RealityViewCameraContent.renderingEffects : RealityViewCameraContent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RealityViewRenderingEffects(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RealityViewCamera(a1, v7, type metadata accessor for RealityViewRenderingEffects);
  v8 = type metadata accessor for RealityViewCameraContent(0);
  outlined assign with copy of RealityViewCamera(v7, a2 + *(v8 + 52), type metadata accessor for RealityViewRenderingEffects);
  RealityViewCameraContent.renderingEffects.didset();
  return outlined destroy of RealityViewCamera(v7, type metadata accessor for RealityViewRenderingEffects);
}

uint64_t RealityViewCameraContent.renderingEffects.setter(uint64_t a1)
{
  v3 = type metadata accessor for RealityViewCameraContent(0);
  outlined assign with copy of RealityViewCamera(a1, v1 + *(v3 + 52), type metadata accessor for RealityViewRenderingEffects);
  RealityViewCameraContent.renderingEffects.didset();
  return outlined destroy of RealityViewCamera(a1, type metadata accessor for RealityViewRenderingEffects);
}

uint64_t outlined assign with copy of RealityViewCamera(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t RealityViewCameraContent.renderingEffects.didset()
{
  v165 = type metadata accessor for AntialiasingMode();
  v167 = *(v165 - 8);
  v1 = *(v167 + 64);
  v2 = MEMORY[0x28223BE20](v165);
  v164 = &v144 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v159 = &v144 - v4;
  v5 = type metadata accessor for ARView.RenderOptions();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v156 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v158 = &v144 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v155 = &v144 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v163 = &v144 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v154 = &v144 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v157 = &v144 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v153 = &v144 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v162 = &v144 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v152 = &v144 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v161 = &v144 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v151 = &v144 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v160 = &v144 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v144 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v144 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v166 = &v144 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v144 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v144 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v144 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6ARViewC13RenderOptionsVSgMd, &_s10RealityKit6ARViewC13RenderOptionsVSgMR);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v48 - 8);
  v150 = &v144 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v149 = &v144 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v148 = &v144 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v147 = &v144 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v146 = &v144 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v145 = &v144 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v64 = &v144 - v63;
  MEMORY[0x28223BE20](v62);
  v66 = &v144 - v65;
  v168 = v0 + *(type metadata accessor for RealityViewCameraContent(0) + 52);
  v67 = *v168;
  v170 = *v0;
  if (v67 == 2)
  {
    v71 = v166;
    static ARView.RenderOptions.disableMotionBlur.getter();
    v72 = ARView.renderOptions.modify();
    specialized OptionSet<>.insert(_:)(v42, v71);
    v73 = *(v6 + 8);
    v73(v71, v5);
    v169 = v73;
    v73(v42, v5);
    v72(v171, 0);
    v75 = v167;
    v74 = v168;
  }

  else if (v67 == 1)
  {
    static ARView.RenderOptions.disableMotionBlur.getter();
    v68 = ARView.renderOptions.modify();
    (*(v6 + 16))(v42);
    _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions, MEMORY[0x277CDB620]);
    dispatch thunk of SetAlgebra.intersection(_:)();
    if (dispatch thunk of SetAlgebra.isEmpty.getter())
    {
      v69 = *(v6 + 8);
      v69(v45, v5);
      v169 = v69;
      v69(v47, v5);
      v70 = 1;
    }

    else
    {
      dispatch thunk of SetAlgebra.subtract(_:)();
      v169 = *(v6 + 8);
      v169(v47, v5);
      (*(v6 + 32))(v66, v45, v5);
      v70 = 0;
    }

    v75 = v167;
    (*(v6 + 56))(v66, v70, 1, v5);
    outlined destroy of PerspectiveCameraComponent?(v66, &_s10RealityKit6ARViewC13RenderOptionsVSgMd, &_s10RealityKit6ARViewC13RenderOptionsVSgMR);
    v68(v171, 0);
    v74 = v168;
  }

  else
  {
    static ARView.RenderOptions.disableMotionBlur.getter();
    v76 = ARView.renderOptions.modify();
    (*(v6 + 16))(v42);
    _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions, MEMORY[0x277CDB620]);
    dispatch thunk of SetAlgebra.intersection(_:)();
    if (dispatch thunk of SetAlgebra.isEmpty.getter())
    {
      v77 = *(v6 + 8);
      v77(v34, v5);
      v169 = v77;
      v77(v37, v5);
      v78 = 1;
    }

    else
    {
      dispatch thunk of SetAlgebra.subtract(_:)();
      v169 = *(v6 + 8);
      v169(v37, v5);
      (*(v6 + 32))(v64, v34, v5);
      v78 = 0;
    }

    v74 = v168;
    (*(v6 + 56))(v64, v78, 1, v5);
    outlined destroy of PerspectiveCameraComponent?(v64, &_s10RealityKit6ARViewC13RenderOptionsVSgMd, &_s10RealityKit6ARViewC13RenderOptionsVSgMR);
    v76(v171, 0);
    v75 = v167;
  }

  v80 = v160;
  v79 = v161;
  v81 = *(v74 + 1);
  if (v81 == 2)
  {
    v87 = v166;
    static ARView.RenderOptions.disableDepthOfField.getter();
    v88 = ARView.renderOptions.modify();
    specialized OptionSet<>.insert(_:)(v42, v87);
    v89 = v87;
    v90 = v169;
    v169(v89, v5);
    v90(v42, v5);
    v88(v171, 0);
    v85 = v157;
    v91 = v162;
    goto LABEL_23;
  }

  if (v81 != 1)
  {
    static ARView.RenderOptions.disableDepthOfField.getter();
    v161 = ARView.renderOptions.modify();
    (*(v6 + 16))(v42);
    _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions, MEMORY[0x277CDB620]);
    v92 = v79;
    v82 = v152;
    dispatch thunk of SetAlgebra.intersection(_:)();
    if (dispatch thunk of SetAlgebra.isEmpty.getter())
    {
      v93 = v169;
      v169(v82, v5);
      v93(v92, v5);
      v84 = 1;
      v85 = v157;
      v86 = v146;
      goto LABEL_22;
    }

    dispatch thunk of SetAlgebra.subtract(_:)();
    v169(v92, v5);
    v94 = *(v6 + 32);
    v95 = &v173;
LABEL_21:
    v86 = *(v95 - 32);
    v94(v86, v82, v5);
    v84 = 0;
    v85 = v157;
    goto LABEL_22;
  }

  static ARView.RenderOptions.disableDepthOfField.getter();
  v161 = ARView.renderOptions.modify();
  (*(v6 + 16))(v42);
  _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions, MEMORY[0x277CDB620]);
  v82 = v151;
  dispatch thunk of SetAlgebra.intersection(_:)();
  if ((dispatch thunk of SetAlgebra.isEmpty.getter() & 1) == 0)
  {
    dispatch thunk of SetAlgebra.subtract(_:)();
    v169(v80, v5);
    v94 = *(v6 + 32);
    v95 = &v172;
    goto LABEL_21;
  }

  v83 = v169;
  v169(v82, v5);
  v83(v80, v5);
  v84 = 1;
  v85 = v157;
  v86 = v145;
LABEL_22:
  (*(v6 + 56))(v86, v84, 1, v5);
  outlined destroy of PerspectiveCameraComponent?(v86, &_s10RealityKit6ARViewC13RenderOptionsVSgMd, &_s10RealityKit6ARViewC13RenderOptionsVSgMR);
  (v161)(v171, 0);
  v91 = v162;
  v75 = v167;
LABEL_23:
  v96 = *(v74 + 2);
  if (v96 == 2)
  {
    v102 = v166;
    static ARView.RenderOptions.disableCameraGrain.getter();
    v103 = ARView.renderOptions.modify();
    specialized OptionSet<>.insert(_:)(v42, v102);
    v104 = v102;
    v105 = v169;
    v169(v104, v5);
    v105(v42, v5);
    v103(v171, 0);
    v100 = v158;
  }

  else
  {
    if (v96 == 1)
    {
      static ARView.RenderOptions.disableCameraGrain.getter();
      v162 = ARView.renderOptions.modify();
      (*(v6 + 16))(v42);
      _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions, MEMORY[0x277CDB620]);
      v97 = v153;
      dispatch thunk of SetAlgebra.intersection(_:)();
      if (dispatch thunk of SetAlgebra.isEmpty.getter())
      {
        v98 = v169;
        v169(v97, v5);
        v98(v91, v5);
        v99 = 1;
        v100 = v158;
        v101 = v147;
      }

      else
      {
        dispatch thunk of SetAlgebra.subtract(_:)();
        v169(v91, v5);
        v101 = v147;
        (*(v6 + 32))(v147, v97, v5);
        v99 = 0;
        v100 = v158;
      }

      (*(v6 + 56))(v101, v99, 1, v5);
      v110 = v101;
    }

    else
    {
      static ARView.RenderOptions.disableCameraGrain.getter();
      v162 = ARView.renderOptions.modify();
      (*(v6 + 16))(v42);
      _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions, MEMORY[0x277CDB620]);
      v106 = v154;
      dispatch thunk of SetAlgebra.intersection(_:)();
      if (dispatch thunk of SetAlgebra.isEmpty.getter())
      {
        v107 = v169;
        v169(v106, v5);
        v107(v85, v5);
        v108 = 1;
        v100 = v158;
        v109 = v148;
      }

      else
      {
        dispatch thunk of SetAlgebra.subtract(_:)();
        v169(v85, v5);
        v109 = v148;
        (*(v6 + 32))(v148, v106, v5);
        v108 = 0;
        v100 = v158;
      }

      (*(v6 + 56))(v109, v108, 1, v5);
      v110 = v109;
    }

    outlined destroy of PerspectiveCameraComponent?(v110, &_s10RealityKit6ARViewC13RenderOptionsVSgMd, &_s10RealityKit6ARViewC13RenderOptionsVSgMR);
    (v162)(v171, 0);
  }

  v111 = v163;
  v112 = type metadata accessor for RealityViewRenderingEffects(0);
  v113 = *&v74[v112[8]];
  if (v113 == 2)
  {
    static ARView.RenderOptions.disableHDR.getter();
    v120 = ARView.renderOptions.modify();
    (*(v6 + 16))(v42);
    _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions, MEMORY[0x277CDB620]);
    v121 = v155;
    dispatch thunk of SetAlgebra.intersection(_:)();
    if (dispatch thunk of SetAlgebra.isEmpty.getter())
    {
      v122 = v169;
      v169(v121, v5);
      v122(v111, v5);
      v123 = 1;
      v119 = v159;
      v124 = v149;
    }

    else
    {
      dispatch thunk of SetAlgebra.subtract(_:)();
      v169(v111, v5);
      v124 = v149;
      (*(v6 + 32))(v149, v121, v5);
      v123 = 0;
      v119 = v159;
    }

    (*(v6 + 56))(v124, v123, 1, v5);
    outlined destroy of PerspectiveCameraComponent?(v124, &_s10RealityKit6ARViewC13RenderOptionsVSgMd, &_s10RealityKit6ARViewC13RenderOptionsVSgMR);
    v120(v171, 0);
    v118 = v164;
    v74 = v168;
  }

  else if (v113 == 1)
  {
    v114 = v166;
    static ARView.RenderOptions.disableHDR.getter();
    v115 = ARView.renderOptions.modify();
    specialized OptionSet<>.insert(_:)(v42, v114);
    v116 = v114;
    v117 = v169;
    v169(v116, v5);
    v117(v42, v5);
    v115(v171, 0);
    v118 = v164;
    v119 = v159;
  }

  else
  {
    static ARView.RenderOptions.disableHDR.getter();
    v125 = ARView.renderOptions.modify();
    (*(v6 + 16))(v42);
    _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.RenderOptions and conformance ARView.RenderOptions, MEMORY[0x277CDB620]);
    v126 = v156;
    dispatch thunk of SetAlgebra.intersection(_:)();
    if (dispatch thunk of SetAlgebra.isEmpty.getter())
    {
      v127 = v169;
      v169(v126, v5);
      v127(v100, v5);
      v128 = 1;
      v119 = v159;
      v74 = v168;
      v129 = v150;
    }

    else
    {
      dispatch thunk of SetAlgebra.subtract(_:)();
      v169(v100, v5);
      v129 = v150;
      (*(v6 + 32))(v150, v126, v5);
      v128 = 0;
      v119 = v159;
      v74 = v168;
    }

    (*(v6 + 56))(v129, v128, 1, v5);
    outlined destroy of PerspectiveCameraComponent?(v129, &_s10RealityKit6ARViewC13RenderOptionsVSgMd, &_s10RealityKit6ARViewC13RenderOptionsVSgMR);
    v125(v171, 0);
    v118 = v164;
  }

  v130 = v165;
  (*(v75 + 16))(v119, &v74[v112[7]], v165);
  v131 = (*(v75 + 88))(v119, v130);
  if (v131 == *MEMORY[0x277CDB3B8])
  {
    (*(v75 + 104))(v118, v131, v130);
LABEL_50:
    dispatch thunk of ARView.antialiasingMode.setter();
    goto LABEL_52;
  }

  v132 = *(v75 + 104);
  if (v131 == *MEMORY[0x277CDB3B0])
  {
    v132(v118, v131, v130);
    goto LABEL_50;
  }

  (v132)(v118);
  dispatch thunk of ARView.antialiasingMode.setter();
  (*(v75 + 8))(v119, v130);
LABEL_52:
  v133 = &v74[v112[9]];
  v134 = *v133;
  v136 = v133[2];
  v135 = v133[3];
  if (*v133)
  {
    v137 = v133[1];
    v138 = swift_allocObject();
    *(v138 + 16) = v134;
    *(v138 + 24) = v137;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v134);

    v139 = ARView.renderCallbacks.modify();
    ARView.RenderCallbacks.postProcess.setter();
    v139(v171, 0);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v134);
    if (v136)
    {
LABEL_54:
      outlined copy of (@escaping @callee_guaranteed () -> ())?(v136);

      v140 = ARView.renderCallbacks.modify();
      ARView.RenderCallbacks.prepareWithDevice.setter();
      v140(v171, 0);
      return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v136);
    }
  }

  else
  {
    v142 = ARView.renderCallbacks.modify();
    ARView.RenderCallbacks.postProcess.setter();
    v142(v171, 0);
    if (v136)
    {
      goto LABEL_54;
    }
  }

  v143 = ARView.renderCallbacks.modify();
  ARView.RenderCallbacks.prepareWithDevice.setter();
  return v143(v171, 0);
}

uint64_t outlined destroy of RealityViewCamera(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *(*RealityViewCameraContent.renderingEffects.modify(void *a1))(uint64_t *result, char a2)
{
  *a1 = v1;
  v2 = *(type metadata accessor for RealityViewCameraContent(0) + 52);
  return RealityViewCameraContent.renderingEffects.modify;
}

uint64_t *RealityViewCameraContent.renderingEffects.modify(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    return RealityViewCameraContent.renderingEffects.didset();
  }

  return result;
}

uint64_t RealityViewCameraContent.subscribe<A>(to:on:componentType:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v21[1] = a3;
  v21[2] = a4;
  v21[0] = a2;
  v9 = type metadata accessor for EventSubscription();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _StoredEventSubscription();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, v22, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);

  _StoredEventSubscription.__allocating_init(to:on:componentType:_:)();

  EventSubscription.init(_:)();
  v14 = *(v5 + *(type metadata accessor for RealityViewCameraContent(0) + 32));
  (*(v10 + 16))(v13, a5, v9);
  swift_beginAccess();
  v15 = *(v14 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + 16) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15, &_ss23_ContiguousArrayStorageCy17RealityFoundation17EventSubscriptionVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation17EventSubscriptionVGMR, MEMORY[0x277CDB3F8]);
    *(v14 + 16) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1, v15, &_ss23_ContiguousArrayStorageCy17RealityFoundation17EventSubscriptionVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation17EventSubscriptionVGMR, MEMORY[0x277CDB3F8]);
  }

  v15[2] = v18 + 1;
  (*(v10 + 32))(v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v13, v9);
  *(v14 + 16) = v15;
  swift_endAccess();
  v19 = *v6;
  dispatch thunk of ARView.scene.getter();
  EventSubscription.subscribe(to:)();
}

uint64_t RealityViewCameraContent.updateDebugOptions()@<X0>(uint64_t a1@<X8>)
{
  v190 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_10RealityKit6ARViewC12DebugOptionsV17memberAfterInserttMd, &_sSb8inserted_10RealityKit6ARViewC12DebugOptionsV17memberAfterInserttMR);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v171 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v171 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v171 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v186 = &v171 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v171 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v200 = &v171 - v18;
  MEMORY[0x28223BE20](v17);
  v194 = &v171 - v19;
  v203 = type metadata accessor for CharacterSet();
  v207 = *(v203 - 8);
  v20 = v207[8];
  MEMORY[0x28223BE20](v203);
  v202 = &v171 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ARView.DebugOptions();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v181 = &v171 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v180 = &v171 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v183 = &v171 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v182 = &v171 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v185 = &v171 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v184 = &v171 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v188 = &v171 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v187 = &v171 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v192 = &v171 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v191 = &v171 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v204 = &v171 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v205 = &v171 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v201 = &v171 - v50;
  MEMORY[0x28223BE20](v49);
  v206 = &v171 - v51;
  static ARView.DebugOptions.none.getter();
  v52 = [objc_opt_self() processInfo];
  v53 = [v52 environment];

  v54 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v54 + 16) || (v55 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001CLL, 0x800000023B929020), (v56 & 1) == 0))
  {

    return (*(v23 + 32))(v190, v206, v22);
  }

  v179 = v23;
  v189 = v16;
  v177 = v11;
  v176 = v8;
  v175 = v5;
  v197 = v1;
  v57 = (*(v54 + 56) + 16 * v55);
  v58 = *v57;
  v59 = v57[1];

  v60 = String.lowercased()();

  v62 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, v60._countAndFlagsBits, v60._object, v61);
  v63 = *(v62 + 16);
  if (!v63)
  {

    v83 = MEMORY[0x277D84F90];
LABEL_12:
    v178 = v83;
    v84 = *(v83 + 16);
    v85 = v205;
    if (!v84)
    {
LABEL_79:

      return (*(v179 + 32))(v190, v206, v22);
    }

    v196 = (v207 + 1);
    v174 = 0x800000023B929040;
    v86 = (v179 + 16);
    v193 = (v179 + 32);
    v87 = (v178 + 40);
    *&v82 = 136315138;
    v173 = v82;
    v195 = (v179 + 8);
    while (1)
    {
      v207 = v87;
      v208 = v84;
      v88 = *v87;
      v209[0] = *(v87 - 1);
      v209[1] = v88;

      v89 = v202;
      static CharacterSet.whitespaces.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v90 = StringProtocol.trimmingCharacters(in:)();
      v92 = v91;
      (*v196)(v89, v203);

      if (v90 == 0x73636973796870 && v92 == 0xE700000000000000)
      {
        break;
      }

      v94 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v95 = v201;
      if (v94)
      {

LABEL_21:
        static ARView.DebugOptions.showPhysics.getter();
        v96 = v204;
        v199 = *v86;
        v199(v204, v206, v22);
        v97 = MEMORY[0x277CDB5F0];
        v198 = _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, MEMORY[0x277CDB5F0]);
        dispatch thunk of SetAlgebra.intersection(_:)();
        _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, v97);
        v98 = dispatch thunk of static Equatable.== infix(_:_:)();
        v99 = v197;
        v100 = *(v197 + 48);
        v101 = v86;
        v102 = v85;
        v103 = v194;
        v104 = v195;
        *v194 = (v98 & 1) == 0;
        v105 = *v104;
        if (v98)
        {
          v105(v95, v22);
          (*v193)(v103 + v100, v102, v22);
        }

        else
        {
          v105(v102, v22);
          v106 = (v103 + v100);
          v107 = v199;
          v199(v106, v95, v22);
          (v107)(v96, v95, v22);
          dispatch thunk of SetAlgebra.formUnion(_:)();
          v105(v95, v22);
        }

        v86 = v101;
        goto LABEL_36;
      }

      v108 = v86;
      if (v90 == 0x69726F646C726F77 && v92 == 0xEB000000006E6967)
      {

        v111 = v191;
        v112 = v192;
      }

      else
      {
        v110 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v111 = v191;
        v112 = v192;
        if ((v110 & 1) == 0)
        {
          if (v90 == 0x726F726F68636E61 && v92 == 0xED0000736E696769)
          {

            v121 = v188;
            v122 = v187;
            v123 = v204;
            v124 = v206;
            v86 = v108;
            goto LABEL_44;
          }

          v125 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v121 = v188;
          v122 = v187;
          v124 = v206;
          v86 = v108;
          if (v125)
          {

            v123 = v204;
LABEL_44:
            static ARView.DebugOptions.showAnchorOrigins.getter();
            v199 = *v86;
            v199(v123, v124, v22);
            v126 = v122;
            v127 = MEMORY[0x277CDB5F0];
            v198 = _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, MEMORY[0x277CDB5F0]);
            dispatch thunk of SetAlgebra.intersection(_:)();
            _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, v127);
            v128 = dispatch thunk of static Equatable.== infix(_:_:)();
            v129 = *(v197 + 48);
            v130 = v186;
            *v186 = (v128 & 1) == 0;
            v131 = *v195;
            if (v128)
            {
              v131(v126, v22);
              (*v193)(&v130[v129], v121, v22);
            }

            else
            {
              v131(v121, v22);
              v132 = &v130[v129];
              v133 = v199;
              v199(v132, v126, v22);
              (v133)(v123, v126, v22);
              dispatch thunk of SetAlgebra.formUnion(_:)();
              v131(v126, v22);
            }

            v134 = v130;
          }

          else
          {
            if (v90 == 0x6567726F68636E61 && v92 == 0xEE00797274656D6FLL)
            {

              v136 = v185;
              v137 = v184;
            }

            else
            {
              v138 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v136 = v185;
              v137 = v184;
              if ((v138 & 1) == 0)
              {
                if (v90 == 0x7065727574616566 && v92 == 0xED000073746E696FLL)
                {

                  v147 = v183;
                  v148 = v182;
                  v85 = v205;
LABEL_63:
                  static ARView.DebugOptions.showFeaturePoints.getter();
                  v199 = *v86;
                  v199(v204, v206, v22);
                  v150 = v148;
                  v151 = MEMORY[0x277CDB5F0];
                  v198 = _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, MEMORY[0x277CDB5F0]);
                  dispatch thunk of SetAlgebra.intersection(_:)();
                  _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, v151);
                  v152 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v153 = *(v197 + 48);
                  v154 = v176;
                  *v176 = (v152 & 1) == 0;
                  v155 = *v195;
                  if (v152)
                  {
                    v155(v150, v22);
                    (*v193)(v154 + v153, v147, v22);
                  }

                  else
                  {
                    v155(v147, v22);
                    v156 = v199;
                    v199((v154 + v153), v150, v22);
                    (v156)(v204, v150, v22);
                    dispatch thunk of SetAlgebra.formUnion(_:)();
                    v155(v150, v22);
                  }
                }

                else
                {
                  v149 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v147 = v183;
                  v148 = v182;
                  v85 = v205;
                  if (v149)
                  {

                    goto LABEL_63;
                  }

                  if ((v90 != 0xD000000000000012 || v174 != v92) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {
                    if (one-time initialization token for logger != -1)
                    {
                      swift_once();
                    }

                    v165 = type metadata accessor for Logger();
                    __swift_project_value_buffer(v165, logger);

                    v166 = Logger.logObject.getter();
                    v167 = static os_log_type_t.error.getter();

                    if (os_log_type_enabled(v166, v167))
                    {
                      v168 = swift_slowAlloc();
                      v199 = swift_slowAlloc();
                      v209[0] = v199;
                      *v168 = v173;
                      v169 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, v209);

                      *(v168 + 4) = v169;
                      _os_log_impl(&dword_23B824000, v166, v167, "Unknown Visualization Option: %s", v168, 0xCu);
                      v170 = v199;
                      __swift_destroy_boxed_opaque_existential_0Tm(v199);
                      MEMORY[0x23EEB0B70](v170, -1, -1);
                      MEMORY[0x23EEB0B70](v168, -1, -1);
                    }

                    else
                    {
                    }

                    v120 = v208;
                    goto LABEL_37;
                  }

                  v158 = v180;
                  static ARView.DebugOptions.showSceneUnderstanding.getter();
                  v199 = *v86;
                  v199(v204, v206, v22);
                  v159 = MEMORY[0x277CDB5F0];
                  v160 = _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, MEMORY[0x277CDB5F0]);
                  v161 = v181;
                  v198 = v160;
                  dispatch thunk of SetAlgebra.intersection(_:)();
                  _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, v159);
                  v162 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v163 = *(v197 + 48);
                  v154 = v175;
                  *v175 = (v162 & 1) == 0;
                  v155 = *v195;
                  if (v162)
                  {
                    v155(v158, v22);
                    (*v193)(v154 + v163, v161, v22);
                  }

                  else
                  {
                    v155(v161, v22);
                    v172 = v155;
                    v164 = v199;
                    v199((v154 + v163), v158, v22);
                    (v164)(v204, v158, v22);
                    v155 = v172;
                    dispatch thunk of SetAlgebra.formUnion(_:)();
                    v155(v158, v22);
                  }
                }

                v157 = v200;
                outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v154, v200, &_sSb8inserted_10RealityKit6ARViewC12DebugOptionsV17memberAfterInserttMd, &_sSb8inserted_10RealityKit6ARViewC12DebugOptionsV17memberAfterInserttMR);
                v155((v157 + *(v197 + 48)), v22);
                v120 = v208;
                goto LABEL_37;
              }
            }

            static ARView.DebugOptions.showAnchorGeometry.getter();
            v139 = v204;
            v199 = *v86;
            v199(v204, v206, v22);
            v140 = MEMORY[0x277CDB5F0];
            v141 = v136;
            v198 = _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, MEMORY[0x277CDB5F0]);
            dispatch thunk of SetAlgebra.intersection(_:)();
            _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, v140);
            v142 = dispatch thunk of static Equatable.== infix(_:_:)();
            v143 = *(v197 + 48);
            v144 = v177;
            *v177 = (v142 & 1) == 0;
            v131 = *v195;
            if (v142)
            {
              v131(v137, v22);
              (*v193)(&v144[v143], v141, v22);
            }

            else
            {
              v131(v141, v22);
              v145 = &v144[v143];
              v146 = v199;
              v199(v145, v137, v22);
              (v146)(v139, v137, v22);
              dispatch thunk of SetAlgebra.formUnion(_:)();
              v131(v137, v22);
            }

            v134 = v144;
          }

          v135 = v200;
          outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v134, v200, &_sSb8inserted_10RealityKit6ARViewC12DebugOptionsV17memberAfterInserttMd, &_sSb8inserted_10RealityKit6ARViewC12DebugOptionsV17memberAfterInserttMR);
          v131((v135 + *(v197 + 48)), v22);
          v85 = v205;
          v120 = v208;
          goto LABEL_37;
        }
      }

      static ARView.DebugOptions.showWorldOrigin.getter();
      v113 = v204;
      v199 = *v108;
      v199(v204, v206, v22);
      v114 = MEMORY[0x277CDB5F0];
      v198 = _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, MEMORY[0x277CDB5F0]);
      dispatch thunk of SetAlgebra.intersection(_:)();
      _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type ARView.DebugOptions and conformance ARView.DebugOptions, v114);
      v115 = dispatch thunk of static Equatable.== infix(_:_:)();
      v99 = v197;
      v116 = *(v197 + 48);
      v103 = v189;
      *v189 = (v115 & 1) == 0;
      v105 = *v195;
      if (v115)
      {
        v105(v111, v22);
        (*v193)(v103 + v116, v112, v22);
      }

      else
      {
        v105(v112, v22);
        v117 = (v103 + v116);
        v118 = v199;
        v199(v117, v111, v22);
        (v118)(v113, v111, v22);
        dispatch thunk of SetAlgebra.formUnion(_:)();
        v105(v111, v22);
      }

      v86 = v108;
LABEL_36:
      v119 = v200;
      outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v103, v200, &_sSb8inserted_10RealityKit6ARViewC12DebugOptionsV17memberAfterInserttMd, &_sSb8inserted_10RealityKit6ARViewC12DebugOptionsV17memberAfterInserttMR);
      v105((v119 + *(v99 + 48)), v22);
      v85 = v205;
      v120 = v208;
LABEL_37:
      v87 = v207 + 2;
      v84 = v120 - 1;
      if (!v84)
      {
        goto LABEL_79;
      }
    }

    v95 = v201;
    goto LABEL_21;
  }

  v209[0] = MEMORY[0x277D84F90];
  v64 = v62;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63, 0);
  result = v64;
  v66 = 0;
  v67 = v209[0];
  v68 = (v64 + 56);
  v208 = v64;
  while (v66 < *(result + 16))
  {
    v69 = v22;
    v70 = *(v68 - 3);
    v71 = *(v68 - 2);
    v72 = *(v68 - 1);
    v73 = *v68;
    v74 = v67;

    v75 = MEMORY[0x23EEAF550](v70, v71, v72, v73);
    v77 = v76;

    v67 = v74;
    v209[0] = v74;
    v79 = *(v74 + 16);
    v78 = *(v74 + 24);
    if (v79 >= v78 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1);
      v67 = v209[0];
    }

    ++v66;
    *(v67 + 16) = v79 + 1;
    v80 = v67 + 16 * v79;
    *(v80 + 32) = v75;
    *(v80 + 40) = v77;
    v68 += 4;
    v22 = v69;
    result = v208;
    if (v63 == v66)
    {
      v81 = v67;

      v83 = v81;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if (result < 0)
  {
    __break(1u);
LABEL_44:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a5 > 1), v6, 1, result);
LABEL_36:
    *(result + 16) = v6;
    v30 = (result + 32 * v5);
    v30[4] = v7;
    v30[5] = v8;
    v30[6] = v9;
    v30[7] = v10;
    return result;
  }

  v11 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (!result || ((a4 & 0x2000000000000000) != 0 ? (v13 = HIBYTE(a4) & 0xF) : (v13 = a3 & 0xFFFFFFFFFFFFLL), !v13))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = String.subscript.getter();
    v8 = v27;
    v9 = v28;
    v10 = v29;

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v5 = *(result + 16);
    a5 = *(result + 24);
    v6 = v5 + 1;
    if (v5 < a5 >> 1)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

  v14 = 4 * v13;
  v41 = MEMORY[0x277D84F90];
  v15 = 15;
  v16 = 0xE100000000000000;
  v40 = result;
  do
  {
    v17 = v15 >> 14;
    if (v15 >> 14 == v14)
    {
      break;
    }

    while (1)
    {
      v10 = v15;
      while (String.subscript.getter() != 44 || v18 != 0xE100000000000000)
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          goto LABEL_16;
        }

        v10 = String.index(after:)();
        v17 = v10 >> 14;
        if (v10 >> 14 == v14)
        {
          goto LABEL_32;
        }
      }

LABEL_16:
      if (v15 >> 14 != v17 || (a2 & 1) == 0)
      {
        break;
      }

      v15 = String.index(after:)();
      v17 = v15 >> 14;
      if (v15 >> 14 == v14)
      {
        goto LABEL_32;
      }
    }

    if (v17 < v15 >> 14)
    {
      __break(1u);
      return result;
    }

    v19 = String.subscript.getter();
    v37 = v21;
    v38 = v20;
    v22 = v41;
    v39 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    v41 = v22;
    if (v25 >= v24 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v22);
    }

    v9 = v41;
    *(v41 + 2) = v25 + 1;
    v26 = &v41[32 * v25];
    *(v26 + 4) = v19;
    *(v26 + 5) = v39;
    *(v26 + 6) = v38;
    *(v26 + 7) = v37;
    v15 = String.index(after:)();
  }

  while (*(v41 + 2) != v40);
LABEL_32:
  if (v15 >> 14 == v14 && (a2 & 1) != 0)
  {

    return v41;
  }

  if (v14 < v15 >> 14)
  {
    __break(1u);
    goto LABEL_46;
  }

  v11 = String.subscript.getter();
  v16 = v31;
  v9 = v32;
  v10 = v33;

  v14 = v41;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_46:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
    goto LABEL_40;
  }

  result = v41;
LABEL_40:
  v35 = *(result + 16);
  v34 = *(result + 24);
  if (v35 >= v34 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, result);
  }

  *(result + 16) = v35 + 1;
  v36 = (result + 32 * v35);
  v36[4] = v11;
  v36[5] = v16;
  v36[6] = v9;
  v36[7] = v10;
  return result;
}

uint64_t RealityViewCameraContent._proto_findEntity(named:)()
{
  v1 = *v0;
  dispatch thunk of ARView.scene.getter();
  v2 = dispatch thunk of Scene.findEntity(named:)();

  return v2;
}

uint64_t RealityViewCameraContent._proto_findEntity(id:)()
{
  v1 = *v0;
  dispatch thunk of ARView.scene.getter();
  v2 = dispatch thunk of Scene.findEntity(id:)();

  return v2;
}

uint64_t RealityViewCameraContent._proto_performQuery(_:)()
{
  v1 = *v0;
  dispatch thunk of ARView.scene.getter();
  Scene.performQuery(_:)();
}

uint64_t RealityViewCameraContent._proto_allowCameraControls_v1.setter(char a1)
{
  result = type metadata accessor for RealityViewCameraContent(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

void (*RealityViewCameraContent._proto_debugOptions_v1.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for ARView.DebugOptions();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v5[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v5[5] = *v1;
  dispatch thunk of ARView.debugOptions.getter();
  return RealityViewCameraContent._proto_debugOptions_v1.modify;
}

void (*RealityViewCameraContent._proto_environment_v1.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for ARView.Environment();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v5[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v5[5] = *v1;
  dispatch thunk of ARView.environment.getter();
  return RealityViewCameraContent._proto_environment_v1.modify;
}

void (*RealityViewCameraContent.__proto_antialiasingMode_v1.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for _Proto_AntialiasingMode_v1();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v5[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v5[5] = *v1;
  dispatch thunk of ARView.__proto_antialiasingMode_v1.getter();
  return RealityViewCameraContent.__proto_antialiasingMode_v1.modify;
}

uint64_t (*RealityViewCameraContent._proto_physicsOrigin_v1.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = *v1;
  *a1 = ARView.physicsOrigin.getter();
  return RealityViewCameraContent._proto_physicsOrigin_v1.modify;
}

uint64_t (*RealityViewCameraContent._proto_audioListener_v1.modify(uint64_t *a1))()
{
  a1[1] = *v1;
  *a1 = dispatch thunk of ARView.audioListener.getter();
  return RealityViewCameraContent._proto_audioListener_v1.modify;
}

uint64_t RealityViewCameraContent.audioListener.modify(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v6 = *a1;

  a3(v7);
}

void (*RealityViewCameraContent._proto_cameraMode_v1.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for ARView.CameraMode();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v5[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v5[5] = *v1;
  ARView.cameraMode.getter();
  return RealityViewCameraContent._proto_cameraMode_v1.modify;
}

uint64_t key path setter for RealityViewCameraContent._proto_debugOptions_v1 : RealityViewCameraContent(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(char *))
{
  v9 = a5(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = (MEMORY[0x28223BE20])();
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  v17 = *(v10 + 16);
  v17(&v20 - v15, a1, v9);
  v18 = *a2;
  v17(v14, v16, v9);
  a6(v14);
  return (*(v10 + 8))(v16, v9);
}

uint64_t RealityViewCameraContent._proto_debugOptions_v1.setter(uint64_t a1, uint64_t (*a2)(void), void (*a3)(char *))
{
  v6 = a2(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = *v3;
  (*(v7 + 16))(&v13 - v9, a1, v6);
  a3(v10);
  return (*(v7 + 8))(a1, v6);
}

void (*RealityViewCameraContent._proto_renderOptions_v1.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for ARView.RenderOptions();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v5[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v5[5] = *v1;
  ARView.renderOptions.getter();
  return RealityViewCameraContent._proto_renderOptions_v1.modify;
}

void RealityViewCameraContent._proto_debugOptions_v1.modify(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*(*a1 + 8) + 16);
  v5(*(*a1 + 24), v4[4], *v4);
  v7 = v4[4];
  v6 = v4[5];
  v8 = v4[2];
  v9 = v4[3];
  v10 = *v4;
  v11 = v4[1];
  if (a2)
  {
    v5(v4[2], v4[3], *v4);
    a3(v8);
    v12 = *(v11 + 8);
    v12(v9, v10);
    v12(v7, v10);
  }

  else
  {
    a3(v4[3]);
    (*(v11 + 8))(v7, v10);
  }

  free(v7);
  free(v9);
  free(v8);

  free(v4);
}

uint64_t protocol witness for RealityViewContentProtocol.entities.setter in conformance RealityViewCameraContent(uint64_t *a1)
{
  v2 = *a1;
  type metadata accessor for Entity();
  v3 = *(v1 + 8);
  v4 = static Entity.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

void (*protocol witness for RealityViewContentProtocol.entities.modify in conformance RealityViewCameraContent(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = RealityViewCameraContent.entities.modify(v2);
  return protocol witness for RealityViewContentProtocol.entities.modify in conformance RealityViewCameraContent;
}

void protocol witness for RealityViewContentProtocol.entities.modify in conformance RealityViewCameraContent(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t RealityViewCameraContent.displayTargetCube.setter(char a1)
{
  result = type metadata accessor for RealityViewCameraContent(0);
  *(*(v1 + *(result + 56)) + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_displayTargetCube) = a1;
  return result;
}

uint64_t (*RealityViewCameraContent.displayTargetCube.modify(uint64_t a1))(uint64_t result)
{
  v3 = *(v1 + *(type metadata accessor for RealityViewCameraContent(0) + 56));
  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_displayTargetCube;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v3 + v4);
  return RealityViewCameraContent.displayTargetCube.modify;
}

uint64_t RealityViewCameraContent.animate(body:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for RealityViewCameraContent(0);
  v8 = *(v7 + 28);
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v21 & 1) == 0)
  {
    v10 = v4;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23B824000, v12, v13, "Setting animate on content in the make closure is not supported, please move this to the update closure.", v14, 2u);
      MEMORY[0x23EEB0B70](v14, -1, -1);
    }

    v4 = v10;
  }

  v15 = *(v4 + *(v7 + 36));
  if (v15 == 1)
  {
  }

  v16 = Transaction.animation.getter();
  if (!v16)
  {
    outlined consume of PlatterRenderer??(v15);
  }

  v17 = v16;
  type metadata accessor for SwiftUIImplicitAnimation();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = 0;
  if (a3)
  {
    type metadata accessor for ImplicitAnimationCompletion();
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = a4;
    *(v19 + 32) = 0;
  }

  *(v18 + 24) = v19;
  v20 = _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type SwiftUIImplicitAnimation and conformance SwiftUIImplicitAnimation, type metadata accessor for SwiftUIImplicitAnimation);
  MEMORY[0x28223BE20](v20);

  outlined copy of (@escaping @callee_guaranteed () -> ())?(a3);
  static ImplicitAnimationStack.withModifier<A>(_:operation:)();

  outlined consume of PlatterRenderer??(v15);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RealityViewCameraConvertible(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  v4 = *a1;
  v5 = *a2;
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance RealityViewCameraConvertibleKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static RealityViewCameraConvertibleKey.defaultValue;
}

uint64_t View.realityViewCameraControls(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[1] = a4;
  v21[2] = a1;
  v6 = type metadata accessor for CameraControlsModifier(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - v13;
  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMR);
  swift_storeEnumTagMultiPayload();
  v15 = *(v6 + 20);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy19_RealityKit_SwiftUI20CameraControlsUpdateOs5NeverOGMd, &_s7Combine18PassthroughSubjectCy19_RealityKit_SwiftUI20CameraControlsUpdateOs5NeverOGMR);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v21[5] = PassthroughSubject.init()();
  State.init(wrappedValue:)();
  *(v9 + v15) = v22;
  MEMORY[0x23EEAEFD0](v9, a2, v6, a3);
  outlined destroy of RealityViewCamera(v9, type metadata accessor for CameraControlsModifier);
  swift_getKeyPath();
  v19 = _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type CameraControlsModifier and conformance CameraControlsModifier, type metadata accessor for CameraControlsModifier);
  v21[3] = a3;
  v21[4] = v19;
  swift_getWitnessTable();
  View.environment<A>(_:_:)();

  return (*(v11 + 8))(v14, v10);
}

uint64_t EnvironmentValues.realityViewCameraControls.getter()
{
  lazy protocol witness table accessor for type EnvironmentValues.CameraControlsKey and conformance EnvironmentValues.CameraControlsKey();

  return EnvironmentValues.subscript.getter();
}

uint64_t key path setter for EnvironmentValues.realityViewCameraControls : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for CameraControls();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2);
  v10(v7, v9, v2);
  lazy protocol witness table accessor for type EnvironmentValues.CameraControlsKey and conformance EnvironmentValues.CameraControlsKey();
  EnvironmentValues.subscript.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t EnvironmentValues.realityViewCameraControls.setter(uint64_t a1)
{
  v2 = type metadata accessor for CameraControls();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  lazy protocol witness table accessor for type EnvironmentValues.CameraControlsKey and conformance EnvironmentValues.CameraControlsKey();
  EnvironmentValues.subscript.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*EnvironmentValues.realityViewCameraControls.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = type metadata accessor for CameraControls();
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
  v5[6] = lazy protocol witness table accessor for type EnvironmentValues.CameraControlsKey and conformance EnvironmentValues.CameraControlsKey();
  EnvironmentValues.subscript.getter();
  return EnvironmentValues.realityViewCameraControls.modify;
}

void EnvironmentValues.realityViewCameraControls.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = *((*a1)[2] + 16);
  v4((*a1)[4], v3[5], v3[1]);
  v6 = v3[5];
  v5 = v3[6];
  v8 = v3[3];
  v7 = v3[4];
  v9 = v3[1];
  v10 = v3[2];
  v11 = *v3;
  if (a2)
  {
    v12 = v3[6];
    v4(v3[3], v3[4], v3[1]);
    EnvironmentValues.subscript.setter();
    v13 = *(v10 + 8);
    v13(v7, v9);
    v13(v6, v9);
  }

  else
  {
    v14 = v3[4];
    EnvironmentValues.subscript.setter();
    (*(v10 + 8))(v6, v9);
  }

  free(v6);
  free(v7);
  free(v8);

  free(v3);
}

uint64_t one-time initialization function for defaultValue()
{
  v0 = type metadata accessor for CameraControls();
  __swift_allocate_value_buffer(v0, static EnvironmentValues.CameraControlsKey.defaultValue);
  __swift_project_value_buffer(v0, static EnvironmentValues.CameraControlsKey.defaultValue);
  return static CameraControls.none.getter();
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.CameraControlsKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CameraControls();
  v3 = __swift_project_value_buffer(v2, static EnvironmentValues.CameraControlsKey.defaultValue);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance EnvironmentValues.CameraControlsKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type CameraControls and conformance CameraControls, MEMORY[0x277CDB288]);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t static RealityViewCamera.spatialTracking.getter@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for RealityViewCamera(0);
  v3 = a1 + *(v2 + 20);
  result = static CameraControls.none.getter();
  *a1 = 0;
  *(a1 + *(v2 + 24)) = 1;
  return result;
}

uint64_t RealityViewRenderingEffects.antialiasing.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RealityViewRenderingEffects(0) + 28);
  v4 = type metadata accessor for AntialiasingMode();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RealityViewRenderingEffects.antialiasing.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RealityViewRenderingEffects(0) + 28);
  v4 = type metadata accessor for AntialiasingMode();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RealityViewRenderingEffects.dynamicRange.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for RealityViewRenderingEffects(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t RealityViewRenderingEffects.dynamicRange.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for RealityViewRenderingEffects(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

double static RealityViewPostProcessEffect.none.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t RealityViewRenderingEffects.customPostProcessing.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RealityViewRenderingEffects(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v4);

  return outlined copy of (@escaping @callee_guaranteed () -> ())?(v6);
}

__n128 RealityViewRenderingEffects.customPostProcessing.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for RealityViewRenderingEffects(0) + 36));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(*v3);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v5);
  result = *a1;
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v8;
  return result;
}

uint64_t static RealityViewPostProcessEffect.effect<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RealityViewPostProcessEffect.Storage();
  (*(v6 + 16))(v9, a1, a2);
  v10 = RealityViewPostProcessEffect.Storage.__allocating_init(_:)(v9);
  *a3 = partial apply for implicit closure #2 in implicit closure #1 in static RealityViewPostProcessEffect.effect<A>(_:);
  a3[1] = v10;
  a3[2] = partial apply for implicit closure #4 in implicit closure #3 in static RealityViewPostProcessEffect.effect<A>(_:);
  a3[3] = v10;
}

uint64_t RealityViewPostProcessEffect.Storage.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 80) - 8) + 32))(v5 + *(*v5 + 96), a1);
  return v5;
}

uint64_t RealityViewPostProcessEffect.Storage.postProcess(context:)()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  swift_beginAccess();
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  dispatch thunk of PostProcessEffect.postProcess(context:)();
  return swift_endAccess();
}

uint64_t RealityViewPostProcessEffect.Storage.prepare(for:)()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  swift_beginAccess();
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  dispatch thunk of PostProcessEffect.prepare(for:)();
  return swift_endAccess();
}

uint64_t RealityViewPostProcessEffect.Storage.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Int RealityViewRenderingEffectMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RealityViewRenderingEffectMode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](v1);
  return Hasher._finalize()();
}

uint64_t key path getter for _RealityViewCameraModel.makeTaskComplete : _RealityViewCameraModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for _RealityViewCameraModel.makeTaskComplete : _RealityViewCameraModel(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for EnvironmentValues.allowedDynamicRange : EnvironmentValues(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV12DynamicRangeVSgMd, &_s7SwiftUI5ImageV12DynamicRangeVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, &v6 - v4, &_s7SwiftUI5ImageV12DynamicRangeVSgMd, &_s7SwiftUI5ImageV12DynamicRangeVSgMR);
  return EnvironmentValues.allowedDynamicRange.setter();
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMR);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI18CoveragePointCloudVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI18CoveragePointCloudVGMR, type metadata accessor for CoveragePointCloud);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAC21CoveragePointRendererC08ResourceK033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAC21CoveragePointRendererC08ResourceK033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GGMR, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMd, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAC32FullscreenCoveragePointsRendererC08ResourceK033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAC32FullscreenCoveragePointsRendererC08ResourceK033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GGMR, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMd, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI0D21ViewCameraConvertibleVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI0D21ViewCameraConvertibleVGMR, type metadata accessor for RealityViewCameraConvertible);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

uint64_t _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentValues.CameraControlsKey and conformance EnvironmentValues.CameraControlsKey()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.CameraControlsKey and conformance EnvironmentValues.CameraControlsKey;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.CameraControlsKey and conformance EnvironmentValues.CameraControlsKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.CameraControlsKey and conformance EnvironmentValues.CameraControlsKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RealityViewRenderingEffectMode and conformance RealityViewRenderingEffectMode()
{
  result = lazy protocol witness table cache variable for type RealityViewRenderingEffectMode and conformance RealityViewRenderingEffectMode;
  if (!lazy protocol witness table cache variable for type RealityViewRenderingEffectMode and conformance RealityViewRenderingEffectMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityViewRenderingEffectMode and conformance RealityViewRenderingEffectMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RealityViewDynamicRange and conformance RealityViewDynamicRange()
{
  result = lazy protocol witness table cache variable for type RealityViewDynamicRange and conformance RealityViewDynamicRange;
  if (!lazy protocol witness table cache variable for type RealityViewDynamicRange and conformance RealityViewDynamicRange)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityViewDynamicRange and conformance RealityViewDynamicRange);
  }

  return result;
}

uint64_t keypath_set_22Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

void type metadata completion function for RealityViewCameraContent.Body(uint64_t a1)
{
  type metadata accessor for ()();
  if (v2 <= 0x3F)
  {
    type metadata accessor for (())?(319, &lazy cache variable for type metadata for (())?, &_syycMd, &_syycMR, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        type metadata accessor for StateObject<_RealityViewCameraModel>();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for RealityViewCameraContent.Body(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 32) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for RealityViewCameraContent.Body(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 32) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if ((v7 & 0x80000000) != 0)
      {
        v17 = *(v6 + 56);
        v18 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;

        v17(v18);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        *(a1 + 1) = 0;
      }

      else
      {
        *a1 = a2 - 1;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

void type metadata accessor for StateObject<_RealityViewCameraModel>()
{
  if (!lazy cache variable for type metadata for StateObject<_RealityViewCameraModel>)
  {
    type metadata accessor for _RealityViewCameraModel(255);
    _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type _RealityViewCameraModel and conformance _RealityViewCameraModel, type metadata accessor for _RealityViewCameraModel);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StateObject<_RealityViewCameraModel>);
    }
  }
}

void type metadata completion function for _RealityViewCameraModel()
{
  v0 = type metadata accessor for RealityViewCameraContent(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    _s7Combine9PublishedVySbGMaTm_0(319, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata completion function for RealityViewCameraContent()
{
  type metadata accessor for ARView();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AnchorEntity();
    if (v1 <= 0x3F)
    {
      type metadata accessor for GeometryProxy?(319, &lazy cache variable for type metadata for GeometryProxy?, MEMORY[0x277CDF6E0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for RealityViewCameraContent.ContentStorage(319);
        if (v3 <= 0x3F)
        {
          _s7Combine9PublishedVySbGMaTm_0(319, &lazy cache variable for type metadata for Transaction?, MEMORY[0x277CDF4C0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for RealityViewCamera(319);
            if (v5 <= 0x3F)
            {
              type metadata accessor for GeometryProxy?(319, &lazy cache variable for type metadata for Entity?, MEMORY[0x277CDB1C8], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                type metadata accessor for RealityViewRenderingEffects(319);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for RealityViewCameraController(319);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void type metadata completion function for RealityViewCameraContent.ContentStorage()
{
  type metadata accessor for GeometryProxy?(319, &lazy cache variable for type metadata for SpatialTrackingSession.UnavailableCapabilities?, MEMORY[0x277CDB4E0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for RealityViewCamera()
{
  type metadata accessor for GeometryProxy?(319, &lazy cache variable for type metadata for Entity?, MEMORY[0x277CDB1C8], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CameraControls();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for RealityViewRenderingEffects()
{
  result = type metadata accessor for AntialiasingMode();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RealityViewPostProcessEffect(uint64_t *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RealityViewPostProcessEffect(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata completion function for RealityViewPostProcessEffect.Storage(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata completion function for _RealityViewImpl(uint64_t a1)
{
  type metadata accessor for ()();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      type metadata accessor for GeometryProxy();
      if (v5 <= 0x3F)
      {
        type metadata accessor for GeometryProxy?(319, &lazy cache variable for type metadata for Environment<CameraControls>, MEMORY[0x277CDB288], MEMORY[0x277CDF468]);
        if (v6 <= 0x3F)
        {
          _s7Combine9PublishedVySbGMaTm_0(319, &lazy cache variable for type metadata for Environment<CameraControlsPublisher>, &type metadata for CameraControlsPublisher, MEMORY[0x277CDF468]);
          if (v7 <= 0x3F)
          {
            type metadata accessor for (())?(319, &lazy cache variable for type metadata for Environment<UIScene?>, &_sSo7UISceneCSgMd, &_sSo7UISceneCSgMR, MEMORY[0x277CDF468]);
            if (v8 <= 0x3F)
            {
              type metadata accessor for (())?(319, &lazy cache variable for type metadata for Environment<Image.DynamicRange?>, &_s7SwiftUI5ImageV12DynamicRangeVSgMd, &_s7SwiftUI5ImageV12DynamicRangeVSgMR, MEMORY[0x277CDF468]);
              if (v9 <= 0x3F)
              {
                type metadata accessor for (())?(319, &lazy cache variable for type metadata for Environment<AnyShapeStyle?>, &_s7SwiftUI13AnyShapeStyleVSgMd, &_s7SwiftUI13AnyShapeStyleVSgMR, MEMORY[0x277CDF468]);
                if (v10 <= 0x3F)
                {
                  _s7Combine9PublishedVySbGMaTm_0(319, &lazy cache variable for type metadata for Environment<RealityViewLayoutOption>, &type metadata for RealityViewLayoutOption, MEMORY[0x277CDF468]);
                  if (v11 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

uint64_t getEnumTagSinglePayload for _RealityViewImpl(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v32 = type metadata accessor for GeometryProxy();
  v6 = *(v32 - 8);
  v33 = v5;
  v31 = *(v6 + 84);
  if (v5 <= v31)
  {
    v5 = *(v6 + 84);
  }

  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(type metadata accessor for CameraControls() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(type metadata accessor for Image.DynamicRange() - 8);
  v11 = *(v10 + 64);
  v12 = *(v4 + 80);
  v13 = *(v4 + 64);
  v14 = *(v6 + 80);
  if (!*(v10 + 84))
  {
    ++v11;
  }

  if (v11 <= 8)
  {
    v11 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_40;
  }

  v15 = *(v8 + 80) & 0xF8 | 7;
  v16 = *(v10 + 80) & 0xF8 | 7;
  v17 = ((v11 + ((v16 + ((v9 + ((v15 + ((*(v6 + 64) + ((v13 + v14 + ((v12 + 32) & ~v12)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15) + 24) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v16) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v17 <= 3)
  {
    v18 = ((a2 - v7 + 255) >> 8) + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *&a1[v17];
      if (!*&a1[v17])
      {
        goto LABEL_40;
      }
    }

    else
    {
      v21 = *&a1[v17];
      if (!v21)
      {
        goto LABEL_40;
      }
    }

LABEL_33:
    v23 = v17 > 3;
    if (v17 <= 3)
    {
      v24 = (v21 - 1) << (8 * v17);
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v30 = *a1;
    }

    else
    {
      v30 = *a1;
    }

    return v7 + (v30 | v24) + 1;
  }

  if (v20)
  {
    v21 = a1[v17];
    if (a1[v17])
    {
      goto LABEL_33;
    }
  }

LABEL_40:
  if ((v5 & 0x80000000) != 0)
  {
    v26 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12;
    if (v33 == v7)
    {
      v27 = *(v4 + 48);

      return v27(v26);
    }

    else
    {
      v28 = *(v6 + 48);
      v29 = (v26 + v13 + v14) & ~v14;

      return v28(v29, v31, v32);
    }
  }

  else
  {
    v25 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v25) = -1;
    }

    return (v25 + 1);
  }
}

void storeEnumTagSinglePayload for _RealityViewImpl(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v29 = v5;
  v6 = *(v5 + 84);
  v7 = *(type metadata accessor for GeometryProxy() - 8);
  v28 = v6;
  if (v6 <= *(v7 + 84))
  {
    v8 = *(v7 + 84);
  }

  else
  {
    v8 = v6;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(type metadata accessor for CameraControls() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(type metadata accessor for Image.DynamicRange() - 8);
  v13 = *(v12 + 64);
  v14 = *(v5 + 80);
  v15 = *(v5 + 64);
  v16 = *(v7 + 80);
  v17 = *(v10 + 80) & 0xF8 | 7;
  v18 = *(v12 + 80) & 0xF8 | 7;
  v19 = (v18 + ((v11 + ((v17 + ((*(v7 + 64) + ((v15 + v16 + ((v14 + 32) & ~v14)) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v17) + 24) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v18;
  if (!*(v12 + 84))
  {
    ++v13;
  }

  if (v13 <= 8)
  {
    v13 = 8;
  }

  v20 = ((v13 + v19 + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v9 >= a3)
  {
    v23 = 0;
  }

  else
  {
    if (v20 <= 3)
    {
      v21 = ((a3 - v9 + 255) >> 8) + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }
  }

  if (v9 >= a2)
  {
    if (v23 > 1)
    {
      if (v23 != 2)
      {
        *(a1 + v20) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_45;
      }

      *(a1 + v20) = 0;
    }

    else if (v23)
    {
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

LABEL_45:
      if ((v8 & 0x80000000) != 0)
      {
        v26 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v14 + 16) & ~v14;
        if (v28 == v9)
        {
          v27 = *(v29 + 56);
        }

        else
        {
          v27 = *(v7 + 56);
          v26 = (v26 + v15 + v16) & ~v16;
        }

        v27(v26);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        a1[1] = 0;
      }

      else
      {
        *a1 = a2 - 1;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  v24 = ~v9 + a2;
  bzero(a1, v20);
  if (v20 <= 3)
  {
    v25 = (v24 >> 8) + 1;
  }

  else
  {
    v25 = 1;
  }

  if (v20 <= 3)
  {
    *a1 = v24;
    if (v23 > 1)
    {
LABEL_33:
      if (v23 == 2)
      {
        *(a1 + v20) = v25;
      }

      else
      {
        *(a1 + v20) = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v23 > 1)
    {
      goto LABEL_33;
    }
  }

  if (v23)
  {
    *(a1 + v20) = v25;
  }
}

void type metadata accessor for GeometryProxy?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (())?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _s7Combine9PublishedVySbGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void outlined consume of Environment<UIScene?>.Content(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t outlined consume of Environment<RealityViewLayoutOption>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t partial apply for closure #2 in _RealityViewImpl.body.getter()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(type metadata accessor for _RealityViewImpl() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[6];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = ObjectCaptureSession.Updates.Iterator.next();

  return closure #2 in _RealityViewImpl.body.getter(v6, v7, v8, v0 + v5, v2, v3);
}

id partial apply for closure #1 in closure #1 in _RealityViewImpl.body.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(type metadata accessor for _RealityViewImpl() - 8);
  v4 = specialized closure #1 in closure #1 in _RealityViewImpl.body.getter(v0[4], v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80)));

  return v4;
}

uint64_t partial apply for closure #2 in closure #1 in _RealityViewImpl.body.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for _RealityViewImpl() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #2 in closure #1 in _RealityViewImpl.body.getter(a1, a2, v2 + v8, v9, v5, v6);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.rootEntityGestureResponderBackDeployable()>>.0, _InsettableBackgroundShapeModifier<BackgroundStyle, Rectangle>>, _EnvironmentBackgroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.rootEntityGestureResponderBackDeployable()>>.0, _InsettableBackgroundShapeModifier<BackgroundStyle, Rectangle>>, _EnvironmentBackgroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.rootEntityGestureResponderBackDeployable()>>.0, _InsettableBackgroundShapeModifier<BackgroundStyle, Rectangle>>, _EnvironmentBackgroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGAA012_EnvironmentqtS0VyAA03AnyrT0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGAA012_EnvironmentqtS0VyAA03AnyrT0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.rootEntityGestureResponderBackDeployable()>>.0, _InsettableBackgroundShapeModifier<BackgroundStyle, Rectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _EnvironmentBackgroundStyleModifier<AnyShapeStyle> and conformance _EnvironmentBackgroundStyleModifier<A>, &_s7SwiftUI35_EnvironmentBackgroundStyleModifierVyAA08AnyShapeE0VGMd, &_s7SwiftUI35_EnvironmentBackgroundStyleModifierVyAA08AnyShapeE0VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.rootEntityGestureResponderBackDeployable()>>.0, _InsettableBackgroundShapeModifier<BackgroundStyle, Rectangle>>, _EnvironmentBackgroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.rootEntityGestureResponderBackDeployable()>>.0, _InsettableBackgroundShapeModifier<BackgroundStyle, Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.rootEntityGestureResponderBackDeployable()>>.0, _InsettableBackgroundShapeModifier<BackgroundStyle, Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.rootEntityGestureResponderBackDeployable()>>.0, _InsettableBackgroundShapeModifier<BackgroundStyle, Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP012_RealityKit_aB0E40rootEntityGestureResponderBackDeployableQryFQOyAF0E7AdaptorVy0fG06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA0Q5StyleVAA9RectangleVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19_RealityKit_SwiftUI11ViewAdaptorVy0aB06ARViewCGMd, &_s19_RealityKit_SwiftUI11ViewAdaptorVy0aB06ARViewCGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type ViewAdaptor<ARView> and conformance ViewAdaptor<A>, &_s19_RealityKit_SwiftUI11ViewAdaptorVy0aB06ARViewCGMd, &_s19_RealityKit_SwiftUI11ViewAdaptorVy0aB06ARViewCGMR);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<BackgroundStyle, Rectangle> and conformance _InsettableBackgroundShapeModifier<A, B>, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA0D5StyleVAA9RectangleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA0D5StyleVAA9RectangleVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.rootEntityGestureResponderBackDeployable()>>.0, _InsettableBackgroundShapeModifier<BackgroundStyle, Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroy_138Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for _RealityViewImpl();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = v0 + v5;
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v5 + 24);

  (*(*(v2 - 8) + 8))(v0 + v5 + v3[10], v2);
  v10 = v3[11];
  v11 = type metadata accessor for GeometryProxy();
  (*(*(v11 - 8) + 8))(v0 + v5 + v10, v11);
  v12 = v3[12];
  swift_weakDestroy();
  v13 = v3[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for CameraControls();
    (*(*(v14 - 8) + 8))(v7 + v13, v14);
  }

  else
  {
    v15 = *(v7 + v13);
  }

  protocol witness for System.init(scene:) in conformance _RealityViewCameraControllerSystem(*(v7 + v3[14]), *(v7 + v3[14] + 8));
  outlined consume of Environment<UIScene?>.Content(*(v7 + v3[15]), *(v7 + v3[15] + 8));
  v16 = v3[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = type metadata accessor for Image.DynamicRange();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v7 + v16, 1, v17))
    {
      (*(v18 + 8))(v7 + v16, v17);
    }
  }

  else
  {
    v19 = *(v7 + v16);
  }

  v20 = (v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  protocol witness for System.init(scene:) in conformance _RealityViewCameraControllerSystem(*(v7 + v3[17]), *(v7 + v3[17] + 8));
  outlined consume of Environment<RealityViewLayoutOption>.Content(*(v7 + v3[18]), *(v7 + v3[18] + 8));
  v21 = *(v0 + v20);

  return MEMORY[0x2821FE8E8](v0, v20 + 8, v4 | 7);
}

uint64_t partial apply for closure #4 in closure #1 in _RealityViewImpl.body.getter(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for _RealityViewImpl() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #4 in closure #1 in _RealityViewImpl.body.getter(a1, v1 + v6, v7);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAC21FreeformCloudRendererC08ResourceK033_3779DB7E999291C1C0BBA21A79DFAE44LLV_GGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAC21FreeformCloudRendererC08ResourceK033_3779DB7E999291C1C0BBA21A79DFAE44LLV_GGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21FreeformCloudRendererC08ResourceH033_3779DB7E999291C1C0BBA21A79DFAE44LLV_GMd, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21FreeformCloudRendererC08ResourceH033_3779DB7E999291C1C0BBA21A79DFAE44LLV_GMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy7SwiftUI17EntityWithGesture_pGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI17EntityWithGesture_pGMR, &_s7SwiftUI17EntityWithGesture_pMd, &_s7SwiftUI17EntityWithGesture_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCyyyScMYccGMd, &_ss23_ContiguousArrayStorageCyyyScMYccGMR, &_syycMd, &_syycMR);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}