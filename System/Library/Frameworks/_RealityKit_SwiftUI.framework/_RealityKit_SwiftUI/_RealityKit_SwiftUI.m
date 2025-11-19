uint64_t sub_23B826280(uint64_t *a1)
{
  v1 = *a1;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_23B8262E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
    type metadata accessor for ModifiedContent();
    lazy protocol witness table accessor for type _TaskModifier2 and conformance _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
    type metadata accessor for ModifiedContent();
    lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier(&lazy protocol witness table cache variable for type _TaskModifier and conformance _TaskModifier, MEMORY[0x277CDD8B0]);
  }

  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for Segment(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for PlatterAnimVar(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for TubeGenerator.CurvePoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TubeGenerator.CurvePoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance DeviceMotionEstimator.ActiveComponents@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _sSo18CHHapticPatternKeyaSYSCSY8rawValue03RawE0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_23B8264FC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B826534@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type EnvironmentValues.RealityViewLayoutOptionKey and conformance EnvironmentValues.RealityViewLayoutOptionKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_23B826584(char *a1)
{
  v2 = *a1;
  lazy protocol witness table accessor for type EnvironmentValues.RealityViewLayoutOptionKey and conformance EnvironmentValues.RealityViewLayoutOptionKey();
  return EnvironmentValues.subscript.setter();
}

uint64_t sub_23B8265D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy012_RealityKit_aB00G16ViewLayoutOptionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy012_RealityKit_aB00G16ViewLayoutOptionVGMR);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<RealityViewLayoutOption> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable();
}

uint64_t sub_23B826654@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for Entity();
  result = HasHierarchy.parent.getter();
  *a2 = result;
  return result;
}

uint64_t sub_23B826690()
{
  outlined consume of Path.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

double sub_23B8266D0@<D0>(int8x16_t *a1@<X8>)
{
  MeshResource.ShapeExtrusionOptions.chamferProfile.getter(v4);
  result = *v4[0].i64;
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  a1[2].i8[0] = v5;
  return result;
}

uint64_t sub_23B826744()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for ObjectCaptureView() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64) + v5;
  v7 = v0 + v5;
  v8 = *(v0 + v5);

  (*(*(v2 - 8) + 8))(v7 + v3[11], v2);

  return MEMORY[0x2821FE8E8](v0, v6 + 1, v4 | 7);
}

uint64_t sub_23B826830(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for InternalCaptureView();

  return swift_getWitnessTable();
}

uint64_t sub_23B826880@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_23B8268AC(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_23B8268E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ARViewContainer();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMd, &_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMR);
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  return swift_getWitnessTable();
}

void sub_23B826A1C(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  outlined copy of ObjectCaptureSession.CaptureState(v3);
  ObjectCaptureSession.state.setter(&v3);
}

unsigned __int8 *sub_23B826A78(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return ObjectCaptureSession.cameraTracking.setter(&v4);
}

void sub_23B826BA4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  ObjectCaptureSession.shouldPlayHaptics.setter();
}

uint64_t sub_23B826C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23B826D1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_23B826DFC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B826E34()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B826E6C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B826EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23B826FC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_23B8270F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVy17RealityFoundation14CameraControlsVGMd, &_s7SwiftUI11EnvironmentVy17RealityFoundation14CameraControlsVGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23B8271C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVy17RealityFoundation14CameraControlsVGMd, &_s7SwiftUI11EnvironmentVy17RealityFoundation14CameraControlsVGMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_23B82728C@<X0>(void *a1@<X8>)
{
  lazy protocol witness table accessor for type CameraControlsPublisher.Key and conformance CameraControlsPublisher.Key();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_23B8272E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB0014CameraControlsF0VGAA022_EnvironmentKeyWritingF0VyAF0iJ9PublisherVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB0014CameraControlsF0VGAA022_EnvironmentKeyWritingF0VyAF0iJ9PublisherVGGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19SimultaneousGestureVyAA06_EndedD0VyAA08_ChangedD0VyAA07MagnifyD0VGGAEyAGyAA04DragD0VGGGMd, &_s7SwiftUI19SimultaneousGestureVyAA06_EndedD0VyAA08_ChangedD0VyAA07MagnifyD0VGGAEyAGyAA04DragD0VGGGMR);
  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<CameraControlsModifier>, _EnvironmentKeyWritingModifier<CameraControlsPublisher>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SimultaneousGesture<_EndedGesture<_ChangedGesture<MagnifyGesture>>, _EndedGesture<_ChangedGesture<DragGesture>>> and conformance SimultaneousGesture<A, B>, &_s7SwiftUI19SimultaneousGestureVyAA06_EndedD0VyAA08_ChangedD0VyAA07MagnifyD0VGGAEyAGyAA04DragD0VGGGMd, &_s7SwiftUI19SimultaneousGestureVyAA06_EndedD0VyAA08_ChangedD0VyAA07MagnifyD0VGGAEyAGyAA04DragD0VGGGMR);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23B8273B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B82740C()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _s19_RealityKit_SwiftUI28RaycastMeshTrackingComponentV17ReticleDescriptorV10CodingKeys09_91E6A1C2M22C8457E7BFC2D745D2CAA14LLOs0K3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized RaycastMeshTrackingComponent.ReticleDescriptor.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TurnTableCameraControl.SphericalCoordinates(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TurnTableCameraControl.SphericalCoordinates(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 28) = v3;
  return result;
}

uint64_t sub_23B8275E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23B827638()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B827678()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B8276B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return Model3DAsset.animationPlaybackController.setter(v4);
}

uint64_t sub_23B82773C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23B827844(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23B827958@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = Entity.gestureResponder.getter();
  *a2 = result;
  return result;
}

uint64_t sub_23B827984(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = swift_unknownObjectRetain();
  specialized Entity.gestureResponder.setter(v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_23B8279CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23B827A88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B827B44(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_23B827C0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B827CBC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B827D18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataModel.Error(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 9)
  {
    return v5 - 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B827D84(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for DataModel.Error(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_23B827EB0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B827EF0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B827F28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B82825C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B82829C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B8282D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(*(a3 + 24) + 8);
  v8 = type metadata accessor for ComponentAnimatableData();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(v9 + 48);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, v10);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + *(a3 + 40));
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for ImplicitAnimationState.State();
    v16 = *(v15 - 8);
    if (*(v16 + 84) == a2)
    {
      v10 = v15;
      v11 = *(v16 + 48);
      v12 = a1 + *(a3 + 48);
      goto LABEL_3;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16AnimationContextVySfGMd, &_s7SwiftUI16AnimationContextVySfGMR);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + *(a3 + 52);

    return v18(v19, a2, v17);
  }
}

uint64_t sub_23B828478(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(*(a4 + 24) + 8);
  result = type metadata accessor for ComponentAnimatableData();
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = result;
    v13 = *(v11 + 56);
    v14 = a1;
LABEL_3:

    return v13(v14, a2, a2, v12);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
    return result;
  }

  v15 = type metadata accessor for ImplicitAnimationState.State();
  v16 = *(v15 - 8);
  if (*(v16 + 84) == a3)
  {
    v12 = v15;
    v13 = *(v16 + 56);
    v14 = a1 + *(a4 + 48);
    goto LABEL_3;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16AnimationContextVySfGMd, &_s7SwiftUI16AnimationContextVySfGMR);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + *(a4 + 52);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_23B82861C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B828688(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_23B82870C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B828758()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_23B828798(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_23B828860(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B828910()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B82894C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23B828A08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B828B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + a3;
  v4 = *(a2 + a3 - 16);
  v5 = *(v3 - 8);
  return Entity.Observable.Components.subscript.getter();
}

unint64_t sub_23B828B4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(type metadata accessor for HashableMetatype() - 8);
  result = ((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v5 = *(v3 + 80) & 0xF8 | 7;
  return result;
}

uint64_t sub_23B828BC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 + a2;
  v4 = *(a1 + a2 - 16);
  v5 = *(v3 - 8);
  v6 = type metadata accessor for HashableMetatype();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

__n128 sub_23B828C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + a3 - 16);
  v6 = *(a1 + a3 - 8);
  v7 = type metadata accessor for HashableMetatype();
  v8 = *(v7 - 8) + 16;
  (*v8)(a2, a1, v7);
  v9 = (*(v8 + 48) + 7) & 0xFFFFFFFFFFFFFFF8;
  result = *(a1 + v9);
  *(a2 + v9) = result;
  return result;
}

__n128 sub_23B828CBC(__n128 *a1, uint64_t a2)
{
  v4 = a1->n128_u64[0];
  v5 = a1->n128_i64[1];
  v6 = type metadata accessor for HashableMetatype();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  (*(v7 + 32))(a2, a1->n128_u64 + ((*(v7 + 80) + 16) & ~*(v7 + 80)), v6);
  result = *a1;
  *(a2 + ((v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = *a1;
  return result;
}

uint64_t sub_23B828D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + a3;
  v4 = *(a2 + a3 - 16);
  v5 = *(v3 - 8);
  return Entity.Observable.Components.subscript.getter();
}

unint64_t sub_23B828D80(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1[1] + 8);
  v3 = *(type metadata accessor for HashableMetatype() - 8);
  result = ((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v5 = *(v3 + 80) & 0xF8 | 7;
  return result;
}

uint64_t sub_23B828DFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 + a2;
  v4 = *(a1 + a2 - 16);
  v5 = *(*(v3 - 8) + 8);
  v6 = type metadata accessor for HashableMetatype();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

__n128 sub_23B828E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + a3 - 16);
  v6 = *(*(a1 + a3 - 8) + 8);
  v7 = type metadata accessor for HashableMetatype();
  v8 = *(v7 - 8) + 16;
  (*v8)(a2, a1, v7);
  v9 = (*(v8 + 48) + 7) & 0xFFFFFFFFFFFFFFF8;
  result = *(a1 + v9);
  *(a2 + v9) = result;
  return result;
}

__n128 sub_23B828EFC(__n128 *a1, uint64_t a2)
{
  v4 = a1->n128_u64[0];
  v5 = *(a1->n128_u64[1] + 8);
  v6 = type metadata accessor for HashableMetatype();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  (*(v7 + 32))(a2, a1->n128_u64 + ((*(v7 + 80) + 16) & ~*(v7 + 80)), v6);
  result = *a1;
  *(a2 + ((v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = *a1;
  return result;
}

uint64_t sub_23B828F90()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for RealityViewCameraContent.Body();
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v7 = v0 + v5;
  v8 = *(v0 + v5 + 8);

  if (*(v0 + v5 + 16))
  {
    v9 = *(v7 + 24);
  }

  (*(*(v2 - 8) + 8))(v7 + *(v3 + 40), v2);
  v10 = (v7 + *(v3 + 44));
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  outlined consume of StateObject<_RealityViewCameraModel>.Storage();

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_23B82918C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for RealityViewCameraContent(0) + 44));
}

uint64_t sub_23B8291D4(uint64_t *a1)
{
  v1 = *a1;

  return RealityViewCameraContent.cameraTarget.setter(v2);
}

uint64_t sub_23B829200@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for RealityViewCameraContent(0) + 48));
}

uint64_t sub_23B82924C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = dispatch thunk of ARView.audioListener.getter();
  *a2 = result;
  return result;
}

uint64_t sub_23B829410@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = ARView.physicsOrigin.getter();
  *a2 = result;
  return result;
}

uint64_t sub_23B82951C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for RealityViewCameraContent(0);
  *a2 = *(*(a1 + *(result + 56)) + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_displayTargetCube);
  return result;
}

uint64_t sub_23B829564(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for RealityViewCameraContent(0);
  *(*(a2 + *(result + 56)) + OBJC_IVAR____TtC19_RealityKit_SwiftUI27RealityViewCameraController_displayTargetCube) = v3;
  return result;
}

uint64_t sub_23B8295A8(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = type metadata accessor for RealityViewCamera(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = type metadata accessor for RealityViewRenderingEffects(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[13]];

  return v15(v16, a2, v14);
}

char *sub_23B829720(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for RealityViewCamera(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = type metadata accessor for RealityViewRenderingEffects(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[13]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23B829898(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for CameraControls();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_23B829950(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for CameraControls();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B8299F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AntialiasingMode();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_23B829AC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AntialiasingMode();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So9MTLDevice_pIegg_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23B829B94(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _RealityViewImpl();
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23B829C58(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for CameraControlsModifier(255);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy17RealityFoundation14CameraControlsVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy17RealityFoundation14CameraControlsVGMR);
  type metadata accessor for ModifiedContent();
  _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type CameraControlsModifier and conformance CameraControlsModifier, type metadata accessor for CameraControlsModifier);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CameraControls> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy17RealityFoundation14CameraControlsVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy17RealityFoundation14CameraControlsVGMR);
  return swift_getWitnessTable();
}

uint64_t sub_23B829D78()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = type metadata accessor for _RealityViewImpl();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 6);

  v9 = &v0[v5];
  v10 = *&v0[v5 + 8];

  v11 = *&v0[v5 + 24];

  (*(*(v2 - 8) + 8))(&v0[v5 + v3[10]], v2);
  v12 = v3[11];
  v13 = type metadata accessor for GeometryProxy();
  (*(*(v13 - 8) + 8))(&v0[v5 + v12], v13);
  v14 = v3[12];
  swift_weakDestroy();
  v15 = v3[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for CameraControls();
    (*(*(v16 - 8) + 8))(&v9[v15], v16);
  }

  else
  {
    v17 = *&v9[v15];
  }

  protocol witness for System.init(scene:) in conformance _RealityViewCameraControllerSystem(*&v9[v3[14]], v9[v3[14] + 8]);
  outlined consume of Environment<UIScene?>.Content(*&v9[v3[15]], v9[v3[15] + 8]);
  v18 = v3[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = type metadata accessor for Image.DynamicRange();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(&v9[v18], 1, v19))
    {
      (*(v20 + 8))(&v9[v18], v19);
    }
  }

  else
  {
    v21 = *&v9[v18];
  }

  protocol witness for System.init(scene:) in conformance _RealityViewCameraControllerSystem(*&v9[v3[17]], v9[v3[17] + 8]);
  outlined consume of Environment<RealityViewLayoutOption>.Content(*&v9[v3[18]], v9[v3[18] + 8]);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_23B82A054()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = type metadata accessor for _RealityViewImpl();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = *(v0 + 4);

  v8 = &v0[v5];
  v9 = *&v0[v5 + 8];

  v10 = *&v0[v5 + 24];

  (*(*(v2 - 8) + 8))(&v0[v5 + v3[10]], v2);
  v11 = v3[11];
  v12 = type metadata accessor for GeometryProxy();
  (*(*(v12 - 8) + 8))(&v0[v5 + v11], v12);
  v13 = v3[12];
  swift_weakDestroy();
  v14 = v3[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOy17RealityFoundation14CameraControlsV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for CameraControls();
    (*(*(v15 - 8) + 8))(&v8[v14], v15);
  }

  else
  {
    v16 = *&v8[v14];
  }

  protocol witness for System.init(scene:) in conformance _RealityViewCameraControllerSystem(*&v8[v3[14]], v8[v3[14] + 8]);
  outlined consume of Environment<UIScene?>.Content(*&v8[v3[15]], v8[v3[15] + 8]);
  v17 = v3[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA5ImageV12DynamicRangeVSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = type metadata accessor for Image.DynamicRange();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(&v8[v17], 1, v18))
    {
      (*(v19 + 8))(&v8[v17], v18);
    }
  }

  else
  {
    v20 = *&v8[v17];
  }

  protocol witness for System.init(scene:) in conformance _RealityViewCameraControllerSystem(*&v8[v3[17]], v8[v3[17] + 8]);
  outlined consume of Environment<RealityViewLayoutOption>.Content(*&v8[v3[18]], v8[v3[18] + 8]);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_23B82A32C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B82A368()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B82A3A8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.sceneSession.getter();
  *a1 = result;
  return result;
}

id sub_23B82A404@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 scene];
  *a2 = result;
  return result;
}

uint64_t sub_23B82A440@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x23EEAEB10]();
  *a1 = result;
  return result;
}

uint64_t sub_23B82A46C(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.backgroundStyle.setter();
}

uint64_t sub_23B82A4C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GeometryProxy();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23B82A574(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GeometryProxy();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B82A618(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23B82A690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23B82A798(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMd, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMR);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SubscriptionView<CameraControlsPublisher, ModifiedContent<<<opaque return type of View.onContinuousHover<A>(coordinateSpace:perform:)>>.0, _PreferenceWritingModifier<RealityViewCameraConvertibleKey>>> and conformance SubscriptionView<A, B>, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMd, &_s7SwiftUI16SubscriptionViewVy012_RealityKit_aB023CameraControlsPublisherVAA15ModifiedContentVyAA0D0PAAE17onContinuousHover15coordinateSpace7performQrqd___yAA0N5PhaseOctAA010CoordinateP8ProtocolRd__lFQOyAHyAHyAjDE40rootEntityGestureResponderBackDeployableQryFQOyAD0D7AdaptorVy0eF06ARViewCG_Qo_AA34_InsettableBackgroundShapeModifierVyAA15BackgroundStyleVAA9RectangleVGGAA35_EnvironmentBackgroundStyleModifierVyAA13AnyShapeStyleVGG_AA05LocalsP0VQo_AA26_PreferenceWritingModifierVyAD0edG14ConvertibleKeyVGGGMR);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for Optional();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_23B82A984()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B82A9DC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B82AA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Model3DLocation();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23B82AAD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Model3DLocation();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23B82AB94(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for _ConditionalContent();
  v5 = *(a1 + 1);
  return swift_getWitnessTable();
}

uint64_t sub_23B82AC2C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  type metadata accessor for ARViewContainer.ARViewContainer();
  type metadata accessor for UUID();
  swift_getWitnessTable();
  _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  type metadata accessor for IDView();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ScenePhase();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, MEMORY[0x277CDD6C8]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMR);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23B82AF24()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B82AF5C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_23B82AF94()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_23B82AFCC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B82B020(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for BottomCenterView();
  type metadata accessor for TopCenterView();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for LeftCenterView();
  type metadata accessor for RightCenterView();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23B82B2A4(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();

  return swift_getWitnessTable();
}

uint64_t sub_23B82B3C0(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();

  return swift_getWitnessTable();
}

uint64_t sub_23B82B4DC(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();

  return swift_getWitnessTable();
}

uint64_t sub_23B82B5F8(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();

  return swift_getWitnessTable();
}

uint64_t sub_23B82B724(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for TargetingEntityGesture();

  return swift_getWitnessTable();
}

__n128 sub_23B82B7E8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_23B82B7F4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  TargetingEntityGesture.EntityTargetState.defaultPlane.getter(v6);
  v4 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = v7;
  result = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_23B82B840(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v2;
  v7 = *(a1 + 64);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v4 = *a2;
  return TargetingEntityGesture.EntityTargetState.defaultPlane.setter(v6);
}

uint64_t sub_23B82B894@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = TargetingEntityGesture.EntityTargetState.view.getter();
  *a2 = result;
  return result;
}

void sub_23B82B8C0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  TargetingEntityGesture.EntityTargetState.view.setter(v2);
}

uint64_t sub_23B82B8FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = TargetingEntityGesture.EntityTargetState.entity.getter();
  *a2 = result;
  return result;
}

uint64_t sub_23B82B928(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return TargetingEntityGesture.EntityTargetState.entity.setter();
}

uint64_t sub_23B82B960(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_getAssociatedTypeWitness();
  type metadata accessor for EntityTargetValue();
  type metadata accessor for AnyGesture();

  return swift_getWitnessTable();
}

uint64_t _s19_RealityKit_SwiftUI11ViewAdaptorVMi_0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23B82BA28(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for ViewAdaptor.Representation();

  return swift_getWitnessTable();
}

uint64_t storeEnumTagSinglePayload for CircleCompletionAnimationData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for MTLClearColor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ObjectCapturePoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for BinRegionsIndexMap(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BinRegionsIndexMap(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of PlatterRenderer??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FreeformScanModeManager.Descriptor(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for FreeformScanModeManager.Descriptor(uint64_t result, int a2, int a3)
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

uint64_t outlined copy of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined copy of PlatterRenderer??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TaskModifier2 and conformance _TaskModifier2()
{
  result = lazy protocol witness table cache variable for type _TaskModifier2 and conformance _TaskModifier2;
  if (!lazy protocol witness table cache variable for type _TaskModifier2 and conformance _TaskModifier2)
  {
    type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TaskModifier2 and conformance _TaskModifier2);
  }

  return result;
}

uint64_t _s7SwiftUI4ViewPAAE4task4name8priority4file4line6actionQrSSSg_ScPSSSiyyYaYAcntF@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v36 = a4;
  v37 = a5;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v38 = a7;
    v39 = a2;
    v40 = a6;
    v41 = a8;
    v42 = a9;
    v43 = a10;
    v17 = type metadata accessor for _TaskModifier2();
    v18 = *(v17 - 8);
    v19 = *(v18 + 64);
    MEMORY[0x28223BE20](v17);
    v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v45[0] = 0;
      v45[1] = 0xE000000000000000;
      v35 = v10;
      _StringGuts.grow(_:)(17);

      strcpy(v45, "View.task @ ");
      BYTE5(v45[1]) = 0;
      HIWORD(v45[1]) = -5120;
      MEMORY[0x23EEAF590](a3, v36);
      MEMORY[0x23EEAF590](58, 0xE100000000000000);
      v44 = v37;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x23EEAF590](v30);
    }

    v31 = type metadata accessor for TaskPriority();
    v32 = *(*(v31 - 8) + 64);
    MEMORY[0x28223BE20](v31);
    (*(v34 + 16))(&v35 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v39);

    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    MEMORY[0x23EEAEFD0](v21, v42, v17, v43);

    return (*(v18 + 8))(v21, v17);
  }

  else
  {
    v22 = type metadata accessor for _TaskModifier();
    v23 = *(*(v22 - 8) + 64);
    v24 = MEMORY[0x28223BE20](v22);
    v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = *(v24 + 20);
    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 16))(&v26[v27], a2, v28);
    *v26 = a6;
    *(v26 + 1) = a7;
    MEMORY[0x23EEAEFD0](v26, a9, v22, a10);
    return outlined destroy of _TaskModifier(v26);
  }
}

uint64_t outlined destroy of _TaskModifier(uint64_t a1)
{
  v2 = type metadata accessor for _TaskModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy16_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
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

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance CHHapticPatternKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance CHHapticPatternKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance CHHapticPatternKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x23EEAF480](v2);

  *a1 = v3;
  return result;
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for ObjectCapturePoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance CHHapticPatternKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier(&lazy protocol witness table cache variable for type CHHapticPatternKey and conformance CHHapticPatternKey, type metadata accessor for CHHapticPatternKey);
  v3 = lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier(&lazy protocol witness table cache variable for type CHHapticPatternKey and conformance CHHapticPatternKey, type metadata accessor for CHHapticPatternKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CHHapticPatternKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x23EEAF480](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance CHHapticEventType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier(&lazy protocol witness table cache variable for type CHHapticEventType and conformance CHHapticEventType, type metadata accessor for CHHapticEventType);
  v3 = lazy protocol witness table accessor for type _TaskModifier and conformance _TaskModifier(&lazy protocol witness table cache variable for type CHHapticEventType and conformance CHHapticEventType, type metadata accessor for CHHapticEventType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CHHapticPatternKey()
{
  v1 = *v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x23EEAF5D0](v2);

  return v3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CHHapticPatternKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CHHapticPatternKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CHHapticPatternKey(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

void type metadata accessor for BinRegionsIndexMap(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

id BoundingBoxRotateManipulator.panGesture.getter()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = swift_allocObject();
    swift_weakInit();
    objc_allocWithZone(type metadata accessor for DragFromPointGestureRecognizer());

    v5 = v3;
    v6 = v0;
    v7 = DragFromPointGestureRecognizer.init(manipulator:onPan:)(v4, partial apply for closure #1 in BoundingBoxRotateManipulator.panGesture.getter, v5);
    v8 = *(v0 + 72);
    *(v6 + 72) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

uint64_t closure #1 in BoundingBoxRotateManipulator.panGesture.getter(double a1, double a2, double a3, double a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    specialized BoundingBoxRotateManipulator.duringDragGesture(startPoint:currentPoint:)(a3, a4);
  }

  return result;
}

float BoundingBoxRotateManipulator.compositeScale.getter()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(*(Strong + 240) + 48);
    v3 = *(v2 + 28);
    v4 = *(v2 + 24) * 17.5;

    if (v4 > v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }
  }

  else
  {
    v5 = 17.5;
  }

  return *(v0 + 248) * v5;
}

void BoundingBoxRotateManipulator.showFrontFaceIndicator.willset(char a1)
{
  if ((a1 & 1) == 0 && *(v1 + 256) == 1)
  {
    v2 = v1;
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
      *v6 = 0;
      _os_log_impl(&dword_23B824000, v4, v5, "Removing the front face indicator from scene.", v6, 2u);
      MEMORY[0x23EEB0B70](v6, -1, -1);
    }

    v7 = *(v2 + 32);
    type metadata accessor for Entity();
    HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
  }
}

uint64_t BoundingBoxRotateManipulator.showFrontFaceIndicator.didset(char a1)
{
  v3 = type metadata accessor for __EntityRef();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0 && *(v1 + 256) == 1)
  {
    v9 = v1;
    v10 = result;
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
      *v14 = 0;
      _os_log_impl(&dword_23B824000, v12, v13, "Adding the front face indicator to the scene.", v14, 2u);
      MEMORY[0x23EEB0B70](v14, -1, -1);
    }

    v15 = *(v9 + 16);
    v16 = *(v9 + 32);
    type metadata accessor for Entity();
    HasHierarchy.addChild(_:preservingWorldTransform:)();
    dispatch thunk of Entity.__coreEntity.getter();
    MEMORY[0x23EEAC640](&v19, MEMORY[0x277D841D8], MEMORY[0x277D841D8]);
    (*(v4 + 8))(v8, v10);
    REHierarchicalFadeComponentGetComponentType();
    v17 = REEntityGetOrAddComponentByClass();
    REHierarchicalFadeComponentSetOpacity();
    return MEMORY[0x23EEB00C0](v17);
  }

  return result;
}

uint64_t BoundingBoxRotateManipulator.attach(model:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for __EntityRef();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Scene.AnchorCollection();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v40[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakAssign();
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
    v39 = v9;
    v18 = a1;
    v19 = v2;
    v20 = v5;
    v21 = v10;
    v22 = v4;
    v23 = v17;
    *v17 = 0;
    _os_log_impl(&dword_23B824000, v15, v16, "Attaching the box rotation widget to the detection box...", v17, 2u);
    v24 = v23;
    v4 = v22;
    v10 = v21;
    v5 = v20;
    v2 = v19;
    a1 = v18;
    v9 = v39;
    MEMORY[0x23EEB0B70](v24, -1, -1);
  }

  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = v25;
    dispatch thunk of ARView.scene.getter();

    dispatch thunk of Scene.anchors.getter();

    lazy protocol witness table accessor for type Scene.AnchorCollection and conformance Scene.AnchorCollection();
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v40[4] == v40[0])
    {
      (*(v10 + 8))(v13, v9);
    }

    else
    {
      v27 = dispatch thunk of Collection.subscript.read();
      v29 = *v28;

      v27(v40, 0);
      (*(v10 + 8))(v13, v9);
      v30 = *v29;
      v31 = v2[2];
      HasHierarchy.addChild(_:preservingWorldTransform:)();
    }
  }

  BoundingBoxRotateManipulator.attachGestures()();
  v32 = v2[3];

  dispatch thunk of Entity.__coreEntity.getter();
  v33 = MEMORY[0x277D841D8];
  MEMORY[0x23EEAC640](v40, MEMORY[0x277D841D8], MEMORY[0x277D841D8]);
  v34 = *(v5 + 8);
  v34(v8, v4);
  REHierarchicalFadeComponentGetComponentType();
  v35 = REEntityGetOrAddComponentByClass();
  REHierarchicalFadeComponentSetOpacity();
  MEMORY[0x23EEB00C0](v35);

  v36 = v2[4];
  dispatch thunk of Entity.__coreEntity.getter();
  MEMORY[0x23EEAC640](v40, v33, v33);
  v34(v8, v4);
  REHierarchicalFadeComponentGetComponentType();
  v37 = REEntityGetOrAddComponentByClass();
  REHierarchicalFadeComponentSetOpacity();
  return MEMORY[0x23EEB00C0](v37);
}

Swift::Void __swiftcall BoundingBoxRotateManipulator.detach()()
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
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Detaching the box rotation widget from the detection box...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = *(v1 + 16);
  type metadata accessor for Entity();
  HasHierarchy.removeFromParent(preservingWorldTransform:)(0);

  BoundingBoxRotateManipulator.detachGestures()();
}

Swift::Void __swiftcall BoundingBoxRotateManipulator.update(time:box:)(Swift::Double time, simd_float4x4 *box)
{
  v4 = v2;
  v32 = v3;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    Transform.init(matrix:)();
    v33 = v8;
    v30 = v9;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of BoundingBoxRotateManipulator.update(time:box:));
    v10 = *(*(v7 + 240) + 48);
    swift_beginAccess();
    v11 = *(v10 + 40);
    if ((v11 & 0xC000000000000001) != 0)
    {

      v12 = MEMORY[0x23EEAFC40](4, v11);
    }

    else
    {
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_15;
      }

      v12 = *(v11 + 64);
    }

    BoundingBoxScaleManipulator.FaceHandle.faceCenterPosLocal(extents:)();
    v27 = v13;
    v11 = *(v12 + 16);
    if (one-time initialization token for normals != -1)
    {
      swift_once();
    }

    if (*(static BoundingBoxScaleManipulator.Face.normals + 2) > v11)
    {
      v32 = *(static BoundingBoxScaleManipulator.Face.normals + v11 + 2);
      v14 = *(*(v7 + 240) + 48);
      swift_beginAccess();
      v11 = *(v14 + 40);
      if ((v11 & 0xC000000000000001) == 0)
      {
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          __break(1u);
          return;
        }

        v15 = *(v11 + 40);

        goto LABEL_11;
      }

LABEL_16:

      MEMORY[0x23EEAFC40](1, v11);

LABEL_11:
      BoundingBoxScaleManipulator.FaceHandle.faceCenterPosLocal(extents:)();
      v36 = v16;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23B91A6D0;
      *(inited + 32) = __PAIR64__(v36, v27);
      *(inited + 40) = DWORD2(v27);
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
      v34 = v18;
      swift_setDeallocating();
      *v19.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v30, v33);
      v26 = v19;
      v28 = v20;
      v29 = v21;
      v31 = v22;
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_23B91A6E0;
      *(v23 + 32) = vadd_f32(vmul_f32(*v32.f32, vdup_n_s32(0x3CA3D70Au)), *&v34);
      *(v23 + 40) = vmuls_lane_f32(0.02, v32, 2) + *(&v34 + 2);
      *(v23 + 44) = 1065353216;
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(v23);
      v35 = v24;
      swift_setDeallocating();
      BoundingBoxRotateManipulator.updateAnimationIfNeeded(time:)(time);
      Transform.init()();
      BoundingBoxRotateManipulator.compositeScale.getter();
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of BoundingBoxRotateManipulator.update(time:box:));
      v25 = *(v4 + 16);
      specialized simd_float4x4.init(translation:rotation:scale:)(*vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, v35.f32[0]), v28, *v35.f32, 1), v29, v35, 2), v31, v35, 3).i64, v33);
      type metadata accessor for Entity();
      HasTransform.setTransformMatrix(_:relativeTo:)();

      return;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }
}

uint64_t BoundingBoxRotateManipulator.updateAnimationIfNeeded(time:)(Swift::Double a1)
{
  v2 = v1;
  swift_beginAccess();
  outlined init with copy of Animation?(v1 + 200, &v21);
  if (!*(&v22 + 1))
  {
    return outlined destroy of Animation?(&v21);
  }

  outlined init with take of Animation(&v21, v24);
  v4 = __swift_project_boxed_opaque_existential_1(v24, v25);
  if (*(*v4 + 48) > *(*v4 + 64))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23B824000, v6, v7, "Starting the rotate widget scale animation.", v8, 2u);
      MEMORY[0x23EEB0B70](v8, -1, -1);
    }

    v9 = __swift_project_boxed_opaque_existential_1(v24, v25);
    v10 = *v9;
    v11 = *(*v9 + 16) + a1;
    *(v10 + 48) = a1;
    *(v10 + 56) = v11;
  }

  v12 = *__swift_project_boxed_opaque_existential_1(v24, v25);
  v13 = RampAnimation.update(time:)(a1);
  if (v13 <= 1.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1.0;
  }

  if (v13 <= 0.0)
  {
    v14 = 0.0;
  }

  *(v2 + 248) = ((v14 * v14) / ((((v14 * v14) - v13) + ((v14 * v14) - v13)) + 1.0)) + 1.0;
  v15 = __swift_project_boxed_opaque_existential_1(v24, v25);
  if (*(*v15 + 56) < *(*v15 + 64))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, logger);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23B824000, v17, v18, "Clearing the rotate widget scale animation.", v19, 2u);
      MEMORY[0x23EEB0B70](v19, -1, -1);
    }

    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    swift_beginAccess();
    outlined assign with take of Animation?(&v21, v2 + 200);
    swift_endAccess();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v24);
}

void BoundingBoxRotateManipulator.attachGestures()()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23B824000, v3, v4, "Rotate widget: Adding pan gesture...", v5, 2u);
      MEMORY[0x23EEB0B70](v5, -1, -1);
    }

    v6 = *(v1 + 16);
    if (v6)
    {
      v7 = v6;
      v8 = BoundingBoxRotateManipulator.panGesture.getter();
      [v7 addGestureRecognizer_];
    }

    else
    {
      __break(1u);
    }
  }
}

void BoundingBoxRotateManipulator.detachGestures()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23B824000, v1, v2, "Rotate widget: Removing pan gesture...", v3, 2u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 16);
    v6 = v5;

    if (v5)
    {
      v7 = BoundingBoxRotateManipulator.panGesture.getter();
      [v6 removeGestureRecognizer_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t BoundingBoxRotateManipulator.hitTestWidget(at:)()
{
  v1 = v0;
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = *(result + 16);
  v4 = v3;

  if (!v3)
  {
    return 0;
  }

  v5 = ARView.entities(at:)();
  v6 = v5;
  if (!(v5 >> 62))
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
LABEL_25:

LABEL_26:

    return 0;
  }

LABEL_5:
  v29 = v4;
  v4 = type metadata accessor for Entity();
  v8 = 0;
  v34 = v6 & 0xC000000000000001;
  v30 = v6 & 0xFFFFFFFFFFFFFF8;
  v9 = 0x27E189000uLL;
  v10 = logger;
  v31 = v7;
  v32 = v6;
  while (1)
  {
    if (v34)
    {
      MEMORY[0x23EEAFC40](v8, v6);
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v8 >= *(v30 + 16))
      {
        goto LABEL_23;
      }

      v12 = *(v6 + 8 * v8 + 32);

      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    v35 = v11;
    if (*(v9 + 1664) != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, v10);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v16 = 136315138;

      v17 = String.init<A>(describing:)();
      v19 = v10;
      v20 = v9;
      v21 = v1;
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v36);

      *(v16 + 4) = v22;
      v1 = v21;
      v9 = v20;
      v10 = v19;
      _os_log_impl(&dword_23B824000, v14, v15, "Checking hitTest on Entity: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      v6 = v32;
      MEMORY[0x23EEB0B70](v33, -1, -1);
      v23 = v16;
      v7 = v31;
      MEMORY[0x23EEB0B70](v23, -1, -1);
    }

    v24 = *(v1 + 24);

    v25 = static Entity.== infix(_:_:)();

    if (v25)
    {
      break;
    }

    ++v8;
    if (v35 == v7)
    {

      goto LABEL_26;
    }
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_23B824000, v26, v27, "Found the rotate widget collision Entity at the hit point!", v28, 2u);
    MEMORY[0x23EEB0B70](v28, -1, -1);
  }

  return 1;
}

void BoundingBoxRotateManipulator.beginDragGesture(at:)(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v2 + 192))
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v12 = Strong;
    if (!swift_weakLoadStrong() || (DetectModeBoxModel.currentCaptureBox.getter(&v74), , (v75 & 1) != 0))
    {

      return;
    }

    Transform.init(matrix:)();
    v55 = v13;
    v56 = v14;
    v57 = v15;
    *v16.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*&v13, v14);
    v59 = v16;
    v60 = v17;
    v61 = v18;
    v62 = v19;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of BoundingBoxRotateManipulator.beginDragGesture(at:));
    v58 = v20;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of BoundingBoxRotateManipulator.beginDragGesture(at:));
    v63 = v21;
    v22 = *(v12 + 16);
    if (v22)
    {
      v23 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v59, v58.f32[0]), v60, *v58.f32, 1), v61, v58, 2), v62, v58, 3);
      v23.i32[3] = 0;
      v62 = v23;
      v24 = v22;
      specialized static Ray3D.screenPointToPlane(within:screenPoint:plane:)(a1, a2, *v62.i64, v63);
      v61 = v29;

      v30 = *(v12 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel);
      if (!v30 || *(v30 + 24) != 2)
      {
        goto LABEL_23;
      }

      v31 = one-time initialization token for logger;
      v32 = *(v12 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel);

      if (v31 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, logger);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_23B824000, v34, v35, "Box rotation widget grabbed... switching to manual update mode.", v36, 2u);
        MEMORY[0x23EEB0B70](v36, -1, -1);
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      *v10 = static OS_dispatch_queue.main.getter();
      (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
      v37 = _dispatchPreconditionTest(_:)();
      (*(v7 + 8))(v10, v6);
      if (v37)
      {
        DetectModeBoxModel.performSwitchStateTransitions(from:to:)(*(v30 + 24), 3u);
        *(v30 + 24) = 3;

LABEL_23:
        v73 = 0;
        v38 = v56;
        *(v3 + 80) = v57;
        *(v3 + 96) = v38;
        v39 = v61;
        *(v3 + 112) = v55;
        *(v3 + 128) = v39;
        v40 = v62;
        *(v3 + 144) = v62;
        *(v3 + 160) = v40;
        *(v3 + 176) = v63;
        *(v3 + 192) = 0;
        v41 = type metadata accessor for RampAnimation();
        v42 = swift_allocObject();
        *(v42 + 48) = 0;
        *(v42 + 56) = 0;
        *(v42 + 64) = 0xFFF0000000000000;
        *(v42 + 24) = 0;
        *(v42 + 16) = 0x3FA999999999999ALL;
        *(v42 + 72) = 0;
        *(v42 + 32) = 0;
        *(v42 + 40) = 0;
        *&v66 = &protocol witness table for RampAnimation;
        *(&v65 + 1) = v41;
        *&v64 = v42;
        swift_beginAccess();
        outlined assign with take of Animation?(&v64, v3 + 200);
        swift_endAccess();
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        __swift_project_value_buffer(v43, logger);

        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v72 = v47;
          *v46 = 136446210;
          v48 = *(v3 + 160);
          v68 = *(v3 + 144);
          v49 = *(v3 + 176);
          v69 = v48;
          v70 = v49;
          v71 = *(v3 + 192);
          v50 = *(v3 + 96);
          v64 = *(v3 + 80);
          v65 = v50;
          v51 = *(v3 + 128);
          v66 = *(v3 + 112);
          v67 = v51;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI28BoundingBoxRotateManipulatorC9DragState33_775A7FE6C6FA1F309878473FBDD25374LLVSgMd, &_s19_RealityKit_SwiftUI28BoundingBoxRotateManipulatorC9DragState33_775A7FE6C6FA1F309878473FBDD25374LLVSgMR);
          v52 = String.init<A>(describing:)();
          v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v72);

          *(v46 + 4) = v54;
          _os_log_impl(&dword_23B824000, v44, v45, "Beginning drag on the rotate widget with dragState=%{public}s", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v47);
          MEMORY[0x23EEB0B70](v47, -1, -1);
          MEMORY[0x23EEB0B70](v46, -1, -1);
        }

        return;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  __break(1u);
  swift_once();
  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, logger);
  v63.i64[0] = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v63.i64[0], v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_23B824000, v63.i64[0], v26, "Can't project the start drag point onto the ground plane!", v27, 2u);
    MEMORY[0x23EEB0B70](v27, -1, -1);
  }

  v28 = v63.i64[0];
}

void BoundingBoxRotateManipulator.endDragGesture()()
{
  if (*(v0 + 192))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, logger);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_23B824000, oslog, v2, "Box rotation widget endDragGesture() called, but not dragging.  Ignoring...", v3, 2u);
      MEMORY[0x23EEB0B70](v3, -1, -1);
    }
  }

  else
  {
    v4 = v0;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23B824000, v6, v7, "Ending drag gesture on the rotate widget.", v8, 2u);
      MEMORY[0x23EEB0B70](v8, -1, -1);
    }

    v13 = 1;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 128) = 0u;
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
    *(v4 + 176) = 0u;
    *(v4 + 192) = 1;
    v9 = type metadata accessor for RampAnimation();
    v10 = swift_allocObject();
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0xFFF0000000000000;
    *(v10 + 24) = 1;
    *(v10 + 16) = 0x3FA999999999999ALL;
    *(v10 + 32) = 0;
    *(v10 + 40) = 0;
    *(v10 + 72) = 1065353216;
    v12[3] = v9;
    v12[4] = &protocol witness table for RampAnimation;
    v12[0] = v10;
    swift_beginAccess();
    outlined assign with take of Animation?(v12, v4 + 200);
    swift_endAccess();
  }
}

uint64_t BoundingBoxRotateManipulator.requestAsyncModelLoad()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23B824000, v1, v2, "Async loading rotate grabber...", v3, 2u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  type metadata accessor for Entity();
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v4 = static BoundingBoxHelpers.bundle;
  MEMORY[0x23EEAD3D0](0x7247657461746F52, 0xED00007265626261, static BoundingBoxHelpers.bundle);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type LoadRequest<ModelEntity> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, "Async loading front face indicator...", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  MEMORY[0x23EEAD3D0](0xD000000000000012, 0x800000023B9247D0, v4);
  swift_allocObject();
  swift_weakInit();
  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t closure #2 in BoundingBoxRotateManipulator.requestAsyncModelLoad()(uint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "... done loading rotate grabber.", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23B91A6F0;
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
  v7 = type metadata accessor for UnlitMaterial();
  v8 = MEMORY[0x277CDAC30];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  __swift_allocate_boxed_opaque_existential_1((v6 + 32));
  UnlitMaterial.init(color:)();
  type metadata accessor for ModelEntity();
  v9 = HasModel.model.modify();
  v11 = v10;
  v12 = type metadata accessor for ModelComponent();
  result = (*(*(v12 - 8) + 48))(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    ModelComponent.materials.setter();
    v9(v23, 0);
    v14 = type metadata accessor for Entity();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    Entity.init()();
    HasHierarchy.addChild(_:preservingWorldTransform:)();
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v18 = *(Strong + 24);

      HasHierarchy.addChild(_:preservingWorldTransform:)();
    }

    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of closure #2 in BoundingBoxRotateManipulator.requestAsyncModelLoad());
    swift_beginAccess();
    v19 = swift_weakLoadStrong();
    if (v19)
    {
      v20 = *(v19 + 24);
    }

    HasTransform.setScale(_:relativeTo:)();

    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of closure #2 in BoundingBoxRotateManipulator.requestAsyncModelLoad());
    swift_beginAccess();
    v21 = swift_weakLoadStrong();
    if (v21)
    {
      v22 = *(v21 + 24);
    }

    HasTransform.setPosition(_:relativeTo:)();
  }

  return result;
}

uint64_t closure #4 in BoundingBoxRotateManipulator.requestAsyncModelLoad()(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, logger);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23B824000, v5, v6, "... done loading front face indicator.", v7, 2u);
      MEMORY[0x23EEB0B70](v7, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_23B91A6F0;
    type metadata accessor for BoundingBoxHelpers();
    static BoundingBoxHelpers.makeBoxMaterial()((v8 + 32));
    type metadata accessor for ModelEntity();
    v9 = HasModel.model.modify();
    v11 = v10;
    v12 = type metadata accessor for ModelComponent();
    result = (*(*(v12 - 8) + 48))(v11, 1, v12);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      ModelComponent.materials.setter();
      v9(v23, 0);
      v13 = *(v3 + 32);
      type metadata accessor for Entity();

      HasHierarchy.addChild(_:preservingWorldTransform:)();

      v14 = *(v3 + 32);
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of closure #4 in BoundingBoxRotateManipulator.requestAsyncModelLoad());
      v15 = *(v3 + 16);

      HasTransform.setScale(_:relativeTo:)();

      v16 = *(v3 + 32);
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of closure #4 in BoundingBoxRotateManipulator.requestAsyncModelLoad());
      v22 = v17;
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of closure #4 in BoundingBoxRotateManipulator.requestAsyncModelLoad());
      simd_quaternion(v22, v18);
      v19 = *(v3 + 16);

      HasTransform.setOrientation(_:relativeTo:)();

      v20 = *(v3 + 32);
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #3 of closure #4 in BoundingBoxRotateManipulator.requestAsyncModelLoad());
      v21 = *(v3 + 16);

      HasTransform.setPosition(_:relativeTo:)();
    }
  }

  return result;
}

uint64_t BoundingBoxRotateManipulator.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  swift_weakDestroy();
  swift_weakDestroy();

  outlined destroy of Animation?(v0 + 200);
  v5 = *(v0 + 264);

  v6 = *(v0 + 272);

  v7 = *(v0 + 280);

  return v0;
}

uint64_t BoundingBoxRotateManipulator.__deallocating_deinit()
{
  BoundingBoxRotateManipulator.deinit();

  return swift_deallocClassInstance();
}

id DragFromPointGestureRecognizer.init(manipulator:onPan:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakInit();
  v6 = &v3[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_775A7FE6C6FA1F309878473FBDD2537430DragFromPointGestureRecognizer_startPoint];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  swift_weakAssign();
  v7 = &v3[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_775A7FE6C6FA1F309878473FBDD2537430DragFromPointGestureRecognizer_onPan];
  *v7 = a2;
  *(v7 + 1) = a3;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for DragFromPointGestureRecognizer();

  v8 = objc_msgSendSuper2(&v10, sel_initWithTarget_action_, 0, 0);
  [v8 addTarget:v8 action:{sel_onPanInternal_, v10.receiver, v10.super_class}];
  [v8 setMaximumNumberOfTouches_];
  [v8 setDelegate_];

  return v8;
}

{
  swift_weakInit();
  v6 = &v3[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_4ABB148B5599ED86F84C6943D86F570D30DragFromPointGestureRecognizer_startPoint];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  swift_weakAssign();
  v7 = &v3[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_4ABB148B5599ED86F84C6943D86F570D30DragFromPointGestureRecognizer_onPan];
  *v7 = a2;
  *(v7 + 1) = a3;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for DragFromPointGestureRecognizer();

  v8 = objc_msgSendSuper2(&v10, sel_initWithTarget_action_, 0, 0);
  [v8 addTarget:v8 action:{sel_onPanInternal_, v10.receiver, v10.super_class}];
  [v8 setMaximumNumberOfTouches_];
  [v8 setDelegate_];

  return v8;
}

void DragFromPointGestureRecognizer.touchesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 192))
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
      lazy protocol witness table accessor for type UITouch and conformance NSObject();
      isa = Set._bridgeToObjectiveC()().super.isa;
      v47.receiver = v2;
      v47.super_class = type metadata accessor for DragFromPointGestureRecognizer();
      objc_msgSendSuper2(&v47, sel_touchesBegan_withEvent_, isa, a2);

      if ([v2 state] == 5)
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
          _os_log_impl(&dword_23B824000, v8, v9, "Rotation widget: touchesBegan called when the gesture was failed!!", v10, 2u);
          MEMORY[0x23EEB0B70](v10, -1, -1);
        }

        return;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        if (__CocoaSet.count.getter() == 1)
        {
          goto LABEL_23;
        }
      }

      else if (*(a1 + 16) == 1)
      {
LABEL_23:
        v17 = specialized Collection.first.getter(a1);
        if (v17)
        {
          v18 = v17;
          v19 = [v2 view];
          [v18 locationInView_];
          v21 = v20;
          v23 = v22;

          v24 = v2;
          v25 = &v2[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_775A7FE6C6FA1F309878473FBDD2537430DragFromPointGestureRecognizer_startPoint];
          *v25 = v21;
          *(v25 + 1) = v23;
          v25[16] = 0;
          if (BoundingBoxRotateManipulator.hitTestWidget(at:)())
          {
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v26 = type metadata accessor for Logger();
            __swift_project_value_buffer(v26, logger);
            v27 = v2;
            v28 = Logger.logObject.getter();
            v29 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v28, v29))
            {
              v30 = swift_slowAlloc();
              v31 = swift_slowAlloc();
              v46 = v31;
              *v30 = 136446210;
              v44 = *v25;
              v45 = v25[16];
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7CGPointVSgMd, &_sSo7CGPointVSgMR);
              v32 = String.init<A>(describing:)();
              v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v46);

              *(v30 + 4) = v34;
              _os_log_impl(&dword_23B824000, v28, v29, "Begin drag gesture on rotation widget. startPoint=%{public}s", v30, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v31);
              MEMORY[0x23EEB0B70](v31, -1, -1);
              MEMORY[0x23EEB0B70](v30, -1, -1);
            }

            if (v25[16])
            {
              __break(1u);
              return;
            }

            BoundingBoxRotateManipulator.beginDragGesture(at:)(*v25, *(v25 + 1));
            [v27 setState_];
LABEL_46:

            return;
          }

          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v42 = type metadata accessor for Logger();
          __swift_project_value_buffer(v42, logger);
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v36, v37))
          {
LABEL_45:

            [v24 setState_];
            goto LABEL_46;
          }

          v38 = swift_slowAlloc();
          *v38 = 0;
          v39 = "Rotation widget: grabbed was nil!";
        }

        else
        {
          v24 = v2;
          v40 = &v2[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_775A7FE6C6FA1F309878473FBDD2537430DragFromPointGestureRecognizer_startPoint];
          *v40 = 0;
          *(v40 + 1) = 0;
          v40[16] = 1;
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v41 = type metadata accessor for Logger();
          __swift_project_value_buffer(v41, logger);
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v36, v37))
          {
            goto LABEL_45;
          }

          v38 = swift_slowAlloc();
          *v38 = 0;
          v39 = "Rotation widget: The startPoint on grab was nil!";
        }

LABEL_44:
        _os_log_impl(&dword_23B824000, v36, v37, v39, v38, 2u);
        MEMORY[0x23EEB0B70](v38, -1, -1);
        goto LABEL_45;
      }

      v24 = v2;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, logger);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v36, v37))
      {
        goto LABEL_45;
      }

      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = "Rotation widget: got more than 1 touch!";
      goto LABEL_44;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, logger);
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23B824000, oslog, v15, "Rotation widget: One face handle is already grabbed!", v16, 2u);
      MEMORY[0x23EEB0B70](v16, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23B824000, oslog, v12, "Manipulator has been destroyed, exiting gesture callbacks...", v13, 2u);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }
  }
}

{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23B824000, oslog, v10, "Manipulator has been destroyed, exiting gesture callbacks...", v11, 2u);
      MEMORY[0x23EEB0B70](v11, -1, -1);
    }

    goto LABEL_12;
  }

  if (*(*(Strong + 48) + 32))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23B824000, oslog, v7, "One face handle is already grabbed!", v8, 2u);
      MEMORY[0x23EEB0B70](v8, -1, -1);
    }

LABEL_12:

    return;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v56.receiver = v2;
  v56.super_class = type metadata accessor for DragFromPointGestureRecognizer();
  objc_msgSendSuper2(&v56, sel_touchesBegan_withEvent_, isa, a2);

  if ([v2 state] != 5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      if (__CocoaSet.count.getter() == 1)
      {
LABEL_23:
        v17 = specialized Collection.first.getter(a1);
        if (v17)
        {
          v18 = v17;
          v19 = [v2 view];
          [v18 locationInView_];
          v21 = v20;
          v23 = v22;

          v24 = &v2[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_4ABB148B5599ED86F84C6943D86F570D30DragFromPointGestureRecognizer_startPoint];
          *v24 = v21;
          *(v24 + 1) = v23;
          v24[16] = 0;
          v25 = v2;
          DragFromPointGestureRecognizer.findFaceHandle(at:)();
          if (v26)
          {
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v27 = type metadata accessor for Logger();
            __swift_project_value_buffer(v27, logger);

            v28 = v2;
            v29 = Logger.logObject.getter();
            v30 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v29, v30))
            {
              v31 = swift_slowAlloc();
              v32 = swift_slowAlloc();
              v55 = v32;
              *v31 = 136446466;

              __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI27BoundingBoxScaleManipulatorC10FaceHandleCSgMd, &_s19_RealityKit_SwiftUI27BoundingBoxScaleManipulatorC10FaceHandleCSgMR);
              v33 = String.init<A>(describing:)();
              v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v55);

              *(v31 + 4) = v35;
              *(v31 + 12) = 2082;
              v53 = *v24;
              v54 = v24[16];
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7CGPointVSgMd, &_sSo7CGPointVSgMR);
              v36 = String.init<A>(describing:)();
              v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v55);

              *(v31 + 14) = v38;
              _os_log_impl(&dword_23B824000, v29, v30, "Begin drag gesture handle=%{public}s startPoint=%{public}s", v31, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x23EEB0B70](v32, -1, -1);
              MEMORY[0x23EEB0B70](v31, -1, -1);
            }

            BoundingBoxScaleManipulator.beginDragGesture(handle:)(v39);

            [v28 setState_];
          }

          else
          {
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v48 = type metadata accessor for Logger();
            __swift_project_value_buffer(v48, logger);
            v49 = Logger.logObject.getter();
            v50 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              *v51 = 0;
              _os_log_impl(&dword_23B824000, v49, v50, "Scale widget: The face handle on grab was nil!", v51, 2u);
              MEMORY[0x23EEB0B70](v51, -1, -1);
            }

            [v25 setState_];
          }

          goto LABEL_41;
        }

        v40 = v2;
        v46 = &v2[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_4ABB148B5599ED86F84C6943D86F570D30DragFromPointGestureRecognizer_startPoint];
        *v46 = 0;
        *(v46 + 1) = 0;
        v46[16] = 1;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v47 = type metadata accessor for Logger();
        __swift_project_value_buffer(v47, logger);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v42, v43))
        {
LABEL_40:

          [v40 setState_];
LABEL_41:

          return;
        }

        v44 = swift_slowAlloc();
        *v44 = 0;
        v45 = "Scale widget: The startPoint on grab was nil!";
LABEL_39:
        _os_log_impl(&dword_23B824000, v42, v43, v45, v44, 2u);
        MEMORY[0x23EEB0B70](v44, -1, -1);
        goto LABEL_40;
      }
    }

    else if (*(a1 + 16) == 1)
    {
      goto LABEL_23;
    }

    v40 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, logger);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_40;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = "Scale widget: got more than 1 touch!";
    goto LABEL_39;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, logger);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_23B824000, v14, v15, "Scale widget: touchesBegan called when the gesture was failed!", v16, 2u);
    MEMORY[0x23EEB0B70](v16, -1, -1);
  }
}

void DragFromPointGestureRecognizer.touchesMoved(_:with:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for DragFromPointGestureRecognizer();
  objc_msgSendSuper2(&v16, sel_touchesMoved_withEvent_, isa, a2);

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + 192) & 1) == 0)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        if (__CocoaSet.count.getter() < 2)
        {
          goto LABEL_17;
        }

LABEL_12:
        v11 = v2;
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
          _os_log_impl(&dword_23B824000, v13, v14, "Box rotate widget: Drag got an extra touch!  failing!", v15, 2u);
          MEMORY[0x23EEB0B70](v15, -1, -1);
        }

        [v11 setState_];
        goto LABEL_17;
      }

      if (*(a1 + 16) >= 2)
      {
        goto LABEL_12;
      }
    }

LABEL_17:

    return;
  }

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
    _os_log_impl(&dword_23B824000, v8, v9, "Manipulator has been destroyed, exiting gesture callbacks...", v10, 2u);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }
}

uint64_t @objc DragFromPointGestureRecognizer.touchesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, id))
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, v9);
}

{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, v9);
}

void DragFromPointGestureRecognizer.touchesEnded(_:with:)(uint64_t a1, uint64_t a2, SEL *a3, const char *a4)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for DragFromPointGestureRecognizer();
  objc_msgSendSuper2(&v19, *a3, isa, a2);

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([v4 state] == 1 && (*(v10 + 192) & 1) == 0)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, logger);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_23B824000, v12, v13, a4, v14, 2u);
        MEMORY[0x23EEB0B70](v14, -1, -1);
      }

      BoundingBoxRotateManipulator.endDragGesture()();
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, logger);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_23B824000, v16, v17, "Manipulator has been destroyed, exiting gesture callbacks...", v18, 2u);
      MEMORY[0x23EEB0B70](v18, -1, -1);
    }
  }
}

uint64_t @objc DragFromPointGestureRecognizer.touchesEnded(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, const char *a6)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a4;
  v12 = a1;
  DragFromPointGestureRecognizer.touchesEnded(_:with:)(v10, v11, a5, a6);
}

void DragFromPointGestureRecognizer.reset()()
{
  if (swift_weakLoadStrong())
  {
    BoundingBoxRotateManipulator.endDragGesture()();
    v5.receiver = v0;
    v5.super_class = type metadata accessor for DragFromPointGestureRecognizer();
    objc_msgSendSuper2(&v5, sel_reset);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, logger);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_23B824000, oslog, v2, "Manipulator has been destroyed, exiting gesture callbacks...", v3, 2u);
      MEMORY[0x23EEB0B70](v3, -1, -1);
    }
  }
}

{
  v1 = v0;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 48);
    v4 = Strong;
    BoundingBoxScaleManipulator.FaceHandleContainer.updateGrabbedHandleState(_:)(0);
    v5 = *(v3 + 32);
    *(v3 + 32) = 0;

    *(v4 + 176) = 0u;
    *(v4 + 192) = 0u;
    *(v4 + 160) = 0u;
    *(v4 + 208) = 1;
    v10.receiver = v1;
    v10.super_class = type metadata accessor for DragFromPointGestureRecognizer();
    objc_msgSendSuper2(&v10, sel_reset);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23B824000, oslog, v7, "Manipulator has been destroyed, exiting gesture callbacks...", v8, 2u);
      MEMORY[0x23EEB0B70](v8, -1, -1);
    }
  }
}

uint64_t DragFromPointGestureRecognizer.gestureRecognizerShouldBegin(_:)(void *a1)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);
    v4 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v4, v9))
    {
      goto LABEL_23;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "delegate got a gestureRecognizer that wasn't self!";
LABEL_17:
    _os_log_impl(&dword_23B824000, v4, v9, v11, v10, 2u);
    MEMORY[0x23EEB0B70](v10, -1, -1);
LABEL_23:
    v7 = 0;
    goto LABEL_24;
  }

  if (!swift_weakLoadStrong())
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, logger);
    v4 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v4, v9))
    {
      goto LABEL_23;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Manipulator has been destroyed, exiting gesture callbacks...";
    goto LABEL_17;
  }

  v2 = [a1 view];
  [a1 locationInView_];

  if ((BoundingBoxRotateManipulator.hitTestWidget(at:)() & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    v4 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23B824000, v4, v14, "Hit test missed the widget. we should not begin the drag.", v15, 2u);
      MEMORY[0x23EEB0B70](v15, -1, -1);
    }

    goto LABEL_23;
  }

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
    _os_log_impl(&dword_23B824000, v4, v5, "Hit test hit the widget. we should begin the drag.", v6, 2u);
    MEMORY[0x23EEB0B70](v6, -1, -1);
  }

  v7 = 1;
LABEL_24:

  return v7;
}

id DragFromPointGestureRecognizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DragFromPointGestureRecognizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DragFromPointGestureRecognizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DragFromPointGestureRecognizer()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

__n128 __swift_memcpy112_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for BoundingBoxRotateManipulator.DragState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BoundingBoxRotateManipulator.DragState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 112) = v3;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type UITouch and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UITouch and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UITouch and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UITouch and conformance NSObject);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void specialized BoundingBoxRotateManipulator.duringDragGesture(startPoint:currentPoint:)(double a1, double a2)
{
  if (*(v2 + 192))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, logger);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23B824000, oslog, v4, "Box rotation widget duringDragGesture() called, but isGrabbed is false!", v5, 2u);
      MEMORY[0x23EEB0B70](v5, -1, -1);
    }
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*(v2 + 192))
      {
      }

      else
      {
        v9 = *(Strong + 16);
        if (v9)
        {
          v10 = *(v2 + 128);
          v11 = *(v2 + 80);
          v12 = *(v2 + 88);
          v43 = *(v2 + 96);
          v13 = *(v2 + 120);
          v42 = *(v2 + 112);
          v14.i64[0] = v10;
          v14.i64[1] = *(v2 + 136);
          v46 = v14;
          v15 = *(v2 + 144);
          v14.i64[0] = v15;
          v14.i64[1] = *(v2 + 152);
          v44 = v14;
          *oslogc = *(v2 + 176);
          v14.i64[1] = *(v2 + 168);
          v48 = *(v2 + 160);
          v16 = v9;
          specialized static Ray3D.screenPointToPlane(within:screenPoint:plane:)(a1, a2, v48, *oslogc);
          *osloga = v17;

          v18.i64[0] = __PAIR64__(v46.u32[1], v10);
          v19.i64[0] = __PAIR64__(v44.u32[1], v15);
          v19.i64[1] = vextq_s8(v44, v44, 8uLL).u64[0];
          v18.i64[1] = vextq_s8(v46, v46, 8uLL).u64[0];
          v20 = vsubq_f32(v18, v19);
          v21 = vmulq_f32(v20, v20);
          v18.f32[0] = vaddv_f32(*v21.f32);
          *v21.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v21.f32[2] + v18.f32[0]));
          *v21.f32 = vmul_f32(*v21.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v21.f32[2] + v18.f32[0]), vmul_f32(*v21.f32, *v21.f32)));
          LODWORD(v22) = vmul_f32(*v21.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v21.f32[2] + v18.f32[0]), vmul_f32(*v21.f32, *v21.f32))).u32[0];
          v23 = vsubq_f32(*osloga, v19);
          v24 = vmulq_f32(v23, v23);
          v18.f32[0] = v24.f32[2] + vaddv_f32(*v24.f32);
          *v24.f32 = vrsqrte_f32(v18.u32[0]);
          *v24.f32 = vmul_f32(*v24.f32, vrsqrts_f32(v18.u32[0], vmul_f32(*v24.f32, *v24.f32)));
          LODWORD(v25) = vmul_f32(*v24.f32, vrsqrts_f32(v18.u32[0], vmul_f32(*v24.f32, *v24.f32))).u32[0];
          if (one-time initialization token for logger != -1)
          {
            v50 = v22;
            *oslogd = v20;
            v45 = v25;
            v47 = v23;
            swift_once();
            v25 = v45;
            v23 = v47;
            v22 = v50;
            v20 = *oslogd;
          }

          v49 = vmulq_n_f32(v23, v25);
          oslogb = vmulq_n_f32(v20, v22);
          v26 = type metadata accessor for Logger();
          __swift_project_value_buffer(v26, logger);
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v56[0] = v30;
            *v29 = 136446466;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
            lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
            v31 = SIMD.description.getter();
            v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v56);

            *(v29 + 4) = v33;
            *(v29 + 12) = 2082;
            v34 = SIMD.description.getter();
            v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v56);

            *(v29 + 14) = v36;
            _os_log_impl(&dword_23B824000, v27, v28, "startUnit = %{public}s  currentUnit: %{public}s", v29, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x23EEB0B70](v30, -1, -1);
            MEMORY[0x23EEB0B70](v29, -1, -1);
          }

          if (swift_weakLoadStrong())
          {
            *v37.i64 = simd_quaternion(oslogb, v49);
            v38 = vnegq_f32(v37);
            v39 = vtrn2q_s32(v37, vtrn1q_s32(v37, v38));
            v40 = vrev64q_s32(v37);
            v40.i32[0] = v38.i32[1];
            v40.i32[3] = v38.i32[2];
            specialized simd_float4x4.init(translation:rotation:scale:)(v42, vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v37, v43, 3), v40, v43, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v37, v38, 8uLL), *v43.f32, 1), vextq_s8(v39, v39, 8uLL), v43.f32[0])));
            DetectModeBoxModel.setBoundingBoxMatrix(box:)(v41);
          }
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

uint64_t specialized BoundingBoxRotateManipulator.init(parent:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18CollisionComponentVSgMd, &_s10RealityKit18CollisionComponentVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v37 - v4;
  v6 = type metadata accessor for CollisionFilter();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CollisionComponent.Mode();
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CollisionComponent();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Entity();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(v0 + 16) = Entity.init()();
  v21 = *(v18 + 48);
  v22 = *(v18 + 52);
  swift_allocObject();
  v23 = Entity.init()();
  v24 = MEMORY[0x277D84FA0];
  *(v0 + 32) = v23;
  *(v0 + 40) = v24;
  swift_weakInit();
  swift_weakInit();
  *(v0 + 64) = 0x3E8000003F800000;
  *(v0 + 72) = 0;
  v41[32] = 1;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 1;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0x3FA999999999999ALL;
  *(v0 + 248) = 0x418C00003F800000;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
  *(v0 + 272) = 0;
  *(v0 + 280) = 0;
  swift_weakAssign();
  v25 = *(v18 + 48);
  v26 = *(v18 + 52);
  swift_allocObject();
  *(v0 + 24) = Entity.init()();
  BoundingBoxRotateManipulator.requestAsyncModelLoad()();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, logger);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_23B824000, v28, v29, "Setting up a hittable sphere for the rotate widget...", v30, 2u);
    MEMORY[0x23EEB0B70](v30, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_23B91A700;
  type metadata accessor for ShapeResource();
  *(v31 + 32) = MEMORY[0x23EEAC950](0.028571);
  (*(v38 + 104))(v12, *MEMORY[0x277CDADC0], v39);
  static CollisionFilter.default.getter();
  CollisionComponent.init(shapes:mode:filter:)();
  v32 = *(v1 + 24);
  (*(v14 + 16))(v5, v17, v13);
  (*(v14 + 56))(v5, 0, 1, v13);

  v33 = dispatch thunk of Entity.components.modify();
  Entity.ComponentSet.subscript.setter();
  v33(v41, 0);

  v34 = *(v1 + 16);
  v35 = *(v1 + 24);

  HasHierarchy.addChild(_:preservingWorldTransform:)();

  (*(v14 + 8))(v17, v13);
  return v1;
}

double simd_quaternion(float32x4_t a1, float32x4_t a2)
{
  v2 = vmulq_f32(a1, a2);
  if ((v2.f32[2] + vaddv_f32(*v2.f32)) >= 0.0)
  {
    v34 = vaddq_f32(a1, a2);
    v35 = vmulq_f32(v34, v34);
    *&v36 = v35.f32[2] + vaddv_f32(*v35.f32);
    *v35.f32 = vrsqrte_f32(v36);
    *v35.f32 = vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32)));
    v37 = vmulq_n_f32(v34, vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32))).f32[0]);
    v38 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), vnegq_f32(a1)), v37, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
    v33 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL).u64[0];
  }

  else
  {
    v4 = vmulq_f32(a1, a1);
    v3 = vaddv_f32(*v4.f32);
    v4.i32[1] = 0;
    *&v5 = v4.f32[2] + v3;
    v6 = vrsqrte_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v3));
    v7 = vmul_f32(v6, vrsqrts_f32(v5, vmul_f32(v6, v6)));
    v8 = vmulq_n_f32(a1, vmul_f32(v7, vrsqrts_f32(v5, vmul_f32(v7, v7))).f32[0]);
    v9 = vmulq_f32(a2, a2);
    *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
    *v9.f32 = vrsqrte_f32(v10);
    *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
    v11 = vaddq_f32(v8, vmulq_n_f32(a2, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]));
    v12 = vmulq_f32(v11, v11);
    v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    if (v13 <= 1.4211e-14)
    {
      v39 = vabsq_f32(a1);
      v40 = v39.f32[1];
      v41 = v39.f32[2];
      if (v39.f32[0] > v39.f32[1] || v39.f32[0] > v39.f32[2])
      {
        v42 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
        if (v40 <= v41)
        {
          v43 = vmulq_f32(a1, xmmword_23B91A730);
          v44 = xmmword_23B91A740;
        }

        else
        {
          v43 = vmulq_f32(a1, xmmword_23B91A750);
          v44 = xmmword_23B91A760;
        }
      }

      else
      {
        v42 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
        v43 = vmulq_f32(a1, xmmword_23B91A710);
        v44 = xmmword_23B91A720;
      }

      v45 = vmlaq_f32(v43, v44, v42);
      v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
      v47 = vmulq_f32(v45, v45);
      *&v48 = v47.f32[1] + (v47.f32[2] + v47.f32[0]);
      *v47.f32 = vrsqrte_f32(v48);
      *v47.f32 = vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32)));
      v33 = vmulq_n_f32(v46, vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32))).f32[0]).u64[0];
    }

    else
    {
      v14 = v13;
      v15 = vrsqrte_f32(LODWORD(v13));
      v16 = vmul_f32(v15, vrsqrts_f32(LODWORD(v14), vmul_f32(v15, v15)));
      v17 = vmulq_n_f32(v11, vmul_f32(v16, vrsqrts_f32(LODWORD(v14), vmul_f32(v16, v16))).f32[0]);
      v18 = vaddq_f32(a1, v17);
      v19 = vmulq_f32(v18, v18);
      *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
      *v19.f32 = vrsqrte_f32(v20);
      *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
      v21 = vmulq_n_f32(v18, vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
      v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), vnegq_f32(a1)), v21, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
      v23 = vmulq_f32(v21, a1);
      v24 = vaddq_f32(a2, v17);
      v25 = vmulq_f32(v24, v24);
      v4.f32[0] = v25.f32[2] + vaddv_f32(*v25.f32);
      *v25.f32 = vrsqrte_f32(*v4.f32);
      *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(*v4.f32, vmul_f32(*v25.f32, *v25.f32)));
      v26 = vmulq_n_f32(v24, vmul_f32(*v25.f32, vrsqrts_f32(*v4.f32, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
      v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v17)), v26, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
      v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
      v29 = vmulq_f32(v17, v26);
      v28.f32[3] = v29.f32[2] + vaddv_f32(*v29.f32);
      v30 = vnegq_f32(v28);
      v31 = vtrn2q_s32(v28, vtrn1q_s32(v28, v30));
      v32 = vrev64q_s32(v28);
      v32.i32[0] = v30.i32[1];
      v32.i32[3] = v30.i32[2];
      v33 = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v23.f32[2] + vaddv_f32(*v23.f32)), v32, *v22.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(vextq_s8(v28, v30, 8uLL), v22.f32[0]), vextq_s8(v31, v31, 8uLL), v22, 2)).u64[0];
    }
  }

  return *&v33;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined assign with take of Animation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI9Animation_pSgMd, &_s19_RealityKit_SwiftUI9Animation_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for NSObject(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t outlined init with copy of Animation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI9Animation_pSgMd, &_s19_RealityKit_SwiftUI9Animation_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Animation?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI9Animation_pSgMd, &_s19_RealityKit_SwiftUI9Animation_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Animation(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
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

uint64_t lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t Sphere.createSurfaceSamples(radialSegments:verticalSegments:)(uint64_t result, uint64_t a2, __n128 a3, float a4)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v4 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a2 != -1)
  {
    v5 = result + 1;
    if (__OFADD__(result, 1))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v5 < 0)
    {
LABEL_23:
      __break(1u);
      return result;
    }

    v7 = 0;
    v8 = 6.2832 / result;
    v9 = MEMORY[0x277D84F90];
    v10 = 3.1416 / a2;
    while (1)
    {
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v5)
      {
        v12 = __sincosf_stret(1.5708 - (v10 * v7));
        v13 = 0;
        do
        {
          v14 = __sincosf_stret(v8 * v13);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
            v9 = result;
          }

          v16 = *(v9 + 16);
          v15 = *(v9 + 24);
          if (v16 >= v15 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v9);
            v9 = result;
          }

          ++v13;
          *&v17 = vadd_f32(a3.n128_u64[0], vmul_n_f32(__PAIR64__(LODWORD(v14.__sinval), LODWORD(v14.__cosval)), v12.__cosval * a4));
          *(&v17 + 1) = COERCE_UNSIGNED_INT(a3.n128_f32[2] + (v12.__sinval * a4));
          *(v9 + 16) = v16 + 1;
          *(v9 + 16 * v16 + 32) = v17;
        }

        while (v5 != v13);
      }

      v7 = v11;
      if (v11 == v4)
      {
        return v9;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  return MEMORY[0x277D84F90];
}

__n128 __swift_memcpy20_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Sphere(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Sphere(uint64_t result, int a2, int a3)
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

  *(result + 20) = v3;
  return result;
}

uint64_t View.realityViewLayoutBehavior(_:)(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.realityViewLayoutOption.getter()
{
  lazy protocol witness table accessor for type EnvironmentValues.RealityViewLayoutOptionKey and conformance EnvironmentValues.RealityViewLayoutOptionKey();

  return EnvironmentValues.subscript.getter();
}

uint64_t key path getter for EnvironmentValues.realityViewLayoutOption : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type EnvironmentValues.RealityViewLayoutOptionKey and conformance EnvironmentValues.RealityViewLayoutOptionKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for EnvironmentValues.realityViewLayoutOption : EnvironmentValues(char *a1)
{
  v2 = *a1;
  lazy protocol witness table accessor for type EnvironmentValues.RealityViewLayoutOptionKey and conformance EnvironmentValues.RealityViewLayoutOptionKey();
  return EnvironmentValues.subscript.setter();
}

uint64_t getEnumTagSinglePayload for RealityViewLayoutOption(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for RealityViewLayoutOption(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<RealityViewLayoutOption> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<RealityViewLayoutOption> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<RealityViewLayoutOption> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy012_RealityKit_aB00G16ViewLayoutOptionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy012_RealityKit_aB00G16ViewLayoutOptionVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<RealityViewLayoutOption> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance EnvironmentValues.RealityViewLayoutOptionKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type RealityViewLayoutOption and conformance RealityViewLayoutOption();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

Swift::Void __swiftcall _RealityViewImpl.setIdealSize()()
{
  v1 = v0;
  v2 = type metadata accessor for ARView.CameraMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v57 - v8;
  v10 = *(v1 + 48);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = Strong + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
    swift_beginAccess();
    v14 = *v13;
    ARView.cameraMode.getter();

    (*(v3 + 104))(v7, *MEMORY[0x277CDB590], v2);
    LOBYTE(v14) = static ARView.CameraMode.== infix(_:_:)();
    v15 = *(v3 + 8);
    v15(v7, v2);
    v15(v9, v2);
    if (v14)
    {
      goto LABEL_20;
    }

    _RealityViewImpl.layoutOption.getter(v1, v61);
    if (!v61[0])
    {
      goto LABEL_20;
    }

    v16 = *v13;
    dispatch thunk of ARView.scene.getter();

    active = dispatch thunk of Scene.internalActiveCamera.getter();

    if (!active)
    {
      goto LABEL_20;
    }

    _RealityViewImpl.layoutOption.getter(v1, v61);
    if (v61[0] == 1 || (_RealityViewImpl.layoutOption.getter(v1, v61), v61[0] == 2))
    {
      type metadata accessor for Entity();
      HasTransform.transformMatrix(relativeTo:)();
      v60 = v18;
      v59 = v19;
      v58 = v20;
      v57[1] = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23B91A6D0;
      *(inited + 32) = 0;
      *(inited + 40) = -1073741824;
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
      v57[0] = v23;
      swift_setDeallocating();
      simd_float4x4.transform(position:)();
      v58 = v24;
      v25 = *(v13 + 8);
      type metadata accessor for AnchorEntity();

      HasTransform.visualBounds(recursive:relativeTo:excludeInactive:)();
      v60 = v26;
      v59 = v27;

      if (BoundingBox.isEmpty.getter())
      {
LABEL_12:

LABEL_20:

        return;
      }

      BoundingBox.center.getter();
      v60 = vsubq_f32(v28, v58);
      v29 = HasTransform.position.modify();
      v31 = vaddq_f32(v60, *v30);
      v31.i32[3] = 0;
      *v30 = v31;
      v29(v61, 0);
    }

    _RealityViewImpl.layoutOption.getter(v1, v61);
    if (v61[0] == 2)
    {
      [*v13 frame];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v40 = *(v1 + 44);
      v41 = *v13;
      GeometryProxy.size.getter();
      [v41 frame];
      [v41 setFrame_];

      *&v42 = COERCE_DOUBLE(specialized _RealityViewImpl.computeExtents2D(_:)(v1));
      if (v44)
      {

        v45 = v12 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize;
        *v45 = 0;
        *(v45 + 8) = 0;
        *(v45 + 16) = 1;
      }

      else
      {
        v46 = *&v42;
        v47 = v43;
        v48 = *&v42;
        v49 = *&v43;
        v50 = _RealityViewImpl.getMaxViewSize()();
        v51 = vabds_f32(v49, v48);
        if (v50.width >= v51)
        {
          width = v51;
        }

        else
        {
          width = v50.width;
        }

        v53 = fabsf(COERCE_FLOAT(vsub_f32(*&v47, *&v46).i32[1]));
        if (v50.height >= v53)
        {
          height = v53;
        }

        else
        {
          height = v50.height;
        }

        _RealityViewImpl.centerCamera(on:from:)(v1, v46, v47, 2.0);
        _RealityViewImpl.resizeContent(within:from:)(v1, width, height, 2.0);
        v55 = *v13;
        [v55 setFrame_];

        v56 = v12 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_idealSize;
        *v56 = width;
        *(v56 + 8) = height;
        *(v56 + 16) = 0;
      }

      goto LABEL_20;
    }

    goto LABEL_12;
  }
}

CGSize __swiftcall _RealityViewImpl.getMaxViewSize()()
{
  v2 = v0;
  v3 = _RealityViewImpl.uiScene.getter(v0);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

LABEL_5:
    v13 = v1 + *(v2 + 44);
    GeometryProxy.size.getter();
    goto LABEL_6;
  }

  v6 = [v5 screen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = v10;
  v12 = v8;
LABEL_6:
  result.height = v11;
  result.width = v12;
  return result;
}

uint64_t _RealityViewImpl.centerCamera(on:from:)(uint64_t a1, double a2, double a3, float a4)
{
  v6 = *(a1 + 48);
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
    swift_beginAccess();
    v10 = *(v8 + v9);
    dispatch thunk of ARView.scene.getter();

    active = dispatch thunk of Scene.internalActiveCamera.getter();

    if (active)
    {
      type metadata accessor for Entity();
      HasTransform.transformMatrix(relativeTo:)();
      v12 = *(a1 + 44);
      GeometryProxy.size.getter();
      v15 = _RealityViewImpl.computePPM(distance:size:)(a1, a4, v13, v14);
      if ((v15 & 0x100000000) == 0 && *&v15 > 0.0)
      {
        GeometryProxy.size.getter();
        GeometryProxy.size.getter();
        GeometryProxy.size.getter();
        GeometryProxy.size.getter();
        __asm { FMOV            V2.2S, #-1.0 }

        simd_float4x4.transform(position:)();
        v26 = v21;
        simd_float4x4.transform(position:)();
        v27 = vsubq_f32(v26, v22);
        v23 = HasTransform.position.modify();
        v25 = vaddq_f32(v27, *v24);
        v25.i32[3] = 0;
        *v24 = v25;
        v23(v28, 0);
      }
    }
  }

  return result;
}

uint64_t _RealityViewImpl.resizeContent(within:from:)(uint64_t a1, double a2, double a3, float a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation34ProjectiveTransformCameraComponentVSgMd, &_s17RealityFoundation34ProjectiveTransformCameraComponentVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v119 = &v112 - v13;
  v14 = type metadata accessor for ProjectiveTransformCameraComponent();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27OrthographicCameraComponentVSgMd, &_s17RealityFoundation27OrthographicCameraComponentVSgMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v118 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v122 = &v112 - v23;
  v125 = type metadata accessor for OrthographicCameraComponent();
  v124 = *(v125 - 8);
  v24 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v123 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for CameraFieldOfViewOrientation();
  v128 = *(v26 - 8);
  v129 = v26;
  v27 = *(v128 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v126 = &v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v127 = &v112 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26PerspectiveCameraComponentVSgMd, &_s10RealityKit26PerspectiveCameraComponentVSgMR);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v121 = &v112 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v112 - v35;
  v133 = type metadata accessor for Entity.ComponentSet();
  v130 = *(v133 - 8);
  v37 = *(v130 + 64);
  v38 = MEMORY[0x28223BE20](v133);
  v117 = &v112 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v112 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v112 - v43;
  v45 = type metadata accessor for PerspectiveCameraComponent();
  v131 = *(v45 - 8);
  v132 = v45;
  v46 = *(v131 + 64);
  MEMORY[0x28223BE20](v45);
  v120 = &v112 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(a1 + 48);
  result = swift_weakLoadStrong();
  if (result)
  {
    v50 = result;
    v114 = v18;
    v113 = v12;
    v115 = v15;
    v116 = v14;
    v51 = *(a1 + 44);
    GeometryProxy.size.getter();
    v53 = v52;
    GeometryProxy.size.getter();
    v55 = v54;
    v56 = OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
    swift_beginAccess();
    v57 = *(v50 + v56);
    dispatch thunk of ARView.scene.getter();

    active = dispatch thunk of Scene.internalActiveCamera.getter();

    if (!active)
    {
    }

    GeometryProxy.size.getter();
    v61 = _RealityViewImpl.computePPM(distance:size:)(a1, a4, v59, v60);
    if ((v61 & 0x100000000) != 0 || (v62 = *&v61, *&v61 <= 0.0))
    {
LABEL_23:
    }

    v112 = v50;
    v63 = v53 / v55;
    v64 = a3;
    v65 = v64 / *&v61;
    dispatch thunk of Entity.components.getter();
    v66 = v132;
    Entity.ComponentSet.subscript.getter();
    v67 = *(v130 + 8);
    v67(v44, v133);
    v68 = v131;
    if ((*(v131 + 48))(v36, 1, v66) == 1)
    {
      outlined destroy of PerspectiveCameraComponent?(v36, &_s10RealityKit26PerspectiveCameraComponentVSgMd, &_s10RealityKit26PerspectiveCameraComponentVSgMR);
      dispatch thunk of Entity.components.getter();
      v69 = v122;
      v70 = v125;
      Entity.ComponentSet.subscript.getter();
      v71 = v133;
      v67(v42, v133);
      v72 = v124;
      if ((*(v124 + 48))(v69, 1, v70) != 1)
      {
        (*(v72 + 32))(v123, v69, v70);
        v88 = v127;
        OrthographicCameraComponent.scaleDirection.getter();
        v90 = v128;
        v89 = v129;
        v91 = v126;
        (*(v128 + 104))(v126, *MEMORY[0x277CDB558], v129);
        LODWORD(v133) = static CameraFieldOfViewOrientation.== infix(_:_:)();
        v92 = *(v90 + 8);
        v92(v91, v89);
        v92(v88, v89);
        GeometryProxy.size.getter();
        if (v133)
        {
          v95 = a3 / v94;
        }

        else
        {
          v95 = a2 / v93;
        }

        v105 = v95;
        v96 = v123;
        v106 = OrthographicCameraComponent.scale.modify();
        *v107 = *v107 * v105;
        v106(v134, 0);
        v108 = v118;
        (*(v72 + 16))(v118, v96, v70);
        (*(v72 + 56))(v108, 0, 1, v70);
        v109 = dispatch thunk of Entity.components.modify();
        Entity.ComponentSet.subscript.setter();
        v109(v134, 0);
        goto LABEL_20;
      }

      outlined destroy of PerspectiveCameraComponent?(v69, &_s17RealityFoundation27OrthographicCameraComponentVSgMd, &_s17RealityFoundation27OrthographicCameraComponentVSgMR);
      v73 = v117;
      dispatch thunk of Entity.components.getter();
      v74 = v119;
      v70 = v116;
      Entity.ComponentSet.subscript.getter();
      v67(v73, v71);
      v72 = v115;
      if ((*(v115 + 48))(v74, 1, v70) == 1)
      {

        return outlined destroy of PerspectiveCameraComponent?(v74, &_s17RealityFoundation34ProjectiveTransformCameraComponentVSgMd, &_s17RealityFoundation34ProjectiveTransformCameraComponentVSgMR);
      }

      v96 = v114;
      (*(v72 + 32))(v114, v74, v70);
      ProjectiveTransformCameraComponent.transform.getter();
      if (v97 == 0.0)
      {
        v98 = 2.0 / v65;
LABEL_17:
        v99 = ProjectiveTransformCameraComponent.transform.modify();
        *v100 = v98 / v63;
        v99(v134, 0);
        v101 = ProjectiveTransformCameraComponent.transform.modify();
        *(v102 + 20) = v98;
        v101(v134, 0);
        v103 = v113;
        (*(v72 + 16))(v113, v96, v70);
        (*(v72 + 56))(v103, 0, 1, v70);
        v104 = dispatch thunk of Entity.components.modify();
        Entity.ComponentSet.subscript.setter();
        v104(v134, 0);
LABEL_20:

        return (*(v72 + 8))(v96, v70);
      }

      v110 = atanf((v65 * 0.5) / a4);
      v111 = v110 + v110;
      if (v111 != 0.0)
      {
        v98 = 1.0 / tanf(v111 * 0.5);
        goto LABEL_17;
      }

      (*(v72 + 8))(v96, v70);
      goto LABEL_23;
    }

    v75 = a2;
    v76 = v75 / v62;
    v77 = v120;
    (*(v68 + 32))(v120, v36, v66);
    v78 = v66;
    v79 = v127;
    PerspectiveCameraComponent.fieldOfViewOrientation.getter();
    v81 = v128;
    v80 = v129;
    v82 = v126;
    (*(v128 + 104))(v126, *MEMORY[0x277CDB558], v129);
    v83 = static CameraFieldOfViewOrientation.== infix(_:_:)();
    v84 = *(v81 + 8);
    v84(v82, v80);
    v84(v79, v80);
    v85 = (v65 * 0.5) / a4;
    if ((v83 & 1) == 0)
    {
      v85 = (v76 * 0.5) / (v63 * a4);
    }

    atanf(v85);
    PerspectiveCameraComponent.fieldOfViewInDegrees.setter();
    v86 = v121;
    (*(v68 + 16))(v121, v77, v78);
    (*(v68 + 56))(v86, 0, 1, v78);
    v87 = dispatch thunk of Entity.components.modify();
    Entity.ComponentSet.subscript.setter();
    v87(v134, 0);

    return (*(v68 + 8))(v77, v78);
  }

  return result;
}

double _RealityViewImpl.extendChild(_:extents:)(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v217 = a2;
  v242 = a4;
  v241 = a3;
  v5 = type metadata accessor for Entity.ChildCollection();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v201 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC15ChildCollectionV16IndexingIteratorVy__AEGMd, &_s10RealityKit6EntityC15ChildCollectionV16IndexingIteratorVy__AEGMR);
  v203 = *(v204 - 8);
  v8 = *(v203 + 64);
  MEMORY[0x28223BE20](v204);
  v202 = &v170 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v193 = &v170 - v12;
  v192 = type metadata accessor for GeometryProxy();
  v246.i64[0] = *(v192 - 8);
  v13 = *(v246.i64[0] + 64);
  MEMORY[0x28223BE20](v192);
  v198 = &v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for Scene.AnchorCollection();
  v245.i64[0] = *(v200 - 8);
  v15 = *(v245.i64[0] + 64);
  MEMORY[0x28223BE20](v200);
  v199 = &v170 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = type metadata accessor for CoordinateSpace();
  v244.i64[0] = *(v240 - 8);
  v17 = *(v244.i64[0] + 64);
  v18 = MEMORY[0x28223BE20](v240);
  v214 = &v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v218 = &v170 - v20;
  v222 = type metadata accessor for LocalCoordinateSpace();
  v243.i64[0] = *(v222 - 8);
  v21 = *(v243.i64[0] + 64);
  MEMORY[0x28223BE20](v222);
  v23 = &v170 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for RealityViewCameraContent(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = (&v170 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  v28 = *(*(v221 - 8) + 64);
  MEMORY[0x28223BE20](v221);
  v220 = &v170 - v29;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10MeshBufferV8IteratorVys5SIMD3VySfG_GMd, &_s17RealityFoundation10MeshBufferV8IteratorVys5SIMD3VySfG_GMR);
  v216.n128_u64[0] = *(v247 - 8);
  v30 = *(v216.n128_u64[0] + 64);
  MEMORY[0x28223BE20](v247);
  v234 = &v170 - v31;
  v223 = type metadata accessor for MeshResource.Part();
  v215.n128_u64[0] = *(v223 - 8);
  v32 = *(v215.n128_u64[0] + 64);
  MEMORY[0x28223BE20](v223);
  v233 = &v170 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit12MeshResourceC0A10FoundationE4PartVSgMd, &_s10RealityKit12MeshResourceC0A10FoundationE4PartVSgMR);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v224 = &v170 - v36;
  v37 = type metadata accessor for MeshPartCollection();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v186 = &v170 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for MeshPartCollection.Iterator();
  v209 = *(v185 - 8);
  v40 = *(v209 + 64);
  MEMORY[0x28223BE20](v185);
  v225 = &v170 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit12MeshResourceC0A10FoundationE5ModelVSgMd, &_s10RealityKit12MeshResourceC0A10FoundationE5ModelVSgMR);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v187 = &v170 - v44;
  v236 = type metadata accessor for MeshModelCollection();
  v228 = *(v236 - 8);
  v45 = *(v228 + 64);
  MEMORY[0x28223BE20](v236);
  v235 = &v170 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = type metadata accessor for MeshResource.Model();
  v208 = *(v237 - 8);
  v47 = *(v208 + 64);
  MEMORY[0x28223BE20](v237);
  v49 = &v170 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for MeshResource.Instance();
  v50 = *(v197 - 8);
  v51 = v50[8];
  MEMORY[0x28223BE20](v197);
  v196 = &v170 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit12MeshResourceC0A10FoundationE8InstanceVSgMd, &_s10RealityKit12MeshResourceC0A10FoundationE8InstanceVSgMR);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v205 = &v170 - v55;
  v56 = type metadata accessor for MeshInstanceCollection();
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8);
  v248.i64[0] = &v170 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for MeshInstanceCollection.Iterator();
  v190 = *(v191 - 8);
  v59 = *(v190 + 64);
  MEMORY[0x28223BE20](v191);
  v239 = &v170 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for MeshResource.Contents();
  v188 = *(v189 - 8);
  v61 = *(v188 + 64);
  MEMORY[0x28223BE20](v189);
  v238 = &v170 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14ModelComponentVSgMd, &_s10RealityKit14ModelComponentVSgMR);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63 - 8);
  v66 = &v170 - v65;
  v67 = type metadata accessor for Entity.ComponentSet();
  v68 = *(v67 - 8);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  v71 = &v170 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for ModelComponent();
  v206 = *(v207 - 8);
  v72 = *(v206 + 64);
  MEMORY[0x28223BE20](v207);
  v74 = &v170 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v183 = v74;
    v75 = *(v217 + 48);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {

      v195 = a1;
      dispatch thunk of Entity.components.getter();
      v76 = v207;
      Entity.ComponentSet.subscript.getter();
      (*(v68 + 8))(v71, v67);
      v77 = v206;
      if ((*(v206 + 48))(v66, 1, v76) == 1)
      {
        outlined destroy of PerspectiveCameraComponent?(v66, &_s10RealityKit14ModelComponentVSgMd, &_s10RealityKit14ModelComponentVSgMR);
      }

      else
      {
        (*(v77 + 32))(v183, v66, v76);
        ModelComponent.mesh.getter();
        MeshResource.contents.getter();

        MEMORY[0x23EEAC890](v78);
        MeshPartCollection.makeIterator()();
        v219 = OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
        v79 = v205;
        MeshInstanceCollection.Iterator.next()();
        v80 = v50[6];
        v81 = v197;
        v232 = v50 + 6;
        v231 = v80;
        if (v80(v79, 1, v197) == 1)
        {
          v215 = v242;
          v216 = v241;
        }

        else
        {
          v85 = v50[4];
          v84 = v50 + 4;
          v229 = v85;
          v228 += 8;
          v227 = (v208 + 48);
          v226 = (v84 - 3);
          v177 = (v208 + 32);
          v213 = (v215.n128_u64[0] + 48);
          v212 = (v215.n128_u64[0] + 32);
          v86 = (v243.i64[0] + 8);
          v182 = *MEMORY[0x277CDF958];
          v181 = (v244.i64[0] + 104);
          v194 = (v244.i64[0] + 8);
          v180 = (v245.i64[0] + 8);
          v178 = (v246.i64[0] + 48);
          v176 = (v246.i64[0] + 32);
          v175 = (v246.i64[0] + 8);
          v211 = (v216.n128_u64[0] + 8);
          v210 = (v215.n128_u64[0] + 8);
          v174 = (v209 + 8);
          v173 = (v208 + 8);
          v87 = v241;
          v82.n128_u64[0] = v241.n128_u64[0];
          v216 = v82;
          v88 = v242;
          v83.n128_u64[0] = v242.n128_u64[0];
          v215 = v83;
          v179 = v49;
          v230 = v84;
          do
          {
            v241 = v87;
            v242 = v88;
            v89 = v187;
            v90 = v196;
            v91 = v205;
            while (1)
            {
              v229(v90, v91, v81);
              v92 = v235;
              MeshResource.Contents.models.getter();
              MeshResource.Instance.model.getter();
              MeshModelCollection.subscript.getter();

              (*v228)(v92, v236);
              if ((*v227)(v89, 1, v237) != 1)
              {
                break;
              }

              (*v226)(v90, v81);
              outlined destroy of PerspectiveCameraComponent?(v89, &_s10RealityKit12MeshResourceC0A10FoundationE5ModelVSgMd, &_s10RealityKit12MeshResourceC0A10FoundationE5ModelVSgMR);
              MeshInstanceCollection.Iterator.next()();
              if (v231(v91, 1, v81) == 1)
              {
                v77 = v206;
                goto LABEL_60;
              }
            }

            (*v177)(v179, v89, v237);
            MeshResource.Instance.transform.getter();
            v245 = v94;
            v246 = v93;
            v244 = v95;
            v248 = v96;
            type metadata accessor for Entity();
            v97 = HasTransform.transformMatrix(relativeTo:)();
            v170 = v98;
            v171 = v99;
            v172 = v100;
            v243 = v101;
            MEMORY[0x23EEAC860](v97);
            MeshPartCollection.makeIterator()();
            v102 = v224;
            MeshPartCollection.Iterator.next()();
            v103 = v223;
            v209 = *v213;
            if ((v209)(v102, 1, v223) == 1)
            {
              v104 = v242.n128_u64[0];
              v105 = v241.n128_u64[0];
            }

            else
            {
              v208 = *v212;
              v246 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v170, v246.f32[0]), v171, *v246.f32, 1), v172, v246, 2), v243, v246, 3);
              v245 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v170, v245.f32[0]), v171, *v245.f32, 1), v172, v245, 2), v243, v245, 3);
              v244 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v170, v244.f32[0]), v171, *v244.f32, 1), v172, v244, 2), v243, v244, 3);
              v243 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v170, v248.f32[0]), v171, *v248.f32, 1), v172, v248, 2), v243, v248, 3);
              v108 = v247;
              v109 = Strong;
              (v208)(v233, v224, v103);
              while (1)
              {
                MeshBufferContainer.positions.getter();
                MeshBuffer.makeIterator()();
                v119 = v219;
                swift_beginAccess();
                MeshBuffer.Iterator.next()();
                if (v250)
                {
                  v110 = v108;
                  v104 = v242.n128_u64[0];
                  v105 = v241.n128_u64[0];
                  v111 = v234;
                  v112 = v233;
                }

                else
                {
                  v120 = v249;
                  v111 = v234;
                  v112 = v233;
                  v121 = v222;
                  do
                  {
                    while (1)
                    {
                      v248 = vaddq_f32(v243, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v246, v120.f32[0]), v245, *v120.f32, 1), v244, v120, 2));
                      outlined init with copy of RealityViewCameraContent(v109 + v119, v27);
                      v122 = v248;
                      v122.i32[3] = 0;
                      v248 = v122;
                      static CoordinateSpaceProtocol<>.local.getter();
                      v123 = *v27;
                      *&v124 = COERCE_DOUBLE(ARView.project(_:)());
                      if (v126)
                      {
                        break;
                      }

                      v127 = *&v124;
                      v128 = v125;
                      v129 = v218;
                      dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
                      v130 = v129;
                      v131 = v214;
                      (*v181)(v214, v182, v240);
                      lazy protocol witness table accessor for type CoordinateSpace and conformance CoordinateSpace(&lazy protocol witness table cache variable for type CoordinateSpace and conformance CoordinateSpace, MEMORY[0x277CDF970]);
                      v248.i64[0] = v123;
                      v132 = v240;
                      v133 = dispatch thunk of static Equatable.== infix(_:_:)();
                      v134 = *v194;
                      (*v194)(v131, v132);
                      if (v133)
                      {

                        v134(v130, v132);
                        v121 = v222;
                        (*v86)(v23, v222);
                        v111 = v234;
                        v119 = v219;
                      }

                      else
                      {
                        v216.n128_u64[0] = v134;
                        v135 = v248.i64[0];
                        dispatch thunk of ARView.scene.getter();
                        v136 = v199;
                        dispatch thunk of Scene.anchors.getter();

                        lazy protocol witness table accessor for type CoordinateSpace and conformance CoordinateSpace(&lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection, MEMORY[0x277CDB0C0]);
                        v137 = v200;
                        dispatch thunk of Collection.startIndex.getter();
                        dispatch thunk of Collection.endIndex.getter();
                        v119 = v219;
                        if (v251 == v249.i64[0])
                        {

                          (*v180)(v136, v137);
                          (v216.n128_u64[0])(v218, v240);
                          v121 = v222;
                          (*v86)(v23, v222);
                        }

                        else
                        {
                          v138 = dispatch thunk of Collection.subscript.read();
                          v140 = *v139;

                          v138(&v249, 0);
                          (*v180)(v136, v137);

                          v142 = v193;
                          specialized RealityCoordinateSpaceProjecting.getProxy(from:)(v141, v193);
                          v143 = v142;

                          v144 = v142;
                          v145 = v192;
                          v146 = (*v178)(v144, 1, v192);
                          v147 = v218;
                          v121 = v222;
                          if (v146 == 1)
                          {

                            (v216.n128_u64[0])(v147, v240);
                            (*v86)(v23, v121);
                            outlined destroy of PerspectiveCameraComponent?(v143, &_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
                          }

                          else
                          {
                            (*v176)(v198, v143, v145);
                            GeometryProxy.frame(in:)();
                            v149 = v148;
                            v151 = v150;

                            (*v175)(v198, v145);
                            (v216.n128_u64[0])(v147, v240);
                            (*v86)(v23, v121);
                            v127 = v127 - v149;
                            v128 = v128 - v151;
                          }
                        }

                        v111 = v234;
                      }

                      outlined destroy of RealityViewCameraContent(v27);
                      v154 = v127;
                      v110 = v247;
                      v112 = v233;
                      if (v241.n128_f32[0] <= v154)
                      {
                        v152.n128_u32[0] = v241.n128_u32[0];
                      }

                      else
                      {
                        v152.n128_f32[0] = v127;
                        if ((~LODWORD(v154) & 0x7F800000) == 0)
                        {
                          v155 = v127;
                          if ((LODWORD(v155) & 0x7FFFFF) != 0)
                          {
                            v152.n128_f32[0] = v241.n128_f32[0];
                          }

                          else
                          {
                            v152.n128_f32[0] = v127;
                          }
                        }
                      }

                      v156 = v128;
                      if (v241.n128_f32[1] <= v156)
                      {
                        v158 = v241.n128_f32[1];
                      }

                      else
                      {
                        v158 = v128;
                        if ((~LODWORD(v156) & 0x7F800000) == 0)
                        {
                          v157 = v128;
                          if ((LODWORD(v157) & 0x7FFFFF) != 0)
                          {
                            v158 = v241.n128_f32[1];
                          }

                          else
                          {
                            v158 = v128;
                          }
                        }
                      }

                      v153.n128_u32[0] = v242.n128_u32[0];
                      if (v242.n128_f32[0] <= v154)
                      {
                        if ((~LODWORD(v154) & 0x7F800000) != 0)
                        {
                          v153.n128_f32[0] = v127;
                        }

                        else
                        {
                          v159 = v127;
                          if ((LODWORD(v159) & 0x7FFFFF) == 0)
                          {
                            v153.n128_f32[0] = v127;
                          }
                        }
                      }

                      v160 = v242.n128_f32[1];
                      if (v242.n128_f32[1] <= v156)
                      {
                        if ((~LODWORD(v156) & 0x7F800000) != 0)
                        {
                          v160 = v128;
                        }

                        else
                        {
                          v161 = v128;
                          if ((LODWORD(v161) & 0x7FFFFF) == 0)
                          {
                            v160 = v128;
                          }
                        }
                      }

                      v152.n128_f32[1] = v158;
                      v216 = v152;
                      v153.n128_f32[1] = v160;
                      v215 = v153;
                      MeshBuffer.Iterator.next()();
                      v120 = v249;
                      v162.n128_u64[0] = v216.n128_u64[0];
                      v241 = v162;
                      v162.n128_u64[0] = v215.n128_u64[0];
                      v242 = v162;
                      v104 = v215.n128_u64[0];
                      v105 = v216.n128_u64[0];
                      if (v250)
                      {
                        goto LABEL_18;
                      }
                    }

                    (*v86)(v23, v121);
                    outlined destroy of RealityViewCameraContent(v27);
                    v110 = v247;
                    MeshBuffer.Iterator.next()();
                    v120 = v249;
                  }

                  while ((v250 & 1) == 0);
                  v104 = v242.n128_u64[0];
                  v105 = v241.n128_u64[0];
                }

LABEL_18:
                (*v211)(v111, v110);
                v113 = v112;
                v114 = v112;
                v115 = v223;
                (*v210)(v113, v223);
                v116 = v224;
                MeshPartCollection.Iterator.next()();
                v117 = (v209)(v116, 1, v115);
                v117.n128_u64[0] = v105;
                v241 = v117;
                v117.n128_u64[0] = v104;
                v242 = v117;
                v108 = v110;
                if (v118 == 1)
                {
                  break;
                }

                (v208)(v114, v116, v115);
              }
            }

            (*v174)(v225, v185);
            (*v173)(v179, v237);
            v81 = v197;
            (*v226)(v196, v197);
            v106 = v205;
            MeshInstanceCollection.Iterator.next()();
            v107 = v231(v106, 1, v81);
            v87.n128_u64[0] = v105;
            v88.n128_u64[0] = v104;
            v77 = v206;
          }

          while (v107 != 1);
        }

LABEL_60:
        (*(v190 + 8))(v239, v191);
        (*(v188 + 8))(v238, v189);
        (*(v77 + 8))(v183, v207);
        v242 = v215;
        v241 = v216;
      }

      type metadata accessor for Entity();
      HasHierarchy.children.getter();
      v163 = v202;
      Entity.ChildCollection.makeIterator()();
      v164 = v204;
      Entity.ChildCollection.IndexingIterator.next()();
      v165 = v217;
      while (v249.i64[0])
      {

        v167.n128_f64[0] = _RealityViewImpl.extendChild(_:extents:)(v166, v165, v241, v242);
        v241 = v167;
        v242 = v168;

        Entity.ChildCollection.IndexingIterator.next()();
      }

      (*(v203 + 8))(v163, v164);
    }
  }

  return v241.n128_f64[0];
}

unint64_t _RealityViewImpl.computePPM(distance:size:)(uint64_t a1, float a2, double a3, double a4)
{
  v8 = type metadata accessor for CoordinateSpace();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocalCoordinateSpace();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v84 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v75 - v18;
  v20 = type metadata accessor for RealityViewCameraContent(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = (&v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v26 = (&v75 - v25);
  v27 = *(a1 + 48);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v78 = v8;
    v77 = v9;
    v79 = v14;
    v30 = OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
    swift_beginAccess();
    v31 = *(v29 + v30);
    dispatch thunk of ARView.scene.getter();

    active = dispatch thunk of Scene.internalActiveCamera.getter();

    if (active)
    {
      type metadata accessor for Entity();
      HasTransform.transformMatrix(relativeTo:)();
      v83 = v33;
      v82 = v34;
      v81 = v35;
      v80 = v36;
      [*(v29 + v30) frame];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;
      [*(v29 + v30) setFrame_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
      inited = swift_initStackObject();
      v75 = xmmword_23B91A6D0;
      *(inited + 16) = xmmword_23B91A6D0;
      *(inited + 32) = 0;
      v46 = -a2;
      *(inited + 40) = v46;
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
      v76 = v47;
      swift_setDeallocating();
      simd_float4x4.transform(position:)();
      v76 = v48;
      v49 = swift_initStackObject();
      *(v49 + 16) = v75;
      *(v49 + 32) = 0x3F80000000000000;
      *(v49 + 40) = v46;
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v49);
      v75 = v50;
      swift_setDeallocating();
      simd_float4x4.transform(position:)();
      v83 = v51;
      outlined init with copy of RealityViewCameraContent(v29 + v30, v26);
      static CoordinateSpaceProtocol<>.local.getter();
      v52 = *v26;
      *&v53 = COERCE_DOUBLE(ARView.project(_:)());
      if (v54)
      {

        (*(v79 + 8))(v19, v13);
        v55 = v26;
      }

      else
      {
        *&v82 = active;
        v56 = *&v53;
        dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
        v57 = specialized RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v52, v12, v56);
        v59 = v58;
        v77 = *(v77 + 8);
        (v77)(v12, v78);
        v60 = *(v79 + 8);
        *&v81 = v13;
        *&v80 = v60;
        v60(v19, v13);
        outlined destroy of RealityViewCameraContent(v26);
        outlined init with copy of RealityViewCameraContent(v29 + v30, v24);
        v61 = v84;
        static CoordinateSpaceProtocol<>.local.getter();
        v62 = *v24;
        *&v63 = COERCE_DOUBLE(ARView.project(_:)());
        if ((v64 & 1) == 0)
        {
          v68 = *&v63;
          v69 = v81;
          dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
          v70 = specialized RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v62, v12, v68);
          v72 = v71;
          (v77)(v12, v78);
          (v80)(v61, v69);
          outlined destroy of RealityViewCameraContent(v24);
          [*(v29 + v30) setFrame_];

          v66 = 0;
          v73 = v57 - v70;
          v74 = v59 - v72;
          v65 = COERCE_UNSIGNED_INT(sqrtf((v73 * v73) + (v74 * v74)));
          goto LABEL_10;
        }

        (v80)(v61, v81);
        v55 = v24;
      }

      outlined destroy of RealityViewCameraContent(v55);
    }

    else
    {
    }
  }

  v65 = 0;
  v66 = 1;
LABEL_10:
  v85 = v66;
  return v65 | (v66 << 32);
}

uint64_t specialized RealityCoordinateSpaceProjecting.getProxy(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI0A19ViewCameraComponentVSgMd, &_s19_RealityKit_SwiftUI0A19ViewCameraComponentVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for Entity.ComponentSet();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RealityViewCameraComponent(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v21 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  swift_retain_n();
  dispatch thunk of Entity.components.getter();
  v23 = lazy protocol witness table accessor for type CoordinateSpace and conformance CoordinateSpace(&lazy protocol witness table cache variable for type RealityViewCameraComponent and conformance RealityViewCameraComponent, type metadata accessor for RealityViewCameraComponent);
  Entity.ComponentSet.subscript.getter();

  v16 = *(v8 + 8);
  v16(v11, v7);
  v17 = *(v13 + 48);
  if (v17(v6, 1, v12) == 1)
  {
    while (1)
    {
      outlined destroy of PerspectiveCameraComponent?(v6, &_s19_RealityKit_SwiftUI0A19ViewCameraComponentVSgMd, &_s19_RealityKit_SwiftUI0A19ViewCameraComponentVSgMR);
      v25 = a1;

      swift_getAtKeyPath();

      a1 = v26;

      if (!a1)
      {
        break;
      }

      dispatch thunk of Entity.components.getter();
      Entity.ComponentSet.subscript.getter();

      v16(v11, v7);
      if (v17(v6, 1, v12) != 1)
      {
        goto LABEL_4;
      }
    }

    v20 = type metadata accessor for GeometryProxy();
    return (*(*(v20 - 8) + 56))(v22, 1, 1, v20);
  }

  else
  {
LABEL_4:

    v18 = v21;
    outlined init with take of RealityViewCameraComponent(v6, v21);
    return outlined init with take of GeometryProxy?(v18, v22);
  }
}

uint64_t key path getter for HasHierarchy.parent : Entity@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for Entity();
  result = HasHierarchy.parent.getter();
  *a2 = result;
  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_9;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v2 = *(result + 32);
  if (v1 != 1)
  {
    v3 = *(result + 36);
    if (v1 != 2)
    {
      v4 = *(result + 40);
    }
  }

  if (v1 != 3)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_10;
  }

  if ((v1 - 1) > 3)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v2 = *(result + 32);
  if (v1 != 1)
  {
    v3 = *(result + 36);
    if (v1 != 2)
    {
      v4 = *(result + 40);
      if (v1 != 3)
      {
        v5 = *(result + 44);
      }
    }
  }

  if (v1 != 4)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t specialized _RealityViewImpl.computeExtents2D(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27OrthographicCameraComponentVSgMd, &_s17RealityFoundation27OrthographicCameraComponentVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v109 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v113 = &v100 - v7;
  v8 = type metadata accessor for OrthographicCameraComponent();
  v114 = *(v8 - 8);
  v115 = v8;
  v9 = *(v114 + 64);
  MEMORY[0x28223BE20](v8);
  v112 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CameraFieldOfViewOrientation();
  v117 = *(v11 - 8);
  v12 = *(v117 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v116 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v100 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26PerspectiveCameraComponentVSgMd, &_s10RealityKit26PerspectiveCameraComponentVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v110 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v100 - v21;
  v23 = type metadata accessor for Entity.ComponentSet();
  v121 = *(v23 - 8);
  v24 = *(v121 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v100 - v28;
  v30 = type metadata accessor for PerspectiveCameraComponent();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v118 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = a1;
  v34 = *(a1 + 48);
  v120 = v1;
  result = swift_weakLoadStrong();
  if (result)
  {
    v107 = v16;
    v111 = v11;
    v36 = (result + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content);
    v37 = result;
    swift_beginAccess();
    v108 = v36;
    v38 = *v36;
    dispatch thunk of ARView.scene.getter();

    active = dispatch thunk of Scene.internalActiveCamera.getter();

    if (!active)
    {
      goto LABEL_19;
    }

    v106 = v37;
    v40 = *(v119 + 44);
    GeometryProxy.size.getter();
    v42 = v41;
    GeometryProxy.size.getter();
    v44 = v43;
    v45 = v42 / v44;
    dispatch thunk of Entity.components.getter();
    Entity.ComponentSet.subscript.getter();
    v46 = *(v121 + 8);
    v121 += 8;
    v46(v29, v23);
    v47 = active;
    if ((*(v31 + 48))(v22, 1, v30) == 1)
    {
      outlined destroy of PerspectiveCameraComponent?(v22, &_s10RealityKit26PerspectiveCameraComponentVSgMd, &_s10RealityKit26PerspectiveCameraComponentVSgMR);
      v48 = v111;
    }

    else
    {
      v105 = active;
      (*(v31 + 32))(v118, v22, v30);
      v104 = v31;
      v49 = v107;
      PerspectiveCameraComponent.fieldOfViewOrientation.getter();
      v51 = v116;
      v50 = v117;
      v52 = *(v117 + 104);
      v102 = *MEMORY[0x277CDB550];
      v48 = v111;
      v103 = v117 + 104;
      v101 = v52;
      v52(v116);
      v53 = static CameraFieldOfViewOrientation.== infix(_:_:)();
      v54 = *(v50 + 8);
      v54(v51, v48);
      v54(v49, v48);
      if (v53)
      {
        v55 = v118;
        PerspectiveCameraComponent.fieldOfViewInDegrees.getter();
        v57 = tanf(((v56 * 3.1416) / 180.0) * 0.5);
        atanf(fabsf(v57) / v45);
        PerspectiveCameraComponent.fieldOfViewInDegrees.setter();
        v58 = v101;
        v101(v49, *MEMORY[0x277CDB558], v48);
        PerspectiveCameraComponent.fieldOfViewOrientation.setter();
        v59 = v104;
        v121 = *(v104 + 16);
        v60 = v110;
        (v121)(v110, v55, v30);
        v117 = *(v59 + 56);
        (v117)(v60, 0, 1, v30);
        v61 = dispatch thunk of Entity.components.modify();
        Entity.ComponentSet.subscript.setter();
        v61(v122, 0);
        v62 = v108[1];

        v64.n128_u64[0] = vneg_f32(0x7F0000007FLL);
        v65.n128_u64[0] = 0x7F0000007FLL;
        v66 = _RealityViewImpl.extendChild(_:extents:)(v63, v119, v64, v65);
        v68 = v67;

        PerspectiveCameraComponent.fieldOfViewInDegrees.setter();
        v58(v49, v102, v111);
        PerspectiveCameraComponent.fieldOfViewOrientation.setter();
        (v121)(v60, v55, v30);
        (v117)(v60, 0, 1, v30);
        v69 = dispatch thunk of Entity.components.modify();
        Entity.ComponentSet.subscript.setter();
        v69(v122, 0);
        (*(v104 + 8))(v55, v30);
        goto LABEL_15;
      }

      (*(v104 + 8))(v118, v30);
      v47 = v105;
    }

    dispatch thunk of Entity.components.getter();
    v70 = v113;
    v71 = v115;
    Entity.ComponentSet.subscript.getter();
    v46(v27, v23);
    v72 = v114;
    if ((*(v114 + 48))(v70, 1, v71) == 1)
    {
      outlined destroy of PerspectiveCameraComponent?(v70, &_s17RealityFoundation27OrthographicCameraComponentVSgMd, &_s17RealityFoundation27OrthographicCameraComponentVSgMR);
    }

    else
    {
      v105 = v47;
      v73 = v112;
      (*(v72 + 32))(v112, v70, v71);
      v74 = v107;
      OrthographicCameraComponent.scaleDirection.getter();
      v76 = v116;
      v75 = v117;
      v77 = *(v117 + 104);
      LODWORD(v121) = *MEMORY[0x277CDB550];
      v118 = v77;
      (v77)(v116);
      v78 = static CameraFieldOfViewOrientation.== infix(_:_:)();
      v79 = *(v75 + 8);
      v79(v76, v48);
      v79(v74, v48);
      if (v78)
      {
        OrthographicCameraComponent.scale.getter();
        OrthographicCameraComponent.scale.setter();
        v80 = v118;
        (v118)(v74, *MEMORY[0x277CDB558], v48);
        OrthographicCameraComponent.scaleDirection.setter();
        v117 = *(v72 + 16);
        v81 = v109;
        (v117)(v109, v73, v71);
        v116 = *(v72 + 56);
        (v116)(v81, 0, 1, v71);
        v82 = dispatch thunk of Entity.components.modify();
        Entity.ComponentSet.subscript.setter();
        v82(v122, 0);
        v83 = v108[1];

        v85.n128_u64[0] = vneg_f32(0x7F0000007FLL);
        v86.n128_u64[0] = 0x7F0000007FLL;
        v66 = _RealityViewImpl.extendChild(_:extents:)(v84, v119, v85, v86);
        v68 = v87;

        v88 = v112;
        OrthographicCameraComponent.scale.setter();
        (v80)(v74, v121, v111);
        OrthographicCameraComponent.scaleDirection.setter();
        (v117)(v81, v88, v71);
        (v116)(v81, 0, 1, v71);
        v89 = dispatch thunk of Entity.components.modify();
        Entity.ComponentSet.subscript.setter();
        v89(v122, 0);
        (*(v72 + 8))(v88, v71);
        goto LABEL_15;
      }

      (*(v72 + 8))(v73, v71);
    }

    v90 = v108[1];

    v92.n128_u64[0] = vneg_f32(0x7F0000007FLL);
    v93.n128_u64[0] = 0x7F0000007FLL;
    v66 = _RealityViewImpl.extendChild(_:extents:)(v91, v119, v92, v93);
    v68 = v94;

LABEL_15:
    v95 = vmvn_s8(vceq_f32(*&v66, *&v66));
    if ((vpmax_u32(v95, v95).u32[0] & 0x80000000) == 0)
    {
      v96 = vmvn_s8(vceq_f32(v68, v68));
      if ((vpmax_u32(v96, v96).u32[0] & 0x80000000) == 0)
      {
        v97 = vneg_f32(0x7F0000007FLL);
        v98 = vcgt_s32(v97, (*&v66 & 0x7FFFFFFF7FFFFFFFLL));
        if ((vpmin_u32(v98, v98).u32[0] & 0x80000000) != 0)
        {

          v99 = vcgt_s32(v97, (*&v68 & 0x7FFFFFFF7FFFFFFFLL));
          if ((vpmin_u32(v99, v99).u32[0] & 0x80000000) != 0)
          {
            return *&v66;
          }

          return 0;
        }
      }
    }

LABEL_19:

    return 0;
  }

  return result;
}

uint64_t outlined init with copy of RealityViewCameraContent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RealityViewCameraContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RealityViewCameraContent(uint64_t a1)
{
  v2 = type metadata accessor for RealityViewCameraContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type CoordinateSpace and conformance CoordinateSpace(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of PerspectiveCameraComponent?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of RealityViewCameraComponent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RealityViewCameraComponent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of GeometryProxy?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if ((v1 - 1) > 1)
    {
      __break(1u);
    }

    else
    {
      v2 = *(result + 32);
      if (v1 != 1)
      {
        v3 = *(result + 36);
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

void *_ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySdG_SaySdGTt1g5Tf4g_n(void *result)
{
  v1 = result[2];
  if (!v1)
  {
    goto LABEL_9;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v2 = result[4];
  if (v1 != 1)
  {
    v3 = result[5];
    if (v1 != 2)
    {
      v4 = result[6];
    }
  }

  if (v1 != 3)
  {
    goto LABEL_9;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.RealityViewLayoutOptionKey and conformance EnvironmentValues.RealityViewLayoutOptionKey()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.RealityViewLayoutOptionKey and conformance EnvironmentValues.RealityViewLayoutOptionKey;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.RealityViewLayoutOptionKey and conformance EnvironmentValues.RealityViewLayoutOptionKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.RealityViewLayoutOptionKey and conformance EnvironmentValues.RealityViewLayoutOptionKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RealityViewLayoutOption and conformance RealityViewLayoutOption()
{
  result = lazy protocol witness table cache variable for type RealityViewLayoutOption and conformance RealityViewLayoutOption;
  if (!lazy protocol witness table cache variable for type RealityViewLayoutOption and conformance RealityViewLayoutOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RealityViewLayoutOption and conformance RealityViewLayoutOption);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FreeformScanModeManager.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FreeformScanModeManager.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](v1);
  return Hasher._finalize()();
}

void FreeformScanModeManager.state.didset(unsigned __int8 a1)
{
  if (*(v1 + 16) != a1)
  {
    v2 = v1;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, logger);

    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v15 = v6;
      *v5 = 136446466;
      v7 = String.init<A>(describing:)();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v15);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2082;
      v14 = *(v2 + 16);
      v10 = String.init<A>(describing:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

      *(v5 + 14) = v12;
      _os_log_impl(&dword_23B824000, oslog, v4, "State changed from %{public}s to %{public}s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v6, -1, -1);
      MEMORY[0x23EEB0B70](v5, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t FreeformScanModeManager.update(cameraPositionWorld:boundingBoxWorld:)(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static BoundingBoxHelpers.getBoundingSphere(boxWorld:));
  v21 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, v6.f32[0]), a3, *v6.f32, 1), a4, v6, 2), a5, v6, 3);
  Transform.init(matrix:)();
  v8 = vmulq_f32(v7, v7);
  v9 = sqrtf(v8.f32[2] + vaddv_f32(*v8.f32)) * 0.5;
  v10 = vsubq_f32(a1, v21);
  v11 = vmulq_f32(v10, v10);
  v12 = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
  v13 = v9 * 0.03;
  if ((v9 * 0.03) > 0.1)
  {
    v13 = 0.1;
  }

  v14 = *(v5 + 16);
  if (!*(v5 + 16))
  {
    if (v12 >= v9)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    goto LABEL_12;
  }

  if (v14 == 1)
  {
    if (v12 <= (v9 - v13))
    {
      v15 = 2;
LABEL_12:
      *(v5 + 16) = v15;
      FreeformScanModeManager.state.didset(v14);
    }
  }

  else if ((v9 + v13) <= v12)
  {
    v15 = 1;
    goto LABEL_12;
  }

  return *(v5 + 16);
}

uint64_t getEnumTagSinglePayload for FreeformScanModeManager.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FreeformScanModeManager.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type FreeformScanModeManager.State and conformance FreeformScanModeManager.State()
{
  result = lazy protocol witness table cache variable for type FreeformScanModeManager.State and conformance FreeformScanModeManager.State;
  if (!lazy protocol witness table cache variable for type FreeformScanModeManager.State and conformance FreeformScanModeManager.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FreeformScanModeManager.State and conformance FreeformScanModeManager.State);
  }

  return result;
}

uint64_t protocol witness for CGPathProviding.cgPath.getter in conformance Path()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return Path.cgPath.getter();
}

uint64_t MeshResource.ShapeExtrusionOptions.chamferProfile.getter@<X0>(int8x16_t *a1@<X8>)
{
  MeshResource.ShapeExtrusionOptions._chamferProfileStorage.getter();
  if (v12)
  {
    outlined init with take of Animation(&v11, v13);
    outlined init with take of Animation(v13, &v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15CGPathProviding_pMd, &_s17RealityFoundation15CGPathProviding_pMR);
    result = swift_dynamicCast();
    v3 = v10;
    if (result)
    {
      v4 = -1;
    }

    else
    {
      v3 = -1;
      v4 = 0;
    }

    v5 = vdupq_n_s64(v4);
    v6 = vandq_s8(v8, v5);
    v7 = vandq_s8(v9, v5);
  }

  else
  {
    result = outlined destroy of CGPathProviding?(&v11);
    v6 = 0uLL;
    v3 = -1;
    v7 = 0uLL;
  }

  *a1 = v6;
  a1[1] = v7;
  a1[2].i8[0] = v3;
  return result;
}

uint64_t outlined destroy of CGPathProviding?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15CGPathProviding_pSgMd, &_s17RealityFoundation15CGPathProviding_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t key path setter for MeshResource.ShapeExtrusionOptions.chamferProfile : MeshResource.ShapeExtrusionOptions(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v5 != 255)
  {
    lazy protocol witness table accessor for type Path and conformance Path();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v2;
    *(v6 + 32) = v3;
    *(v6 + 40) = v4;
    *(v6 + 48) = v5;
  }

  outlined copy of Path?(v1, v2, v3, v4, v5);
  return MeshResource.ShapeExtrusionOptions._chamferProfileStorage.setter();
}

uint64_t MeshResource.ShapeExtrusionOptions.chamferProfile.setter(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 != 255)
  {
    lazy protocol witness table accessor for type Path and conformance Path();
    v3 = swift_allocObject();
    v4 = *(a1 + 16);
    *(v3 + 16) = *a1;
    *(v3 + 32) = v4;
    *(v3 + 48) = v1;
  }

  return MeshResource.ShapeExtrusionOptions._chamferProfileStorage.setter();
}

unint64_t lazy protocol witness table accessor for type Path and conformance Path()
{
  result = lazy protocol witness table cache variable for type Path and conformance Path;
  if (!lazy protocol witness table cache variable for type Path and conformance Path)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Path and conformance Path);
  }

  return result;
}

uint64_t outlined consume of Path.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

void (*MeshResource.ShapeExtrusionOptions.chamferProfile.modify(int8x16_t **a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[2].i64[1] = v1;
  MeshResource.ShapeExtrusionOptions.chamferProfile.getter(v3);
  return MeshResource.ShapeExtrusionOptions.chamferProfile.modify;
}

void MeshResource.ShapeExtrusionOptions.chamferProfile.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = *(*a1 + 32);
  if (a2)
  {
    if (v7 != 255)
    {
      lazy protocol witness table accessor for type Path and conformance Path();
      v8 = swift_allocObject();
      *(v8 + 16) = v4;
      *(v8 + 24) = v3;
      *(v8 + 32) = v6;
      *(v8 + 40) = v5;
      *(v8 + 48) = v7;
    }

    v10 = v2[5];
    outlined copy of Path?(v4, v3, v6, v5, v7);
    MeshResource.ShapeExtrusionOptions._chamferProfileStorage.setter();
    outlined consume of Path?(*v2, v2[1], v2[2], v2[3], *(v2 + 32));
  }

  else
  {
    if (v7 != 255)
    {
      lazy protocol witness table accessor for type Path and conformance Path();
      v9 = swift_allocObject();
      *(v9 + 16) = v4;
      *(v9 + 24) = v3;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      *(v9 + 48) = v7;
    }

    v11 = v2[5];
    MeshResource.ShapeExtrusionOptions._chamferProfileStorage.setter();
  }

  free(v2);
}

uint64_t outlined copy of Path?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return outlined copy of Path.Storage(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t outlined copy of Path.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

uint64_t outlined consume of Path?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return outlined consume of Path.Storage(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t MeshResource.init(extruding:extrusionOptions:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MeshResource.ShapeExtrusionOptions();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Path.cgPath.getter();
  (*(v5 + 16))(v8, a2, v4);
  v9 = MeshResource.init(extruding:extrusionOptions:)();
  (*(v5 + 8))(a2, v4);
  outlined destroy of Path(a1);
  return v9;
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for MeshResource.ShapeExtrusionOptions();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](MeshResource.init(extruding:extrusionOptions:), 0, 0);
}

uint64_t MeshResource.init(extruding:extrusionOptions:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v6 = Path.cgPath.getter();
  (*(v2 + 16))(v1, v5, v3);
  v7 = *(MEMORY[0x277CDAC28] + 4);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = MeshResource.init(extruding:extrusionOptions:);
  v9 = v0[7];
  v10 = v0[4];

  return MEMORY[0x282128D08](v6, v9);
}

{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  outlined destroy of Path(v0[2]);
  (*(v2 + 8))(v4, v3);

  v5 = v0[1];
  v6 = v0[10];

  return v5(v6);
}

{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  outlined destroy of Path(v0[2]);
  (*(v2 + 8))(v4, v3);

  v5 = v0[1];
  v6 = v0[9];

  return v5();
}

{
  return MEMORY[0x282128D00]();
}

uint64_t MeshResource.init(extruding:extrusionOptions:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = MeshResource.init(extruding:extrusionOptions:);
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = MeshResource.init(extruding:extrusionOptions:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t ObjectCaptureView.init(session:cameraFeedOverlay:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = *(type metadata accessor for ObjectCaptureView() + 36);

  a2(v5);
}

uint64_t ObjectCaptureView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v24 = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v7 + 24);
  v10 = type metadata accessor for InternalCaptureView();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v2;
  (*(v5 + 16))(v9, &v2[*(a1 + 36)], v4);

  InternalCaptureView.init(session:cameraFeedOverlay:)(v19, v9, v4, v15);
  swift_getWitnessTable();
  v20 = v11[2];
  v20(v17, v15, v10);
  v21 = v11[1];
  v21(v15, v10);
  v20(v24, v17, v10);
  return (v21)(v17, v10);
}

uint64_t InternalCaptureView.init(session:cameraFeedOverlay:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[2] = a1;
  v8 = *(type metadata accessor for InternalCaptureView() + 40);
  v9 = *(a3 - 8);
  (*(v9 + 16))(a4 + v8, a2, a3);
  v10 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  type metadata accessor for DataModel(0);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel);

  v11 = ObservedObject.init(wrappedValue:)();
  v13 = v12;
  result = (*(v9 + 8))(a2, a3);
  *a4 = v11;
  a4[1] = v13;
  return result;
}

uint64_t InternalCaptureView.body.getter(uint64_t a1)
{
  Transaction.disablesAnimations.setter();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for ARViewContainer();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMd, &_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMR);
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  withTransaction<A>(_:_:)();
}

uint64_t closure #1 in InternalCaptureView.body.getter()
{
  static Alignment.center.getter();
  type metadata accessor for ARViewContainer();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMd, &_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMR);
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>();
  swift_getWitnessTable();
  return ZStack.init(alignment:content:)();
}

uint64_t closure #1 in closure #1 in InternalCaptureView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a4;
  v71 = a3;
  v6 = type metadata accessor for ARViewContainer();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMd, &_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMR);
  v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR);
  v73 = v7;
  swift_getTupleTypeMetadata3();
  v8 = type metadata accessor for TupleView();
  v75 = *(v8 - 8);
  v9 = *(v75 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v74 = v65 - v11;
  v76 = *(a2 - 8);
  v12 = *(v76 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v6;
  v16 = *(v6 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v13);
  v20 = (v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v22 = v65 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMR);
  v80 = v8;
  v77 = type metadata accessor for _ConditionalContent();
  v79 = *(v77 - 8);
  v24 = *(v79 + 64);
  MEMORY[0x28223BE20](v77);
  v26 = v65 - v25;
  v27 = a1;
  v28 = *(a1 + 8);
  if (*(v28 + 16))
  {
    v69 = v23;
    v70 = v65 - v25;
    v29 = type metadata accessor for InternalCaptureView();
    (*(v76 + 16))(v15, v27 + *(v29 + 40), a2);

    ARViewContainer.init(model:cameraFeedOverlay:)(v15, a2, v20);
    v30 = v81;
    WitnessTable = swift_getWitnessTable();
    v65[0] = v16[2];
    v65[1] = v16 + 2;
    (v65[0])(v22, v20, v30);
    v67 = v16[1];
    v68 = v20;
    v67(v20, v30);
    if (*(v28 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) > 1u)
    {
      v41 = *(*(v27 + 16) + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
      type metadata accessor for DataModel(0);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel);

      v76 = ObservedObject.init(wrappedValue:)();
      v43 = v42;
      v44 = [objc_opt_self() currentDevice];
      LODWORD(v41) = [v44 userInterfaceIdiom] == 1;

      v45 = qword_23B91AC00[v41];
      LOBYTE(v109) = 0;
      State.init(wrappedValue:)();
      LOBYTE(v92) = 1;
      *&v109 = v76;
      *(&v109 + 1) = v43;
      *&v110 = v45;
      BYTE8(v110) = v117;
      *&v111 = *(&v117 + 1);
      v116 = 1;
    }

    else
    {
      v31 = *(*(v27 + 16) + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);

      specialized ARObjectCapturingView.init(model:)(&v109);
      LOBYTE(v92) = 0;
      v116 = 0;
    }

    lazy protocol witness table accessor for type ARObjectCapturingView and conformance ARObjectCapturingView();
    lazy protocol witness table accessor for type ARFreeformCapturingView and conformance ARFreeformCapturingView();
    _ConditionalContent<>.init(storage:)();
    v76 = v22;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v109 == 1)
    {
      v46 = static HorizontalAlignment.center.getter();
      closure #1 in closure #1 in closure #1 in InternalCaptureView.body.getter(v27, &v109);
      v48 = *(&v109 + 1);
      v47 = v109;
      v49 = v110;
      v50 = *(&v110 + 1);
      v51 = v111;
      v52 = BYTE8(v111);
      LOBYTE(v109) = 1;
      LOBYTE(v92) = v110;
      LOBYTE(v101[0]) = BYTE8(v111);
      v53 = static Color.yellow.getter();
      KeyPath = swift_getKeyPath();
      v103 = v46;
      LOBYTE(v104) = 1;
      *(&v104 + 1) = v47;
      BYTE8(v105) = v49;
      LOBYTE(v107) = v52;
    }

    else
    {
      v48 = 0;
      v50 = 0;
      v51 = 0;
      KeyPath = 0;
      v53 = 0;
      *(&v105 + 1) = 0;
      *&v107 = 0;
      v103 = 0u;
      v104 = 0u;
    }

    v55 = v68;
    *&v105 = v48;
    *&v106 = v50;
    *(&v106 + 1) = v51;
    *(&v107 + 1) = KeyPath;
    v108 = v53;
    v56 = v81;
    (v65[0])(v68, v76, v81);
    v96 = v121;
    v97 = v122;
    v98 = v123;
    v99 = v124;
    v92 = v117;
    v93 = v118;
    v94 = v119;
    v95 = v120;
    v100[0] = v55;
    v100[1] = &v92;
    v88 = v105;
    v89 = v106;
    v90 = v107;
    v91 = v108;
    v86 = v103;
    v87 = v104;
    v100[2] = &v86;
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v117, &v109, &_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMd, &_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMR);
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v103, &v109, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR);
    v85[0] = v56;
    v85[1] = v73;
    v85[2] = v72;
    v82 = WitnessTable;
    v83 = lazy protocol witness table accessor for type _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView> and conformance <> _ConditionalContent<A, B>();
    v84 = lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Spacer)>>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?();
    v57 = v74;
    static ViewBuilder.buildBlock<each A>(_:)(v100, 3uLL, v85);
    v101[2] = v88;
    v101[3] = v89;
    v101[4] = v90;
    v102 = v91;
    v101[0] = v86;
    v101[1] = v87;
    outlined destroy of PerspectiveCameraComponent?(v101, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR);
    v113 = v96;
    v114 = v97;
    v115 = v98;
    v116 = v99;
    v109 = v92;
    v110 = v93;
    v111 = v94;
    v112 = v95;
    outlined destroy of PerspectiveCameraComponent?(&v109, &_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMd, &_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMR);
    v58 = v67;
    v67(v55, v56);
    v59 = v80;
    swift_getWitnessTable();
    lazy protocol witness table accessor for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    v26 = v70;
    static ViewBuilder.buildEither<A, B>(first:)(v57, v59);
    outlined destroy of PerspectiveCameraComponent?(&v103, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR);
    outlined destroy of PerspectiveCameraComponent?(&v117, &_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMd, &_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMR);
    (*(v75 + 8))(v57, v59);
    v58(v76, v56);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v32 = Text.init(_:tableName:bundle:comment:)();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = static Edge.Set.all.getter();
    *&v117 = v32;
    *(&v117 + 1) = v34;
    v36 &= 1u;
    LOBYTE(v118) = v36;
    *(&v118 + 1) = v38;
    LOBYTE(v119) = v39;
    v40 = v80;
    swift_getWitnessTable();
    lazy protocol witness table accessor for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    static ViewBuilder.buildEither<A, B>(second:)(&v117, v40, v23);
    outlined consume of Text.Storage(v32, v34, v36);
  }

  v60 = swift_getWitnessTable();
  v61 = lazy protocol witness table accessor for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>();
  v125 = v60;
  v126 = v61;
  v62 = v77;
  swift_getWitnessTable();
  v63 = v79;
  (*(v79 + 16))(v78, v26, v62);
  return (*(v63 + 8))(v26, v62);
}

uint64_t closure #1 in closure #1 in closure #1 in InternalCaptureView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0x203D204F5349;
  v6._object = 0xE600000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v6);
  v7 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v8);
  LocalizedStringKey.init(stringInterpolation:)();
  v9 = Text.init(_:tableName:bundle:comment:)();
  v11 = v10;
  *a2 = v9;
  *(a2 + 8) = v10;
  v13 = v12 & 1;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  outlined copy of Text.Storage(v9, v10, v12 & 1);

  outlined consume of Text.Storage(v9, v11, v13);
}

uint64_t static ViewBuilder.buildBlock<each A>(_:)(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return TupleView.init(_:)();
}

uint64_t ObjectCaptureView.hideObjectReticle(_:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v31 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DispatchQoS();
  v28 = *(v9 - 8);
  v29 = v9;
  v10 = *(v28 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  type metadata accessor for OS_dispatch_queue();
  v16 = static OS_dispatch_queue.main.getter();
  v17 = *(v14 + 16);
  v25 = v16;
  v26 = v17;
  v17(&v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], v3, a2);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = *(a2 + 16);
  (*(v14 + 32))(v19 + v18, &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], a2);
  *(v19 + v18 + v15) = v24;
  aBlock[4] = partial apply for closure #1 in ObjectCaptureView.hideObjectReticle(_:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v25;
  MEMORY[0x23EEAF960](0, v13, v8, v20);
  _Block_release(v20);

  (*(v30 + 8))(v8, v5);
  (*(v28 + 8))(v13, v29);
  return v26(v31, v27, a2);
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t closure #1 in ObjectCaptureView.hideObjectReticle(_:)(void *a1)
{
  v1 = *(*a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t partial apply for closure #1 in ObjectCaptureView.hideObjectReticle(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for ObjectCaptureView() - 8);
  v4 = (v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
  v5 = *(v4 + *(v3 + 64));

  return closure #1 in ObjectCaptureView.hideObjectReticle(_:)(v4);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

{
  v1 = *(a1 + 40);
  return (*(a1 + 32))();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata completion function for ObjectCaptureView(uint64_t a1)
{
  result = type metadata accessor for ObjectCaptureSession(319);
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ObjectCaptureView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for ObjectCaptureView(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

void type metadata completion function for InternalCaptureView(uint64_t a1)
{
  type metadata accessor for ObservedObject<DataModel>();
  if (v2 <= 0x3F)
  {
    type metadata accessor for ObjectCaptureSession(319);
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for InternalCaptureView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for InternalCaptureView(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void type metadata accessor for ObservedObject<DataModel>()
{
  if (!lazy cache variable for type metadata for ObservedObject<DataModel>)
  {
    type metadata accessor for DataModel(255);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ObservedObject<DataModel>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in InternalCaptureView.body.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return closure #1 in InternalCaptureView.body.getter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

float key path getter for DataModel.cameraIso : DataModel@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t key path setter for DataModel.cameraIso : DataModel(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for DataModel.debuggingMode : DataModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for DataModel.debuggingMode : DataModel(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type ARObjectCapturingView and conformance ARObjectCapturingView()
{
  result = lazy protocol witness table cache variable for type ARObjectCapturingView and conformance ARObjectCapturingView;
  if (!lazy protocol witness table cache variable for type ARObjectCapturingView and conformance ARObjectCapturingView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARObjectCapturingView and conformance ARObjectCapturingView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ARFreeformCapturingView and conformance ARFreeformCapturingView()
{
  result = lazy protocol witness table cache variable for type ARFreeformCapturingView and conformance ARFreeformCapturingView;
  if (!lazy protocol witness table cache variable for type ARFreeformCapturingView and conformance ARFreeformCapturingView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ARFreeformCapturingView and conformance ARFreeformCapturingView);
  }

  return result;
}

uint64_t outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMd, &_s7SwiftUI19_ConditionalContentVy012_RealityKit_aB021ARObjectCapturingViewVAD010ARFreeformhI0VGMR);
    lazy protocol witness table accessor for type ARObjectCapturingView and conformance ARObjectCapturingView();
    lazy protocol witness table accessor for type ARFreeformCapturingView and conformance ARFreeformCapturingView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Spacer)>>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Spacer)>>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Spacer)>>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Spacer)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Spacer)>>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, Spacer)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Spacer)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Spacer)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text, Spacer)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA6SpacerVtGGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, Spacer)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.foregroundColor : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for EnvironmentValues.foregroundColor : EnvironmentValues, serialized(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t ObjectCaptureSession.Updates.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D857A0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = *(a2 + 16);
  v8 = type metadata accessor for AsyncStream.Iterator();
  *v6 = v2;
  v6[1] = ObjectCaptureSession.Updates.Iterator.next();

  return MEMORY[0x2822003F0](a1, v8);
}

uint64_t ObjectCaptureSession.Updates.Iterator.next()()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance ObjectCaptureSession.Updates<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance ObjectCaptureSession.Updates<A>.Iterator;

  return ObjectCaptureSession.Updates.Iterator.next()(a1, a2);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance ObjectCaptureSession.Updates<A>.Iterator()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _s19_RealityKit_SwiftUI20ObjectCaptureSessionC7UpdatesV8IteratorVy_x_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = _s19_RealityKit_SwiftUI20ObjectCaptureSessionC7UpdatesV8IteratorVy_x_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t _s19_RealityKit_SwiftUI20ObjectCaptureSessionC7UpdatesV8IteratorVy_x_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t ObjectCaptureSession.Updates.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for AsyncStream.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  type metadata accessor for AsyncStream();
  AsyncStream.makeAsyncIterator()();
  return (*(v5 + 32))(a2, v8, v4);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance ObjectCaptureSession.Updates<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ObjectCaptureSession.Updates.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t ObjectCaptureSession.Error.localizedDescription.getter()
{
  v1 = type metadata accessor for ObjectCaptureSession.Error(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  outlined init with copy of ObjectCaptureSession.Error(v0, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ObjectCaptureSession.Error);
  return String.init<A>(describing:)();
}

uint64_t ObjectCaptureSession.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  ObjectCaptureSession.init()();
  return v3;
}

void ObjectCaptureSession.init()()
{
  v1 = v0;
  v2 = MEMORY[0x277D84FA0];
  *(v0 + 16) = 0;
  *(v0 + 24) = v2;
  *(v0 + 32) = 4;
  *(v0 + 40) = 0;
  v3 = v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__configuration;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  *(v3 + *(type metadata accessor for ObjectCaptureSession.Configuration(0) + 20)) = 0;
  v5 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_tornDown;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI22UnsafeSendableInstance33_F555F9351C483C251602142343A1B4ACLLCySbGMd, &_s19_RealityKit_SwiftUI22UnsafeSendableInstance33_F555F9351C483C251602142343A1B4ACLLCySbGMR);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = *(*v9 + 88);
  swift_beginAccess();
  Atomic.init(wrappedValue:)();
  swift_endAccess();
  *(v1 + v5) = v9;
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__subscriptions) = v2;
  v11 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_stateUpdater;
  v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AsyncUpdateStreamContainerCy01_A11Kit_SwiftUI20ObjectCaptureSessionC0K5StateOGMd, &_s17RealityFoundation26AsyncUpdateStreamContainerCy01_A11Kit_SwiftUI20ObjectCaptureSessionC0K5StateOGMR));
  *(v1 + v11) = AsyncUpdateStreamContainer.init(name:)();
  v13 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_feedbackUpdater;
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AsyncUpdateStreamContainerCyShy01_A11Kit_SwiftUI20ObjectCaptureSessionC8FeedbackOGGMd, &_s17RealityFoundation26AsyncUpdateStreamContainerCyShy01_A11Kit_SwiftUI20ObjectCaptureSessionC8FeedbackOGGMR));
  *(v1 + v13) = AsyncUpdateStreamContainer.init(name:)();
  v15 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_cameraTrackingUpdater;
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AsyncUpdateStreamContainerCy01_A11Kit_SwiftUI20ObjectCaptureSessionC8TrackingOGMd, &_s17RealityFoundation26AsyncUpdateStreamContainerCy01_A11Kit_SwiftUI20ObjectCaptureSessionC8TrackingOGMR));
  *(v1 + v15) = AsyncUpdateStreamContainer.init(name:)();
  v17 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_isPausedUpdater;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AsyncUpdateStreamContainerCySbGMd, &_s17RealityFoundation26AsyncUpdateStreamContainerCySbGMR);
  v19 = objc_allocWithZone(v18);
  *(v1 + v17) = AsyncUpdateStreamContainer.init(name:)();
  v20 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_userCompletedScanPassUpdater;
  v21 = objc_allocWithZone(v18);
  *(v1 + v20) = AsyncUpdateStreamContainer.init(name:)();
  v22 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_canRequestImageCaptureUpdater;
  v23 = objc_allocWithZone(v18);
  *(v1 + v22) = AsyncUpdateStreamContainer.init(name:)();
  v24 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_numberOfShotsTakenUpdater;
  v25 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AsyncUpdateStreamContainerCySiGMd, &_s17RealityFoundation26AsyncUpdateStreamContainerCySiGMR));
  *(v1 + v24) = AsyncUpdateStreamContainer.init(name:)();
  ObservationRegistrar.init()();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, logger);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_23B824000, v27, v28, "~~~ ObjectCaptureSession init was called! ~~~", v29, 2u);
    MEMORY[0x23EEB0B70](v29, -1, -1);
  }

  v30 = type metadata accessor for DataModel(0);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel) = DataModel.init()();
  v36[0] = 0;
  ObjectCaptureSession.setState(_:)(v36);
  ObjectCaptureSession.setFeedback(_:)(MEMORY[0x277D84FA0]);
  LOBYTE(v36[0]) = 4;
  ObjectCaptureSession.setCameraTracking(_:)(v36);
  ObjectCaptureSession.setIsPaused(_:)(0);
  ObjectCaptureSession.setCanRequestImageCapture(_:)(0);
  ObjectCaptureSession.setNumberOfShotsTaken(_:)(0);
  ObjectCaptureSession.setUserCompletedScanPass(_:)(0);
  type metadata accessor for ObjectCaptureSession();
  if (MEMORY[0x23EEAE1E0]())
  {
    ObjectCaptureSession.subscribeToInternalPublishers()();
    specialized static ObjectCaptureSession.stopResourceLogging()("Starting resource logging...", &unk_284E41270, &async function pointer to partial apply for closure #1 in static ObjectCaptureSession.startResourceLogging());
    ObjectCaptureSession.logAnalyticsEventsOnStartUp()();
  }

  else
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_23B824000, v33, v34, "An ObjectCaptureSession cannot be created on this device since ObjectCaptureSession.isSupported is false", v35, 2u);
      MEMORY[0x23EEB0B70](v35, -1, -1);
    }

    __break(1u);
  }
}

void ObjectCaptureSession.state.setter(id *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        if (v2 == 3)
        {
          v3 = 3;
          v4 = 3;
          goto LABEL_22;
        }

        break;
      case 4:
        if (v2 == 4)
        {
          v3 = 4;
          v4 = 4;
          goto LABEL_22;
        }

        break;
      case 5:
        if (v2 == 5)
        {
          v3 = 5;
          v4 = 5;
          goto LABEL_22;
        }

        break;
      default:
LABEL_16:
        if (v2 >= 6)
        {
          outlined copy of ObjectCaptureSession.CaptureState(*a1);
          outlined copy of ObjectCaptureSession.CaptureState(v3);
          v4 = v2;
          goto LABEL_22;
        }

        break;
    }

LABEL_25:
    outlined copy of ObjectCaptureSession.CaptureState(*a1);
    outlined copy of ObjectCaptureSession.CaptureState(v3);
    outlined consume of ObjectCaptureSession.CaptureState(v3);
    outlined consume of ObjectCaptureSession.CaptureState(v2);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    outlined consume of ObjectCaptureSession.CaptureState(v2);

    return;
  }

  if (!v3)
  {
    if (!v2)
    {
      v3 = 0;
      v4 = 0;
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (v3 == 1)
  {
    if (v2 == 1)
    {
      v3 = 1;
      v4 = 1;
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (v3 != 2)
  {
    goto LABEL_16;
  }

  if (v2 != 2)
  {
    goto LABEL_25;
  }

  v3 = 2;
  v4 = 2;
LABEL_22:
  outlined consume of ObjectCaptureSession.CaptureState(v3);
  outlined consume of ObjectCaptureSession.CaptureState(v4);
  v5 = *(v1 + 16);
  *(v1 + 16) = v2;

  outlined consume of ObjectCaptureSession.CaptureState(v5);
}

uint64_t ObjectCaptureSession.feedback.setter(uint64_t a1)
{
  if (_sSh2eeoiySbShyxG_ABtFZ19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackO_Tt1g5(*(v1 + 24), a1))
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

unsigned __int8 *ObjectCaptureSession.cameraTracking.setter(unsigned __int8 *result)
{
  v2 = *result;
  v3 = *(v1 + 32);
  if (v3 == 5)
  {
    if (v2 == 5)
    {
      goto LABEL_4;
    }
  }

  else if (v3 == 4)
  {
    if (v2 == 4)
    {
LABEL_4:
      *(v1 + 32) = v2;
      return result;
    }
  }

  else if ((v2 & 0xFE) != 4 && v3 == v2)
  {
    goto LABEL_4;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t ObjectCaptureSession.isPaused.setter(uint64_t result)
{
  if (*(v1 + 33) == (result & 1))
  {
    *(v1 + 33) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t ObjectCaptureSession.userCompletedScanPass.setter(uint64_t result)
{
  if (*(v1 + 34) == (result & 1))
  {
    *(v1 + 34) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}