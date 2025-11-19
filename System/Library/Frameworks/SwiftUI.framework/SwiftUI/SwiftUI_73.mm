__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for PlatformViewRepresentableFeature(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    outlined destroy of _ViewInputs(a1);
LABEL_5:
    v5 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v5;
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    goto LABEL_6;
  }

  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
LABEL_6:
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformViewRepresentableFeature(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatformViewRepresentableFeature(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID>);
    }
  }
}

uint64_t specialized PlatformViewRepresentableFeature.modifyWrappedOutputs<A>(outputs:proxy:)(uint64_t result)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 48);
  v16[2] = *(v1 + 32);
  v16[3] = v2;
  v16[4] = *(v1 + 64);
  v17 = *(v1 + 80);
  v3 = *(v1 + 16);
  v16[0] = *v1;
  v16[1] = v3;
  if (v3)
  {
    v4 = result;
    v5 = *(v1 + 48);
    v14[2] = *(v1 + 32);
    v14[3] = v5;
    v14[4] = *(v1 + 64);
    v15 = *(v1 + 80);
    v6 = *(v1 + 16);
    v14[0] = *v1;
    v14[1] = v6;
    outlined init with copy of _ViewInputs(v14, &v12);
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      v7 = *(v1 + 92);
      v8 = *MEMORY[0x1E698D3F8];
      if (v7 != *MEMORY[0x1E698D3F8])
      {
        v9 = *(v4 + 8);
        v12 = *v4;
        v13 = v9;
        v10 = PreferencesOutputs.subscript.getter();
        if ((v10 & 0x100000000) != 0)
        {
          v11 = v8;
        }

        else
        {
          v11 = v10;
        }

        v12 = __PAIR64__(v11, v7);
        protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
        lazy protocol witness table accessor for type AccessibilityHostedViewBridgeTransform and conformance AccessibilityHostedViewBridgeTransform();
        Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v12) = 0;
        PreferencesOutputs.subscript.setter();
      }
    }

    return outlined destroy of RemoteSheetContainerVCKey.Storage?(v16, &lazy cache variable for type metadata for _ViewInputs?, MEMORY[0x1E697DE00]);
  }

  return result;
}

void *initializeWithTake for RemoteSheetContainerVCWriter(void *a1, void *a2)
{
  *a1 = *a2;
  swift_weakTakeInit();
  return a1;
}

uint64_t assignWithCopy for ViewResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  swift_weakCopyAssign();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

uint64_t initializeWithTake for ViewResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  swift_weakTakeInit();
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for ViewResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  swift_weakTakeAssign();
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t outlined init with copy of RemoteSheetContainerVCKey.Storage(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *(a1 + 8);
  if (v4 >= 2)
  {
    v4 = *a1 + 2;
  }

  v5 = v4 == 1;
  result = a3(a2, a1);
  *(a2 + 8) = v5;
  return result;
}

void _s7SwiftUI20FocusGroupIdentifierOSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t _sxSo6UIViewCSgRi_zRi0_zly20PlatformViewProviderQzIsegno_SgSg7SwiftUI04CoreC13RepresentableRzlWOe(uint64_t result)
{
  if (result != 1)
  {
    return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(result);
  }

  return result;
}

void type metadata accessor for UIView?()
{
  if (!lazy cache variable for type metadata for UIView?)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIView);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIView?);
    }
  }
}

uint64_t outlined init with copy of FocusGroupIdentifier?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI20FocusGroupIdentifierOSgMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type EnableTransparentBackgroundMutation and conformance EnableTransparentBackgroundMutation()
{
  result = lazy protocol witness table cache variable for type EnableTransparentBackgroundMutation and conformance EnableTransparentBackgroundMutation;
  if (!lazy protocol witness table cache variable for type EnableTransparentBackgroundMutation and conformance EnableTransparentBackgroundMutation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnableTransparentBackgroundMutation and conformance EnableTransparentBackgroundMutation);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_focusGroupID> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized EnableTransparentBackgroundMutation.combine<A>(with:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return swift_dynamicCast();
}

uint64_t View.gaugeIndicatorDotTint<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for implicit closure #1 in View.gaugeIndicatorDotTint<A>(_:), v11, MEMORY[0x1E69E73E0], MEMORY[0x1E697E0B8], v9, &v12);
  v11[7] = v12;
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.gaugeIndicatorDotTint.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.gaugeIndicatorDotTint : EnvironmentValues@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.gaugeIndicatorDotTint : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t implicit closure #1 in View.gaugeIndicatorDotTint<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = AnyShapeStyle.init<A>(_:)();
  *a2 = result;
  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<AnyShapeStyle?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AnyShapeStyle?>)
  {
    type metadata accessor for AnyShapeStyle?();
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AnyShapeStyle?>);
    }
  }
}

void type metadata accessor for AnyShapeStyle?()
{
  if (!lazy cache variable for type metadata for AnyShapeStyle?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyShapeStyle?);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GaugeIndicatorDotTintEnvironmentKey>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void PencilEventsBridge.observeValue(forKeyPath:of:change:context:)(uint64_t a1, void *a2, uint64_t a3, Class isa, char *a5)
{
  ObjectType = swift_getObjectType();
  if ((!a5 || &v5[OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_preferredTapActionContext] != a5) && (!a5 || &v5[OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_preferredSqueezeActionContext] != a5))
  {
    v12 = ObjectType;
    if (a2)
    {
      a2 = MEMORY[0x18D00C850](a1, a2);
    }

    outlined init with copy of Any?(a3, v21);
    v13 = v22;
    if (v22)
    {
      v14 = __swift_project_boxed_opaque_existential_1(v21, v22);
      v15 = *(v13 - 8);
      v16 = MEMORY[0x1EEE9AC00](v14);
      v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v18, v16);
      v19 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v15 + 8))(v18, v13);
      __swift_destroy_boxed_opaque_existential_1(v21);
      if (!isa)
      {
LABEL_14:
        v20.receiver = v5;
        v20.super_class = v12;
        objc_msgSendSuper2(&v20, sel_observeValueForKeyPath_ofObject_change_context_, a2, v19, isa, a5);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v19 = 0;
      if (!isa)
      {
        goto LABEL_14;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    goto LABEL_14;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

    swift_unknownObjectRelease();
  }
}

void PencilHoverPose.init(_:in:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    [a1 location];
    [a2 convertPoint:0 toView:?];
    v7 = v6;
    v9 = v8;
    [a2 bounds];
    [a2 convertRect:0 toView:?];
    [a1 zOffset];
    v22 = v10;
    [a1 altitudeAngle];
    v12 = v11;
    [a1 azimuthAngle];
    v14 = v13;
    [a1 rollAngle];
    v16 = v15;
    UnitPoint.init(_:in:)();
    v18 = v17;
    v20 = v19;

    v21 = 0;
    *a3 = v7;
    *(a3 + 8) = v9;
    *(a3 + 16) = v18;
    *(a3 + 24) = v20;
    *(a3 + 32) = v22;
  }

  else
  {

    v21 = 1;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
    v12 = 0;
    v14 = 0;
    v16 = 0;
  }

  *(a3 + 40) = v12;
  *(a3 + 48) = v14;
  *(a3 + 56) = v16;
  *(a3 + 64) = v21;
}

void specialized PencilEventsBridge.pencilInteraction(_:didReceiveTap:)(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = *(*(v5 + 16) + 8);
    v8 = ViewGraphDelegate.uiView.getter(ObjectType, v7);
    if (v8)
    {
      v15 = v8;
      if (ViewGraphDelegate.hostingView.getter(ObjectType, v7))
      {
        v10 = v9;
        v11 = [a1 hoverPose];
        v12 = v15;
        PencilHoverPose.init(_:in:)(v11, v12, &v16);
        v17 = CACurrentMediaTime();
        v18 = 2;
        v19 = 0;
        v13 = swift_getObjectType();
        (*(v10 + 32))(v13, v10);
        v14 = OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_pencilDoubleTapSerial;
        lazy protocol witness table accessor for type PencilDoubleTapEvent and conformance PencilDoubleTapEvent();
        EventBindingManager.send<A>(_:id:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        outlined destroy of PencilDoubleTapEvent(&v16);
        ++*(v2 + v14);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void specialized PencilEventsBridge.pencilInteraction(_:didReceiveSqueeze:)(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v5 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  v7 = *(*(v5 + 16) + 8);
  v8 = ViewGraphDelegate.uiView.getter(ObjectType, v7);
  if (!v8)
  {
    goto LABEL_17;
  }

  v23 = v8;
  if (!ViewGraphDelegate.hostingView.getter(ObjectType, v7))
  {
    swift_unknownObjectRelease();

    return;
  }

  v10 = v9;
  v11 = [a1 phase];
  if (v11 >= 4)
  {
    swift_unknownObjectRelease();

LABEL_17:

    swift_unknownObjectRelease();
    return;
  }

  v12 = 0x3020101u >> (8 * v11);
  [a1 _normalizedForceVelocity];
  v14 = (v13 & 0xFFFFFFFFFFFFFLL) != 0 && (~v13 & 0x7FF0000000000000) == 0;
  v15 = 0;
  if (!v14)
  {
    [a1 _normalizedForceVelocity];
    v15 = v16;
  }

  v17 = [a1 hoverPose];
  v18 = v23;
  PencilHoverPose.init(_:in:)(v17, v18, v25);
  *&v19 = CACurrentMediaTime();
  *&v24[7] = v25[0];
  *&v24[23] = v25[1];
  *&v24[39] = v25[2];
  *&v24[55] = v25[3];
  v24[71] = v26;
  v27 = v12;
  v28 = *v24;
  v32 = *&v24[64];
  v31 = *&v24[48];
  v30 = *&v24[32];
  v29 = *&v24[16];
  v33 = v15;
  v34 = v14;
  v35 = v19;
  v20 = swift_getObjectType();
  (*(v10 + 32))(v20, v10);
  v21 = OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_pencilSqueezeSerial;
  lazy protocol witness table accessor for type PencilSqueezeEvent and conformance PencilSqueezeEvent();
  EventBindingManager.send<A>(_:id:)();

  if ([a1 phase] == 2)
  {

    outlined destroy of PencilSqueezeEvent(&v27);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = [a1 phase];

    outlined destroy of PencilSqueezeEvent(&v27);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v22 != 3)
    {
      return;
    }
  }

  ++*(v2 + v21);
}

unint64_t lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey()
{
  result = lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey;
  if (!lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey);
  }

  return result;
}

unint64_t type metadata accessor for UIPencilInteraction()
{
  result = lazy cache variable for type metadata for UIPencilInteraction;
  if (!lazy cache variable for type metadata for UIPencilInteraction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIPencilInteraction);
  }

  return result;
}

uint64_t View.selectable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SelectableModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

uint64_t static SelectableModifier._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v54 = *MEMORY[0x1E69E9840];
  v11 = a1[3];
  v50 = a1[2];
  v51 = v11;
  v52 = a1[4];
  v53 = *(a1 + 20);
  v12 = a1[1];
  v48 = *a1;
  v49 = v12;
  v13 = v11;
  *&v42 = v11;
  v29 = DWORD2(v11);
  DWORD2(v42) = DWORD2(v11);
  v14 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if ((v14 & 1) == 0)
  {
    return a2();
  }

  v26 = a3;
  v27 = a2;
  v28 = a6;
  MEMORY[0x1EEE9AC00](v14);
  v24 = a4;
  WitnessTable = a5;
  type metadata accessor for SelectableModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v15 = _GraphValue.value.getter();
  v44 = v50;
  v45 = v51;
  v46 = v52;
  v47 = v53;
  v42 = v48;
  v43 = v49;
  swift_beginAccess();
  v16 = *(v49 + 16);
  outlined init with copy of _ViewInputs(&v48, &v36);
  lazy protocol witness table accessor for type _GraphInputs.SelectionContextKey and conformance _GraphInputs.SelectionContextKey();
  PropertyList.subscript.getter();
  v17 = 0;
  if (v36 != *MEMORY[0x1E698D3F8])
  {
    v17 = AGCreateWeakAttribute();
  }

  *&v36 = __PAIR64__(v15, v16);
  *(&v36 + 1) = v17;
  MEMORY[0x1EEE9AC00](v17);
  v24 = type metadata accessor for SelectableModifier.ChildEnvironment();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<EnvironmentValues>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v36, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, v23, v24, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  _GraphInputs.environment.setter();
  v32[2] = v44;
  v32[3] = v45;
  v32[4] = v46;
  v33 = v47;
  v32[0] = v42;
  v32[1] = v43;
  v38 = v44;
  v39 = v45;
  v40 = v46;
  v41 = v47;
  v36 = v42;
  v37 = v43;
  v20 = outlined init with copy of _ViewInputs(v32, v34);
  (v27)(v20, &v36);
  v34[3] = v39;
  v34[4] = v40;
  v35 = v41;
  v34[0] = v36;
  v34[1] = v37;
  v34[2] = v38;
  v21 = outlined destroy of _ViewInputs(v34);
  v30 = v13;
  v31 = v29;
  MEMORY[0x1EEE9AC00](v21);
  v23[0] = a4;
  v23[1] = a5;
  LODWORD(v24) = v15;

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v38 = v44;
  v39 = v45;
  v40 = v46;
  v41 = v47;
  v36 = v42;
  v37 = v43;
  return outlined destroy of _ViewInputs(&v36);
}

uint64_t closure #1 in static SelectableModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for SelectableModifier();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t implicit closure #1 in static SelectableModifier._makeView(modifier:inputs:body:)(int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a1;
  SelectableContent = type metadata accessor for SelectableModifier.MakeSelectableContent();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for [Selectable](0, &lazy cache variable for type metadata for Attribute<[Selectable]>, type metadata accessor for [Selectable], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v5, closure #1 in Attribute.init<A>(_:)partial apply, v6, SelectableContent, MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v2);
  return v4;
}

uint64_t SelectableModifier.ChildEnvironment.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v29 = a4;
    v12 = *WeakValue;
    v13 = WeakValue[1];
    Value = AGGraphGetValue();
    v16 = *Value;
    v15 = Value[1];
    *&v31 = v16;
    *(&v31 + 1) = v15;

    v25 = HIDWORD(a1);
    v17 = AGGraphGetValue();
    v24 = *(v8 + 16);
    v24(v10, v17, a2);
    v26 = v13;
    v27 = v12;
    v28 = a3;
    LOBYTE(v12) = SelectionContext.canSelect<A>(_:)(v10, v12, v13, a2, a3);
    v18 = *(v8 + 8);
    v18(v10, a2);
    v30 = v12 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSelectableKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsSelectableKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSelectableKey>);

    PropertyList.subscript.setter();
    v19 = *(&v31 + 1);
    if (*(&v31 + 1))
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    v20 = AGGraphGetValue();
    v24(v10, v20, a2);
    v21 = SelectionContext.isSelected<A>(_:)(v10, v27, v26, a2, v28);
    v18(v10, a2);
    v30 = v21 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSelectedKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsSelectedKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSelectedKey>);

    PropertyList.subscript.setter();
    if (v19)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    *v29 = v31;
  }

  else
  {

    return ScrollBehaviorModifier.ChildEnvironment.environment.getter(a4);
  }

  return result;
}

uint64_t SelectableModifier.MakeSelectableContent.value.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for [Selectable](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Selectable>, type metadata accessor for Selectable, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18CD63400;
  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, a2);
  *(v6 + 56) = type metadata accessor for SelectableModifier.SelectableContent();
  *(v6 + 64) = &protocol witness table for SelectableModifier<A>.SelectableContent;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 32));
  (*(v3 + 32))(boxed_opaque_existential_1, v5, a2);
  return v6;
}

uint64_t protocol witness for Rule.value.getter in conformance SelectableModifier<A>.MakeSelectableContent@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = SelectableModifier.MakeSelectableContent.value.getter(*v2, *(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance SelectableModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t type metadata accessor for Selectable()
{
  result = lazy cache variable for type metadata for Selectable;
  if (!lazy cache variable for type metadata for Selectable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Selectable);
  }

  return result;
}

uint64_t outlined copy of PathToken(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    return outlined copy of Data._Representation(a1, a2);
  }
}

uint64_t outlined consume of PathToken(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    return outlined consume of Data._Representation(a1, a2);
  }
}

uint64_t *assignWithCopy for PathToken(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  outlined copy of PathToken(*a2, v4);
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  outlined consume of PathToken(v5, v6);
  return a1;
}

uint64_t *assignWithTake for PathToken(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *a1 = *a2;
  outlined consume of PathToken(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for PathToken(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 16))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for PathToken(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

uint64_t closure #1 in LocationBasedFeedbackAdaptor.generate()@<X0>(void *a1@<X8>)
{
  AGGraphClearUpdate();
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
  result = AGGraphSetUpdate();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for PlatformSensoryFeedback.tearDown() in conformance LocationBasedFeedbackAdaptor()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 8, v1);
  return (*(*(v2 + 8) + 16))(v1);
}

uint64_t protocol witness for PlatformSensoryFeedback.generate() in conformance LocationBasedFeedbackAdaptor()
{
  type metadata accessor for CGPoint(0);
  static Update.ensure<A>(_:)();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 8, v1);
  return (*(v2 + 16))(v1, v2);
}

double FeedbackLocation.value.getter()
{
  AGGraphGetValue();
  type metadata accessor for CGPoint(0);

  Value = AGGraphGetValue();
  v1 = *Value;
  v2 = *(Value + 8);
  AGGraphGetValue();
  v11.origin.x = v1;
  v11.origin.y = v2;
  v11.size.width = MEMORY[0x18D00B390]();
  v11.size.height = v3;
  hostingViewCoordinateSpace.getter();
  v10[40] = 1;
  CGRect.convert(to:transform:)();
  outlined destroy of CoordinateSpace(v10);
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  v8 = x + CGRectGetWidth(v11) * 0.5;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGRectGetHeight(v12);

  return v8;
}

id protocol witness for LocationBasedSensoryFeedback.generate(location:) in conformance CanvasFeedbackImplementation()
{
  v1 = *(v0 + 8);
  if (v1 >> 62 != 2)
  {
    return result;
  }

  v2 = *(v0 + 16);
  if (v2 == 1 && v1 == 0x8000000000000002)
  {
    v5 = &selRef_alignmentOccurredAtLocation_;
    return [*v0 *v5];
  }

  if (v2 == 2 && v1 == 0x8000000000000002)
  {
    v5 = &selRef_pathCompletedAtLocation_;
    return [*v0 *v5];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FeedbackLocation and conformance FeedbackLocation()
{
  result = lazy protocol witness table cache variable for type FeedbackLocation and conformance FeedbackLocation;
  if (!lazy protocol witness table cache variable for type FeedbackLocation and conformance FeedbackLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeedbackLocation and conformance FeedbackLocation);
  }

  return result;
}

uint64_t outlined destroy of LocationBasedSensoryFeedback?(uint64_t a1)
{
  type metadata accessor for LocationBasedSensoryFeedback?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for LocationBasedSensoryFeedback?()
{
  if (!lazy cache variable for type metadata for LocationBasedSensoryFeedback?)
  {
    type metadata accessor for DropDelegate(255, &lazy cache variable for type metadata for LocationBasedSensoryFeedback);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LocationBasedSensoryFeedback?);
    }
  }
}

uint64_t assignWithCopy for NotificationFeedbackImplementation(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for NotificationFeedbackImplementation(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = a2[1];
  return a1;
}

uint64_t assignWithCopy for CanvasFeedbackImplementation(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for CanvasFeedbackImplementation(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithCopy for ImpactFeedbackImplementation(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for ImpactFeedbackImplementation(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = a2[1];
  return a1;
}

uint64_t assignWithCopy for LocationBasedFeedbackAdaptor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1((a1 + 8), (a2 + 8));
  return a1;
}

uint64_t assignWithTake for LocationBasedFeedbackAdaptor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

BOOL static ReorderPosition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ReorderPosition();
  return *(a1 + *(v4 + 36)) == *(a2 + *(v4 + 36));
}

Swift::Int ReorderPosition.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x18D00F6F0](*(v1 + *(a1 + 36)));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ReorderPosition<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  ReorderPosition.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t ReorderableState.ViewState.deinit()
{

  v1 = *(*v0 + 104);
  type metadata accessor for ReorderPosition();
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 112);
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ReorderableState.ViewState.__deallocating_deinit()
{
  ReorderableState.ViewState.deinit();

  return swift_deallocClassInstance();
}

uint64_t ReorderableState.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for ReorderableState.ViewState()
{
  type metadata accessor for ReorderPosition();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ReorderPosition(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithCopy for ReorderPosition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for ReorderPosition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ReorderPosition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for ReorderPosition(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *storeEnumTagSinglePayload for ReorderPosition(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t GlassProminentButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v7;
  v8 = *(v5 + 32);
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>();
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(&v7[v8], &a2[*(v9 + 36)], type metadata accessor for ButtonAction);
  return outlined destroy of PrimitiveButtonStyleConfiguration(v7);
}

uint64_t protocol witness for PrimitiveButtonStyle.makeBody(configuration:) in conformance GlassProminentButtonStyle@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v7;
  v8 = *(v5 + 32);
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>();
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(&v7[v8], &a2[*(v9 + 36)], type metadata accessor for ButtonAction);
  return outlined destroy of PrimitiveButtonStyleConfiguration(v7);
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>>)
  {
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>>();
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ApplyGlassButtonConfiguration>, lazy protocol witness table accessor for type ApplyGlassButtonConfiguration and conformance ApplyGlassButtonConfiguration, &type metadata for ApplyGlassButtonConfiguration, MEMORY[0x1E697FD28]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>();
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>, lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, &type metadata for BorderedProminentButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>>);
    }
  }
}

void type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>>, ViewInputFlagModifier<ApplyGlassButtonConfiguration>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle>, lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle, &type metadata for BorderedProminentButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedProminentButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

_WORD *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance StatusBarKey(_WORD *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (*result == 2)
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance StatusBarAlignmentKey(char *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v5);
  v4 = v5;
  if (v5 == 2)
  {
    v4 = *a1;
  }

  *a1 = v4;
  return result;
}

uint64_t closure #1 in View._statusBar(hidden:)@<X0>(unsigned __int8 *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  result = Transaction.animation.getter();
  if (result)
  {

    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5 | v3;
  return result;
}

void type metadata accessor for _PreferenceWritingModifier<StatusBarAlignmentKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceWritingModifier<StatusBarAlignmentKey>)
  {
    v0 = type metadata accessor for _PreferenceWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceWritingModifier<StatusBarAlignmentKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<StatusBarAlignmentKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<StatusBarAlignmentKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<StatusBarAlignmentKey> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for _PreferenceWritingModifier<StatusBarAlignmentKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<StatusBarAlignmentKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for TransactionalPreferenceModifier<Bool, StatusBarKey>()
{
  if (!lazy cache variable for type metadata for TransactionalPreferenceModifier<Bool, StatusBarKey>)
  {
    v0 = type metadata accessor for TransactionalPreferenceModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TransactionalPreferenceModifier<Bool, StatusBarKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StatusBarAlignment.Role and conformance StatusBarAlignment.Role()
{
  result = lazy protocol witness table cache variable for type StatusBarAlignment.Role and conformance StatusBarAlignment.Role;
  if (!lazy protocol witness table cache variable for type StatusBarAlignment.Role and conformance StatusBarAlignment.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StatusBarAlignment.Role and conformance StatusBarAlignment.Role);
  }

  return result;
}

uint64_t TableRowContent.draggable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  v14[0] = partial apply for closure #1 in TableRowContent.draggable<A>(_:);
  v14[1] = v12;
  lazy protocol witness table accessor for type ItemProviderTableRowModifier and conformance ItemProviderTableRowModifier();

  TableRowContent.modifier<A>(_:)(v14, a3, &type metadata for ItemProviderTableRowModifier);
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v14[0]);
}

uint64_t closure #1 in TableRowContent.draggable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSItemProvider);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  return NSItemProvider.init<A>(transferable:)();
}

unint64_t lazy protocol witness table accessor for type ItemProviderTableRowModifier and conformance ItemProviderTableRowModifier()
{
  result = lazy protocol witness table cache variable for type ItemProviderTableRowModifier and conformance ItemProviderTableRowModifier;
  if (!lazy protocol witness table cache variable for type ItemProviderTableRowModifier and conformance ItemProviderTableRowModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ItemProviderTableRowModifier and conformance ItemProviderTableRowModifier);
  }

  return result;
}

uint64_t TableRowContent.dropDestination<A>(for:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = static Transferable.readableContentTypes.getter();
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = a2;
  v14[7] = a3;
  TransferableDropAction.init(action:cleanupAction:)(partial apply for closure #1 in TableRowContent.dropDestination<A>(for:action:), v14, 0, 0, v19);
  v18[4] = type metadata accessor for TransferableDropAction();
  v18[5] = &protocol witness table for TransferableDropAction<A>;
  v15 = swift_allocObject();
  v16 = v19[1];
  *(v15 + 16) = v19[0];
  *(v15 + 32) = v16;
  *(v15 + 48) = v20;
  v18[0] = v13;
  v18[1] = v15;
  lazy protocol witness table accessor for type DropOntoTableRowModifier and conformance DropOntoTableRowModifier();

  TableRowContent.modifier<A>(_:)(v18, a4, &type metadata for DropOntoTableRowModifier);
  return sub_18C0B6B34(v18);
}

unint64_t lazy protocol witness table accessor for type DropOntoTableRowModifier and conformance DropOntoTableRowModifier()
{
  result = lazy protocol witness table cache variable for type DropOntoTableRowModifier and conformance DropOntoTableRowModifier;
  if (!lazy protocol witness table cache variable for type DropOntoTableRowModifier and conformance DropOntoTableRowModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DropOntoTableRowModifier and conformance DropOntoTableRowModifier);
  }

  return result;
}

uint64_t DynamicTableRowContent.dropDestination<A>(for:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a2;
  v13[7] = a3;

  v15[0] = static Transferable.readableContentTypes.getter();
  v15[1] = partial apply for closure #1 in DynamicTableRowContent.dropDestination<A>(for:action:);
  v15[2] = v13;
  lazy protocol witness table accessor for type OnInsertTableRowModifier and conformance OnInsertTableRowModifier();
  TableRowContent.modifier<A>(_:)(v15, a4, &type metadata for OnInsertTableRowModifier);
}

uint64_t closure #1 in DynamicTableRowContent.dropDestination<A>(for:action:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a7;
  v52 = a5;
  v44 = a1;
  v45 = a4;
  v43 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = dispatch_group_create();
  v56 = static Array._allocateUninitialized(_:)();
  type metadata accessor for Array();
  result = AtomicBox.init(wrappedValue:)();
  v20 = a2;
  v21 = aBlock[0];
  v53 = a2;
  v50 = v12;
  v51 = v11;
  v48 = v14;
  v49 = v15;
  v47 = v16;
  if (a2 >> 62)
  {
    result = __CocoaSet.count.getter();
    v20 = v53;
    v22 = result;
  }

  else
  {
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = v54;
  v24 = v52;
  if (!v22)
  {
    goto LABEL_11;
  }

  if (v22 >= 1)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v25 = 0;
      v24 = v52;
      do
      {
        MEMORY[0x18D00E9C0](v25++, v53);
        dispatch_group_enter(v18);
        v26 = swift_allocObject();
        v26[2] = v24;
        v26[3] = a6;
        v26[4] = v23;
        v26[5] = a8;
        v26[6] = v18;
        v26[7] = v21;
        v27 = v18;

        v28 = NSItemProvider.loadTransferable<A>(type:completionHandler:)();
        swift_unknownObjectRelease();

        v23 = v54;
      }

      while (v22 != v25);
    }

    else
    {
      v29 = (v20 + 32);
      v24 = v52;
      do
      {
        v30 = *v29++;
        v31 = v30;
        dispatch_group_enter(v18);
        v32 = swift_allocObject();
        v32[2] = v24;
        v32[3] = a6;
        v32[4] = v23;
        v32[5] = a8;
        v32[6] = v18;
        v32[7] = v21;
        v33 = v18;

        v34 = NSItemProvider.loadTransferable<A>(type:completionHandler:)();

        v23 = v54;

        --v22;
      }

      while (v22);
    }

LABEL_11:
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v35 = static OS_dispatch_queue.main.getter();
    v36 = swift_allocObject();
    v36[2] = v24;
    v36[3] = a6;
    v36[4] = v23;
    v36[5] = a8;
    v37 = v44;
    v38 = v45;
    v36[6] = v43;
    v36[7] = v38;
    v36[8] = v37;
    v36[9] = v21;
    aBlock[4] = partial apply for closure #2 in closure #1 in DynamicTableRowContent.dropDestination<A>(for:action:);
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_15;
    v39 = _Block_copy(aBlock);

    v40 = v46;
    static DispatchQoS.unspecified.getter();
    v56 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    type metadata accessor for [DispatchWorkItemFlags]();
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], type metadata accessor for [DispatchWorkItemFlags]);
    v41 = v48;
    v42 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v39);

    (*(v50 + 8))(v41, v42);
    (*(v47 + 8))(v40, v49);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type OnInsertTableRowModifier and conformance OnInsertTableRowModifier()
{
  result = lazy protocol witness table cache variable for type OnInsertTableRowModifier and conformance OnInsertTableRowModifier;
  if (!lazy protocol witness table cache variable for type OnInsertTableRowModifier and conformance OnInsertTableRowModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnInsertTableRowModifier and conformance OnInsertTableRowModifier);
  }

  return result;
}

void closure #1 in closure #1 in DynamicTableRowContent.dropDestination<A>(for:action:)(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v33[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33[-1] - v13;
  type metadata accessor for Error();
  v15 = type metadata accessor for Result();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v33[-1] - v17);
  (*(v19 + 16))(&v33[-1] - v17, a1, v15, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v18;
    v21 = static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v22, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33[0] = v24;
      *v23 = 136315394;
      v25 = _typeName(_:qualified:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v33);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v33);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_18BD4A000, v22, v21, "Error loading %s: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v24, -1, -1);
      MEMORY[0x18D0110E0](v23, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v9 + 32))(v14, v18, a5);
    (*(v9 + 16))(v11, v14, a5);
    v33[4] = a3;
    type metadata accessor for Array();
    type metadata accessor for AtomicBox();
    v31 = AtomicBox.wrappedValue.modify();
    Array.append(_:)();
    v31(v33, 0);
    (*(v9 + 8))(v14, a5);
  }

  dispatch_group_leave(a2);
}

uint64_t closure #2 in closure #1 in DynamicTableRowContent.dropDestination<A>(for:action:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  type metadata accessor for Array();
  type metadata accessor for AtomicBox();
  AtomicBox.wrappedValue.getter();
  a1(a3);
}

uint64_t TableRowContent.itemProvider(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a1;
  v5[1] = a2;
  outlined copy of AppIntentExecutor?(a1);
  lazy protocol witness table accessor for type ItemProviderTableRowModifier and conformance ItemProviderTableRowModifier();
  TableRowContent.modifier<A>(_:)(v5, a3, &type metadata for ItemProviderTableRowModifier);
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5[0]);
}

uint64_t DynamicTableRowContent.onInsert(of:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  lazy protocol witness table accessor for type OnInsertTableRowModifier and conformance OnInsertTableRowModifier();

  TableRowContent.modifier<A>(_:)(v6, a4, &type metadata for OnInsertTableRowModifier);
}

uint64_t ItemProviderTableRowModifier.body.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  if (*v1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@owned NSItemProvider?);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a1 = v6;
  a1[1] = v5;

  return outlined copy of AppIntentExecutor?(v3);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@owned NSItemProvider?)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@owned NSItemProvider?)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t protocol witness for _TableRowContentModifier.body.getter in conformance ItemProviderTableRowModifier@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  if (*v1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@owned NSItemProvider?)partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a1 = v6;
  a1[1] = v5;

  return outlined copy of AppIntentExecutor?(v3);
}

uint64_t OnInsertTableRowModifier.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
}

uint64_t protocol witness for _TableRowContentModifier.body.getter in conformance OnInsertTableRowModifier@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
}

uint64_t destroy for OnInsertTableRowModifier()
{
}

uint64_t initializeBufferWithCopyOfBuffer for OnInsertTableRowModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;

  return a1;
}

void *assignWithCopy for OnInsertTableRowModifier(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  return a1;
}

uint64_t assignWithTake for OnInsertTableRowModifier(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;

  return a1;
}

uint64_t get_witness_table_7SwiftUI15TableRowContentRz16CoreTransferable0G0Rd__r__lAA08ModifiedE0VyxAA012ItemProvidercD8ModifierVGAaBHpxAaBHD1__AhA01_cdeK0HPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  type metadata accessor for ModifiedContent();
  a3();
  return swift_getWitnessTable();
}

uint64_t DropOntoConfiguration.performDrop(info:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v5 = UIDropSession.itemProviders(for:)(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = swift_allocObject();
  outlined init with copy of _Benchmark((v2 + 1), v6 + 16);
  outlined init with copy of DropInfo(a1, &v14);
  v7 = swift_allocObject();
  v8 = v15;
  *(v7 + 16) = v14;
  *(v7 + 32) = v8;
  *(v7 + 48) = v16;
  v9 = *(v6 + 40);
  v10 = *(v6 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v6 + 16, v9);
  (*(v10 + 16))(destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation, v7, v9, v10);
  outlined init with copy of DropInfo(a1, &v14);
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v5;
  v12 = v15;
  *(v11 + 32) = v14;
  *(v11 + 48) = v12;
  *(v11 + 64) = v16;

  static Update.enqueueAction(reason:_:)();
}

uint64_t closure #2 in DropOntoConfiguration.performDrop(info:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  outlined init with copy of _Benchmark(a1 + 16, v12);
  v6 = v13;
  v7 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v8 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  *&v10 = static DropSession.ID.invalid;
  BYTE8(v10) = 0;
  *v11 = 1;
  memset(&v11[8], 0, 32);
  *&v11[40] = *(v8 + 11);
  (*(v7 + 32))(a2, &v10, v6, v7);
  v15[2] = *&v11[16];
  v15[3] = *&v11[32];
  v16 = *&v11[48];
  v15[0] = v10;
  v15[1] = *v11;
  outlined destroy of DropSession(v15);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t closure #1 in DropConfigurationDelegate.validateDrop(info:)@<X0>(void **a1@<X0>, void *a2@<X1>, Swift::Bool *a3@<X8>)
{
  v4._rawValue = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v6 = UIDropSession.hasItemsConforming(to:)(v4);
    result = swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

BOOL protocol witness for DropDelegate.performDrop(info:) in conformance DropConfigurationDelegate(void *a1)
{
  outlined init with copy of DropOntoConfiguration?(v1, v5);
  if (v5[0])
  {
    DropOntoConfiguration.performDrop(info:)(a1);
    sub_18C0B6B34(v5);
  }

  else
  {
    outlined destroy of DropOntoConfiguration?(v5);
  }

  outlined init with copy of DropOntoConfiguration?(v1, v5);
  v3 = v5[0] != 0;
  outlined destroy of DropOntoConfiguration?(v5);
  return v3;
}

uint64_t protocol witness for static _ViewTraitKey.defaultValue.getter in conformance DropOntoTraitKey@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of DropOntoConfiguration?(&static DropOntoTraitKey.defaultValue, v2);
}

uint64_t outlined init with copy of DropOntoConfiguration(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 32);
  *(a2 + 32) = v4;
  v5 = v4;
  v6 = **(v4 - 8);

  v6(a2 + 8, a1 + 8, v5);
  return a2;
}

uint64_t outlined init with copy of DropOntoConfiguration?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DropOntoConfiguration?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for DropOntoConfiguration?()
{
  if (!lazy cache variable for type metadata for DropOntoConfiguration?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DropOntoConfiguration?);
    }
  }
}

unint64_t type metadata accessor for Error()
{
  result = lazy cache variable for type metadata for Error;
  if (!lazy cache variable for type metadata for Error)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Error);
  }

  return result;
}

uint64_t destroy for DropConfigurationDelegate(uint64_t *a1)
{
  result = *a1;
  if (result)
  {

    return __swift_destroy_boxed_opaque_existential_1((a1 + 1));
  }

  return result;
}

__n128 initializeWithCopy for DropConfigurationDelegate(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    *a1 = *a2;
    v2 = *(a2 + 32);
    *(a1 + 32) = v2;
    v3 = v2;
    v4 = **(v2 - 8);

    v4(a1 + 8, a2 + 8, v3);
  }

  else
  {
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    result = *(a2 + 32);
    *(a1 + 32) = result;
  }

  return result;
}

uint64_t assignWithCopy for DropConfigurationDelegate(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4)
  {
    if (v5)
    {
      *a1 = v5;

      __swift_assign_boxed_opaque_existential_1((a1 + 8), a2 + 1);
    }

    else
    {
      sub_18C0B6B34(a1);
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      *a1 = *a2;
      *(a1 + 16) = v9;
      *(a1 + 32) = v8;
    }
  }

  else if (v5)
  {
    *a1 = v5;
    v6 = a2[4];
    *(a1 + 32) = v6;
    *(a1 + 40) = a2[5];
    v7 = **(v6 - 8);

    v7(a1 + 8, (a2 + 1), v6);
  }

  else
  {
    v10 = *a2;
    v11 = *(a2 + 2);
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = v11;
    *a1 = v10;
  }

  return a1;
}

uint64_t assignWithTake for DropConfigurationDelegate(uint64_t result, uint64_t a2)
{
  if (*result)
  {
    if (*a2)
    {
      *result = *a2;
      v3 = result;

      __swift_destroy_boxed_opaque_existential_1(v3 + 8);
      *(v3 + 8) = *(a2 + 8);
      *(v3 + 24) = *(a2 + 24);
      *(v3 + 40) = *(a2 + 40);
    }

    else
    {
      v3 = result;
      sub_18C0B6B34(result);
      v5 = *(a2 + 16);
      *v3 = *a2;
      *(v3 + 16) = v5;
      *(v3 + 32) = *(a2 + 32);
    }

    return v3;
  }

  else
  {
    v4 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v4;
    *(result + 32) = *(a2 + 32);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DropConfigurationDelegate(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for DropConfigurationDelegate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for DropOntoTableRowModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  v5 = v4;
  v6 = **(v4 - 8);

  v6(a1 + 8, a2 + 8, v5);
  return a1;
}

void *assignWithCopy for DropOntoTableRowModifier(void *a1, void *a2)
{
  v3 = a2 + 1;
  *a1 = *a2;

  __swift_assign_boxed_opaque_existential_1(a1 + 1, v3);
  return a1;
}

uint64_t assignWithTake for DropOntoTableRowModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t outlined destroy of DropOntoConfiguration?(uint64_t a1)
{
  type metadata accessor for DropOntoConfiguration?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.keyboardType(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.keyboardType.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>);

    return PropertyList.subscript.getter();
  }
}

uint64_t key path getter for EnvironmentValues.keyboardType : EnvironmentValues@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.keyboardType : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t EnvironmentValues.keyboardType.setter()
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>);

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

void (*EnvironmentValues.keyboardType.modify(void *a1))(void **a1)
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
  v3[2] = v1;
  v3[3] = *v1;
  v4 = v1[1];
  v3[4] = v4;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>);
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues.keyboardType.modify;
}

void EnvironmentValues.keyboardType.modify(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[4];
  (*a1)[1] = **a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>);

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  free(v1);
}

uint64_t EnvironmentValues.keyboardAppearance.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardAppearanceKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardAppearanceKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardAppearanceKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardAppearanceKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t static TextInputDictation.disabled.getter@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for disabled != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = HIBYTE(static TextInputDictation.disabled);
  v2 = byte_1EAA1E9FA;
  *a1 = static TextInputDictation.disabled;
  a1[1] = v1;
  a1[2] = v2;
  return result;
}

uint64_t static TextInputDictation.enabled(forceSpelling:preferOnline:)@<X0>(uint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = 1;
  a3[1] = result;
  a3[2] = a2;
  return result;
}

uint64_t EnvironmentValues.textInputDictation.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>);

    return PropertyList.subscript.getter();
  }
}

uint64_t View.textInputDictation(_:)(__int16 *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 18) = v2;
  *(v3 + 16) = v1;
  View.transformEnvironment<A>(_:transform:)();
}

uint64_t key path getter for EnvironmentValues.textInputDictation : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>);
    result = PropertyList.subscript.getter();
  }

  *(a2 + 2) = v5;
  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.textInputDictation : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t partial apply for closure #1 in View.textInputDictation(_:)(uint64_t result)
{
  v2 = *(v1 + 16) | (*(v1 + 18) << 16);
  if (*(v1 + 16) != 2)
  {
    *result = *(v1 + 16);
    *(result + 2) = BYTE2(v2);
  }

  return result;
}

uint64_t View.autocapitalization(_:)(unint64_t a1)
{
  v1 = 4;
  if (a1 < 4)
  {
    v1 = a1;
  }

  v3 = v1;
  return View.textInputAutocapitalization(_:)(&v3);
}

SwiftUI::TextInputAutocapitalization_optional __swiftcall TextInputAutocapitalization.init(_:)(UITextAutocapitalizationType a1)
{
  v2 = 4;
  if (a1 < 4)
  {
    v2 = a1;
  }

  *v1 = v2;
  return a1;
}

uint64_t View.textInputAutocapitalization(_:)(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v1;
  View.transformEnvironment<A>(_:transform:)();
}

uint64_t EnvironmentValues.textInputAutocapitalization.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputAutocapitalizationKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputAutocapitalizationKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>);

    return PropertyList.subscript.getter();
  }
}

uint64_t key path getter for EnvironmentValues.textInputAutocapitalization : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputAutocapitalizationKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputAutocapitalizationKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.textInputAutocapitalization : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputAutocapitalizationKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

_BYTE *partial apply for closure #1 in View.textInputAutocapitalization(_:)(_BYTE *result)
{
  v2 = *(v1 + 16);
  if (v2 != 4)
  {
    *result = v2;
  }

  return result;
}

uint64_t View.submitsOnReturn(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.submitsOnReturn.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SubmitsOnReturnKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SubmitsOnReturnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SubmitsOnReturnKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SubmitsOnReturnKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SubmitsOnReturnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SubmitsOnReturnKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.submitsOnReturn : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SubmitsOnReturnKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SubmitsOnReturnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SubmitsOnReturnKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SubmitsOnReturnKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SubmitsOnReturnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SubmitsOnReturnKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.submitsOnReturn : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SubmitsOnReturnKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SubmitsOnReturnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SubmitsOnReturnKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<KeyboardType> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<KeyboardType> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<KeyboardType> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardType>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<KeyboardType>, &type metadata for KeyboardType, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<KeyboardType> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<TextInputDictation?> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<TextInputDictation?> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<TextInputDictation?> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<TextInputDictation?>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<TextInputDictation?>, &lazy cache variable for type metadata for TextInputDictation?, &type metadata for TextInputDictation, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<TextInputDictation?> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyAA12KeyboardTypeVGGAaBHPxAaBHD1__AiA0cI0HPyHCHCTm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), void (*a5)(void))
{
  type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardType>(255, a2, a3, a4);
  type metadata accessor for ModifiedContent();
  a5();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<TextInputAutocapitalization> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<TextInputAutocapitalization> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<TextInputAutocapitalization> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardType>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<TextInputAutocapitalization>, &type metadata for TextInputAutocapitalization, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<TextInputAutocapitalization> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyTransformModifier<TextInputDictation?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardType>(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardType>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type TextInputAutocapitalization.Behavior and conformance TextInputAutocapitalization.Behavior()
{
  result = lazy protocol witness table cache variable for type TextInputAutocapitalization.Behavior and conformance TextInputAutocapitalization.Behavior;
  if (!lazy protocol witness table cache variable for type TextInputAutocapitalization.Behavior and conformance TextInputAutocapitalization.Behavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextInputAutocapitalization.Behavior and conformance TextInputAutocapitalization.Behavior);
  }

  return result;
}

__n128 DragGesture.init(minimumDistance:coordinateSpace:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 49) = 15;
  *a2 = a3;
  v3 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v3;
  result = *(a1 + 25);
  *(a2 + 33) = result;
  return result;
}

uint64_t DragGesture.Value.time.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DragGesture.Value.time.setter(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DragGesture.Value.location.setter(double a1, double a2)
{
  result = type metadata accessor for DragGesture.Value(0);
  v6 = (v2 + *(result + 20));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t DragGesture.Value.startLocation.setter(double a1, double a2)
{
  result = type metadata accessor for DragGesture.Value(0);
  v6 = (v2 + *(result + 24));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

double DragGesture.Value.translation.getter()
{
  v1 = type metadata accessor for DragGesture.Value(0);
  *&result = *&vsubq_f64(*(v0 + *(v1 + 20)), *(v0 + *(v1 + 24)));
  return result;
}

double DragGesture.Value.predictedEndLocation.getter()
{
  v1 = type metadata accessor for DragGesture.Value(0);
  __asm { FMOV            V2.2D, #0.25 }

  *&result = *&vaddq_f64(*(v0 + *(v1 + 20)), vmulq_f64(*(v0 + *(v1 + 28)), _Q2));
  return result;
}

double DragGesture.Value.predictedEndTranslation.getter()
{
  v1 = type metadata accessor for DragGesture.Value(0);
  __asm { FMOV            V2.2D, #0.25 }

  *&result = *&vaddq_f64(vsubq_f64(*(v0 + v1[5]), *(v0 + v1[6])), vmulq_f64(*(v0 + v1[7]), _Q2));
  return result;
}

uint64_t DragGesture.internalBody.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = outlined init with copy of CoordinateSpace((v1 + 1), a1 + 8);
  v5 = *(v1 + 49);
  *a1 = v3;
  *(a1 + 49) = v5;
  *(a1 + 56) = 4;
  *(a1 + 64) = 0;
  return result;
}

uint64_t protocol witness for PubliclyPrimitiveGesture.internalBody.getter in conformance DragGesture@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = outlined init with copy of CoordinateSpace((v1 + 1), a1 + 8);
  v5 = *(v1 + 49);
  *a1 = v3;
  *(a1 + 49) = v5;
  *(a1 + 56) = 4;
  *(a1 + 64) = 0;
  return result;
}

uint64_t SpatialDragGesture.body.getter()
{
  type metadata accessor for EventListener<TouchEvent>();
  lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type EventListener<TouchEvent> and conformance EventListener<A>, type metadata accessor for EventListener<TouchEvent>);
  Gesture.eventFilter<A>(forType:_:)();
  outlined init with copy of CoordinateSpace(v0 + 8, v9);
  v7[0] = v4[0];
  v8 = *&v4[8];
  outlined init with copy of SpatialDragGesture(v0, v4);
  v1 = swift_allocObject();
  v2 = *&v4[16];
  *(v1 + 16) = *v4;
  *(v1 + 32) = v2;
  *(v1 + 48) = v5;
  *(v1 + 64) = v6;
  v9[6] = partial apply for closure #2 in SpatialDragGesture.body.getter;
  v9[7] = v1;
  v4[0] = 2;
  type metadata accessor for ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>();
  lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>);
  Gesture.dependency(_:)();
  return outlined destroy of ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>(v7, type metadata accessor for ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>);
}

uint64_t SpatialDragGesture.phase(state:event:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for DragGesture.Value?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v56 - v9;
  v11 = type metadata accessor for DragGesture.Value(0);
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2[1];
  v84 = *a2;
  v85 = v15;
  v16 = a2[3];
  v86 = a2[2];
  v87 = v16;
  *&v89[10] = *(a2 + 90);
  v17 = a2[5];
  v88 = a2[4];
  *v89 = v17;
  if (v89[25] - 1 < 2)
  {
    v57 = a3;
    v18 = *&v84;
    v19 = *(&v85 + 1);
    v21 = v86;
    v20 = v87;
    v83 = *(a2 + 8);
    v22 = *(a2 + 72);
    v79 = *(a2 + 56);
    v80 = v22;
    v81 = *(a2 + 88);
    v82 = *(a2 + 104);
    v23 = a1[5];
    v75 = a1[4];
    v76[0] = v23;
    *(v76 + 9) = *(a1 + 89);
    v24 = a1[1];
    v71 = *a1;
    v72 = v24;
    v25 = a1[3];
    v73 = a1[2];
    v74 = v25;
    if (v72 == 1)
    {
      outlined init with copy of GesturePhase<TouchEvent>(&v84, v77, &lazy cache variable for type metadata for GesturePhase<TouchEvent>, MEMORY[0x1E697DE58]);
      *(v68 + 8) = v83;
      *(v70 + 8) = v79;
      *v68 = v18;
      *(&v68[1] + 1) = v19;
      v69 = v21;
      *&v70[0] = v20;
      *(&v70[1] + 8) = v80;
      *(&v70[2] + 8) = v81;
      BYTE8(v70[3]) = v82;
    }

    else
    {
      v28 = a1[5];
      v70[1] = a1[4];
      v70[2] = v28;
      *(&v70[2] + 9) = *(a1 + 89);
      v29 = a1[1];
      v68[0] = *a1;
      v68[1] = v29;
      v30 = a1[3];
      v69 = a1[2];
      v70[0] = v30;
    }

    v64 = v70[1];
    v65[0] = v70[2];
    *(v65 + 9) = *(&v70[2] + 9);
    v60 = v68[0];
    v61 = v68[1];
    v62 = v69;
    v63 = v70[0];
    v31 = a1[1];
    v66[0] = *a1;
    v66[1] = v31;
    v32 = a1[2];
    v33 = a1[3];
    *(v67 + 9) = *(a1 + 89);
    v34 = a1[5];
    v66[4] = a1[4];
    v67[0] = v34;
    v66[2] = v32;
    v66[3] = v33;
    outlined init with copy of GesturePhase<TouchEvent>(&v84, v77, &lazy cache variable for type metadata for GesturePhase<TouchEvent>, MEMORY[0x1E697DE58]);
    v35 = MEMORY[0x1E69E6720];
    outlined init with copy of GesturePhase<TouchEvent>(&v71, v77, &lazy cache variable for type metadata for TouchEvent?, MEMORY[0x1E69E6720]);
    outlined init with copy of TouchEvent(v68, v77);
    outlined destroy of GesturePhase<TouchEvent>(v66, &lazy cache variable for type metadata for TouchEvent?, v35);
    v36 = v65[0];
    a1[4] = v64;
    a1[5] = v36;
    *(a1 + 89) = *(v65 + 9);
    v37 = v61;
    *a1 = v60;
    a1[1] = v37;
    v38 = v63;
    a1[2] = v62;
    a1[3] = v38;
    v39 = type metadata accessor for SpatialDragGesture.StateType(0);
    v40 = a1 + *(v39 + 24);
    specialized VelocitySampler.addSample(_:time:)(v19, *&v21, v18);
    Date.init(timeIntervalSinceReferenceDate:)();
    v41 = *(&v68[1] + 1);
    v42 = v69;
    v43 = *(v40 + 5);
    v77[4] = *(v40 + 4);
    v77[5] = v43;
    v77[6] = *(v40 + 6);
    v78 = *(v40 + 14);
    v44 = *(v40 + 1);
    v77[0] = *v40;
    v77[1] = v44;
    v45 = *(v40 + 3);
    v77[2] = *(v40 + 2);
    v77[3] = v45;
    v46 = specialized VelocitySampler.velocity.getter();
    v47 = &v14[v11[5]];
    *v47 = v19;
    *(v47 + 1) = v21;
    v48 = &v14[v11[6]];
    *v48 = v41;
    *(v48 + 1) = v42;
    v49 = &v14[v11[7]];
    *v49 = v46;
    *(v49 + 1) = v50;
    v51 = *(v39 + 20);
    outlined init with copy of DragGesture.Value?(a1 + v51, v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      outlined destroy of DragGesture.Value?(v10);
      v52 = *v4;
      if (*v4 <= 0.0)
      {
        outlined destroy of TouchEvent(v68);
        outlined destroy of GesturePhase<TouchEvent>(&v84, &lazy cache variable for type metadata for GesturePhase<TouchEvent>, MEMORY[0x1E697DE58]);
      }

      else
      {
        CGSize.magnitude.getter();
        if (v52 > v53)
        {
          outlined destroy of TouchEvent(v68);
          outlined destroy of GesturePhase<TouchEvent>(&v84, &lazy cache variable for type metadata for GesturePhase<TouchEvent>, MEMORY[0x1E697DE58]);
LABEL_21:
          if (v89[25] != 2)
          {
            outlined init with copy of DragGesture.Value?(a1 + v51, v57);
          }

          type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<DragGesture.Value>, MEMORY[0x1E697DE58]);
          swift_storeEnumTagMultiPayload();
          return outlined destroy of ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>(v14, type metadata accessor for DragGesture.Value);
        }

        LOBYTE(v58[0]) = *(v4 + 49);
        v55 = CGSize.withinRange(axes:rangeCosine:)(v58, 0.5);
        outlined destroy of TouchEvent(v68);
        outlined destroy of GesturePhase<TouchEvent>(&v84, &lazy cache variable for type metadata for GesturePhase<TouchEvent>, MEMORY[0x1E697DE58]);
        if ((v55 & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      outlined destroy of TouchEvent(v68);
      outlined destroy of GesturePhase<TouchEvent>(&v84, &lazy cache variable for type metadata for GesturePhase<TouchEvent>, MEMORY[0x1E697DE58]);
      outlined destroy of DragGesture.Value?(v10);
    }

    outlined destroy of DragGesture.Value?(a1 + v51);
    outlined init with copy of DragGesture.Value(v14, a1 + v51);
    v54 = (*(v12 + 56))(a1 + v51, 0, 1, v11);
    v58[4] = v88;
    v59[0] = *v89;
    *(v59 + 10) = *&v89[10];
    v58[0] = v84;
    v58[1] = v85;
    v58[2] = v86;
    v58[3] = v87;
    MEMORY[0x1EEE9AC00](v54);
    *(&v56 - 2) = v14;
    type metadata accessor for CoordinateSpaceGesture<TouchEvent>(0, &lazy cache variable for type metadata for GesturePhase<TouchEvent>, MEMORY[0x1E697DE58]);
    GesturePhase.withValue<A>(_:)();
    return outlined destroy of ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>(v14, type metadata accessor for DragGesture.Value);
  }

  if (v89[25] || !*(v4 + 49))
  {
    type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<DragGesture.Value>, MEMORY[0x1E697DE58]);
  }

  else
  {
    v26 = type metadata accessor for SpatialDragGesture.StateType(0);
    outlined init with copy of DragGesture.Value?(a1 + *(v26 + 20), a3);
    type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for GesturePhase<DragGesture.Value>, MEMORY[0x1E697DE58]);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t protocol witness for GestureStateProtocol.init() in conformance SpatialDragGesture.StateType@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0;
  v4 = *(a1 + 20);
  v5 = type metadata accessor for DragGesture.Value(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a2 + *(a1 + 24);
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  *(v7 + 24) = 1;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 56) = 1;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 64) = 0;
  *(v7 + 88) = 1;
  *(v7 + 96) = 0;
  *(v7 + 104) = 1;
  *(v7 + 112) = 0x3FE8000000000000;
  return result;
}

double specialized VelocitySampler.velocity.getter()
{
  result = 0.0;
  if ((*(v0 + 24) & 1) == 0 && (*(v0 + 56) & 1) == 0)
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 32);
    result = 1.0 / (v2 - *(v0 + 16)) * (v3 - *v0);
    if ((*(v0 + 88) & 1) == 0)
    {
      v4 = 1.0 / (*(v0 + 80) - v2) * (*(v0 + 64) - v3);
      return v4 + *(v0 + 112) * (result - v4);
    }
  }

  return result;
}

BOOL specialized static DragGesture.Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DragGesture.Value(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 != *v8 || v7 != v8[1])
  {
    return 0;
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  if (v11 != *v13 || v12 != v13[1])
  {
    return 0;
  }

  v16 = v4[7];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  v21 = v17 == *v19;
  return v18 == v20 && v21;
}

unint64_t lazy protocol witness table accessor for type DragGesture and conformance DragGesture()
{
  result = lazy protocol witness table cache variable for type DragGesture and conformance DragGesture;
  if (!lazy protocol witness table cache variable for type DragGesture and conformance DragGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DragGesture and conformance DragGesture);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DragGesture and conformance DragGesture;
  if (!lazy protocol witness table cache variable for type DragGesture and conformance DragGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DragGesture and conformance DragGesture);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for DragGesture.Value(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    *(a1 + v8) = *(a2 + v8);
    *(a1 + a3[7]) = *(a2 + a3[7]);
  }

  return a1;
}

uint64_t destroy for DragGesture.Value(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for DragGesture.Value(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t assignWithCopy for DragGesture.Value(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v8[1] = v9[1];
  v10 = a3[6];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  *v11 = *v12;
  v11[1] = v12[1];
  v13 = a3[7];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  *v14 = *v15;
  v14[1] = v15[1];
  return a1;
}

uint64_t initializeWithTake for DragGesture.Value(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t assignWithTake for DragGesture.Value(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

void type metadata accessor for ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture>)
  {
    type metadata accessor for CategoryGesture<DragGesture.Value>(255, &lazy cache variable for type metadata for CategoryGesture<DragGesture.Value>, MEMORY[0x1E697E628]);
    lazy protocol witness table accessor for type CategoryGesture<DragGesture.Value> and conformance CategoryGesture<A>();
    lazy protocol witness table accessor for type SpatialDragGesture and conformance SpatialDragGesture();
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CategoryGesture<DragGesture.Value> and conformance CategoryGesture<A>()
{
  result = lazy protocol witness table cache variable for type CategoryGesture<DragGesture.Value> and conformance CategoryGesture<A>;
  if (!lazy protocol witness table cache variable for type CategoryGesture<DragGesture.Value> and conformance CategoryGesture<A>)
  {
    type metadata accessor for CategoryGesture<DragGesture.Value>(255, &lazy cache variable for type metadata for CategoryGesture<DragGesture.Value>, MEMORY[0x1E697E628]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CategoryGesture<DragGesture.Value> and conformance CategoryGesture<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialDragGesture and conformance SpatialDragGesture()
{
  result = lazy protocol witness table cache variable for type SpatialDragGesture and conformance SpatialDragGesture;
  if (!lazy protocol witness table cache variable for type SpatialDragGesture and conformance SpatialDragGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialDragGesture and conformance SpatialDragGesture);
  }

  return result;
}

uint64_t assignWithTake for DragGesture(uint64_t result, uint64_t a2)
{
  *result = *a2;
  if (result != a2)
  {
    v3 = result;
    outlined destroy of CoordinateSpace(result + 8);
    result = v3;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 33) = *(a2 + 33);
  }

  *(result + 49) = *(a2 + 49);
  return result;
}

uint64_t getEnumTagSinglePayload for DragGesture(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 50))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for DragGesture(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

void type metadata accessor for EventListener<TouchEvent>()
{
  if (!lazy cache variable for type metadata for EventListener<TouchEvent>)
  {
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent();
    v0 = type metadata accessor for EventListener();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EventListener<TouchEvent>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture> and conformance ModifierGesture<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #2 in SpatialDragGesture.body.getter@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v8[0] = v3;
  *(v8 + 10) = *(a2 + 90);
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  return SpatialDragGesture.phase(state:event:)(a1, v7, a3);
}

void type metadata accessor for ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>)
  {
    type metadata accessor for StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>();
    type metadata accessor for ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>();
    lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value> and conformance StateContainerGesture<A, B, C>, type metadata accessor for StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>);
    lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>);
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>);
    }
  }
}

void type metadata accessor for StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>()
{
  if (!lazy cache variable for type metadata for StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>)
  {
    type metadata accessor for SpatialDragGesture.StateType(255);
    type metadata accessor for DragGesture.Value(255);
    lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type SpatialDragGesture.StateType and conformance SpatialDragGesture.StateType, type metadata accessor for SpatialDragGesture.StateType);
    v0 = type metadata accessor for StateContainerGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>);
    }
  }
}

void type metadata accessor for ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>)
  {
    v0 = MEMORY[0x1E697FE18];
    type metadata accessor for CoordinateSpaceGesture<TouchEvent>(255, &lazy cache variable for type metadata for CoordinateSpaceGesture<TouchEvent>, MEMORY[0x1E697FE18]);
    type metadata accessor for ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>();
    lazy protocol witness table accessor for type CoordinateSpaceGesture<TouchEvent> and conformance CoordinateSpaceGesture<A>(&lazy protocol witness table cache variable for type CoordinateSpaceGesture<TouchEvent> and conformance CoordinateSpaceGesture<A>, &lazy cache variable for type metadata for CoordinateSpaceGesture<TouchEvent>, v0);
    lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>);
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>);
    }
  }
}

void type metadata accessor for ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>)
  {
    v0 = MEMORY[0x1E697DCD8];
    type metadata accessor for CoordinateSpaceGesture<TouchEvent>(255, &lazy cache variable for type metadata for EventFilter<TouchEvent>, MEMORY[0x1E697DCD8]);
    type metadata accessor for EventListener<TouchEvent>();
    lazy protocol witness table accessor for type CoordinateSpaceGesture<TouchEvent> and conformance CoordinateSpaceGesture<A>(&lazy protocol witness table cache variable for type EventFilter<TouchEvent> and conformance EventFilter<A>, &lazy cache variable for type metadata for EventFilter<TouchEvent>, v0);
    lazy protocol witness table accessor for type ModifierGesture<CategoryGesture<DragGesture.Value>, SpatialDragGesture> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type EventListener<TouchEvent> and conformance EventListener<A>, type metadata accessor for EventListener<TouchEvent>);
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type CoordinateSpaceGesture<TouchEvent> and conformance CoordinateSpaceGesture<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CoordinateSpaceGesture<TouchEvent>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for CategoryGesture<DragGesture.Value>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DragGesture.Value(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined init with copy of GesturePhase<TouchEvent>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void, ValueMetadata *))
{
  type metadata accessor for CoordinateSpaceGesture<TouchEvent>(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for CoordinateSpaceGesture<TouchEvent>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for TouchEvent);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of GesturePhase<TouchEvent>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  type metadata accessor for CoordinateSpaceGesture<TouchEvent>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of DragGesture.Value?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for DragGesture.Value?, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DragGesture.Value?(uint64_t a1)
{
  type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for DragGesture.Value?, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of DragGesture.Value(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DragGesture.Value(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for SpatialDragGesture.StateType(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = v11 + ((v5 + 16) & ~v5);
  }

  else
  {
    v7 = a2[2];
    if (v7 == 1)
    {
      v8 = *(a2 + 5);
      *(a1 + 64) = *(a2 + 4);
      *(a1 + 80) = v8;
      *(a1 + 89) = *(a2 + 89);
      v9 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v9;
      v10 = *(a2 + 3);
      *(a1 + 32) = *(a2 + 2);
      *(a1 + 48) = v10;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = v7;
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 72) = *(a2 + 9);
      *(a1 + 88) = *(a2 + 11);
      *(a1 + 104) = *(a2 + 104);
    }

    v12 = *(a3 + 20);
    v13 = (a1 + v12);
    v14 = a2 + v12;
    v15 = type metadata accessor for DragGesture.Value(0);
    v16 = *(v15 - 1);
    if ((*(v16 + 48))(v14, 1, v15))
    {
      type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for DragGesture.Value?, MEMORY[0x1E69E6720]);
      memcpy(v13, v14, *(*(v17 - 8) + 64));
    }

    else
    {
      v18 = type metadata accessor for Date();
      (*(*(v18 - 8) + 16))(v13, v14, v18);
      *&v13[v15[5]] = *&v14[v15[5]];
      *&v13[v15[6]] = *&v14[v15[6]];
      *&v13[v15[7]] = *&v14[v15[7]];
      (*(v16 + 56))(v13, 0, 1, v15);
    }

    v19 = *(a3 + 24);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v22 = *(v21 + 80);
    *(v20 + 64) = *(v21 + 64);
    *(v20 + 80) = v22;
    *(v20 + 96) = *(v21 + 96);
    *(v20 + 112) = *(v21 + 112);
    v23 = *(v21 + 16);
    *v20 = *v21;
    *(v20 + 16) = v23;
    v24 = *(v21 + 48);
    *(v20 + 32) = *(v21 + 32);
    *(v20 + 48) = v24;
  }

  return a1;
}

uint64_t destroy for SpatialDragGesture.StateType(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != 1)
  {
  }

  v4 = *(a2 + 20);
  v5 = type metadata accessor for DragGesture.Value(0);
  result = (*(*(v5 - 8) + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 8);

    return v8(a1 + v4, v7);
  }

  return result;
}

uint64_t initializeWithCopy for SpatialDragGesture.StateType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  if (v6 == 1)
  {
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 89) = *(a2 + 89);
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    v9 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v9;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v6;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
  }

  v10 = *(a3 + 20);
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = type metadata accessor for DragGesture.Value(0);
  v14 = *(v13 - 1);
  if ((*(v14 + 48))(v12, 1, v13))
  {
    type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for DragGesture.Value?, MEMORY[0x1E69E6720]);
    memcpy(v11, v12, *(*(v15 - 8) + 64));
  }

  else
  {
    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 16))(v11, v12, v16);
    *&v11[v13[5]] = *&v12[v13[5]];
    *&v11[v13[6]] = *&v12[v13[6]];
    *&v11[v13[7]] = *&v12[v13[7]];
    (*(v14 + 56))(v11, 0, 1, v13);
  }

  v17 = *(a3 + 24);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *(v19 + 80);
  *(v18 + 64) = *(v19 + 64);
  *(v18 + 80) = v20;
  *(v18 + 96) = *(v19 + 96);
  *(v18 + 112) = *(v19 + 112);
  v21 = *(v19 + 16);
  *v18 = *v19;
  *(v18 + 16) = v21;
  v22 = *(v19 + 48);
  *(v18 + 32) = *(v19 + 32);
  *(v18 + 48) = v22;
  return a1;
}

uint64_t assignWithCopy for SpatialDragGesture.StateType(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *(a2 + 2);
  if (*(a1 + 16) == 1)
  {
    if (v6 == 1)
    {
      v7 = *a2;
      v8 = a2[2];
      *(a1 + 16) = a2[1];
      *(a1 + 32) = v8;
      *a1 = v7;
      v9 = a2[3];
      v10 = a2[4];
      v11 = a2[5];
      *(a1 + 89) = *(a2 + 89);
      *(a1 + 64) = v10;
      *(a1 + 80) = v11;
      *(a1 + 48) = v9;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 2);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 72) = *(a2 + 9);
      *(a1 + 80) = *(a2 + 10);
      *(a1 + 88) = *(a2 + 11);
      *(a1 + 96) = *(a2 + 12);
      *(a1 + 104) = *(a2 + 104);
    }
  }

  else if (v6 == 1)
  {
    outlined destroy of TouchEvent(a1);
    v13 = a2[1];
    v12 = a2[2];
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = v12;
    v15 = a2[4];
    v14 = a2[5];
    v16 = a2[3];
    *(a1 + 89) = *(a2 + 89);
    *(a1 + 64) = v15;
    *(a1 + 80) = v14;
    *(a1 + 48) = v16;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 2);

    *(a1 + 24) = *(a2 + 3);
    *(a1 + 32) = *(a2 + 4);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 96) = *(a2 + 12);
    *(a1 + 104) = *(a2 + 104);
  }

  v17 = *(a3 + 20);
  v18 = (a1 + v17);
  v19 = a2 + v17;
  v20 = type metadata accessor for DragGesture.Value(0);
  v21 = *(v20 - 1);
  v22 = *(v21 + 48);
  v23 = v22(v18, 1, v20);
  v24 = v22(v19, 1, v20);
  if (!v23)
  {
    if (!v24)
    {
      v35 = type metadata accessor for Date();
      (*(*(v35 - 8) + 24))(v18, v19, v35);
      v36 = v20[5];
      v37 = &v18[v36];
      v38 = &v19[v36];
      *v37 = *v38;
      *(v37 + 1) = *(v38 + 1);
      v39 = v20[6];
      v40 = &v18[v39];
      v41 = &v19[v39];
      *v40 = *v41;
      *(v40 + 1) = *(v41 + 1);
      v42 = v20[7];
      v43 = &v18[v42];
      v44 = &v19[v42];
      *v43 = *v44;
      *(v43 + 1) = *(v44 + 1);
      goto LABEL_14;
    }

    outlined destroy of ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>(v18, type metadata accessor for DragGesture.Value);
    goto LABEL_13;
  }

  if (v24)
  {
LABEL_13:
    type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for DragGesture.Value?, MEMORY[0x1E69E6720]);
    memcpy(v18, v19, *(*(v26 - 8) + 64));
    goto LABEL_14;
  }

  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 16))(v18, v19, v25);
  *&v18[v20[5]] = *&v19[v20[5]];
  *&v18[v20[6]] = *&v19[v20[6]];
  *&v18[v20[7]] = *&v19[v20[7]];
  (*(v21 + 56))(v18, 0, 1, v20);
LABEL_14:
  v27 = *(a3 + 24);
  v28 = a1 + v27;
  v29 = (a2 + v27);
  v30 = *v29;
  *(v28 + 9) = *(v29 + 9);
  *v28 = v30;
  v31 = v29[2];
  *(v28 + 41) = *(v29 + 41);
  *(v28 + 32) = v31;
  v32 = v29[4];
  *(v28 + 73) = *(v29 + 73);
  *(v28 + 64) = v32;
  v33 = *(v29 + 12);
  *(v28 + 104) = *(v29 + 104);
  *(v28 + 96) = v33;
  *(v28 + 112) = *(v29 + 14);
  return a1;
}

_OWORD *initializeWithTake for SpatialDragGesture.StateType(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;
  *(a1 + 89) = *(a2 + 89);
  v7 = a2[1];
  *a1 = *a2;
  a1[1] = v7;
  v8 = a2[3];
  v9 = *(a3 + 20);
  v10 = a1 + v9;
  v11 = a2 + v9;
  a1[2] = a2[2];
  a1[3] = v8;
  v12 = type metadata accessor for DragGesture.Value(0);
  v13 = *(v12 - 1);
  if ((*(v13 + 48))(v11, 1, v12))
  {
    type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for DragGesture.Value?, MEMORY[0x1E69E6720]);
    memcpy(v10, v11, *(*(v14 - 8) + 64));
  }

  else
  {
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 32))(v10, v11, v15);
    *&v10[v12[5]] = *&v11[v12[5]];
    *&v10[v12[6]] = *&v11[v12[6]];
    *&v10[v12[7]] = *&v11[v12[7]];
    (*(v13 + 56))(v10, 0, 1, v12);
  }

  v16 = *(a3 + 24);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = *(v18 + 5);
  *(v17 + 4) = *(v18 + 4);
  *(v17 + 5) = v19;
  *(v17 + 6) = *(v18 + 6);
  *(v17 + 14) = *(v18 + 14);
  v20 = *(v18 + 1);
  *v17 = *v18;
  *(v17 + 1) = v20;
  v21 = *(v18 + 3);
  *(v17 + 2) = *(v18 + 2);
  *(v17 + 3) = v21;
  return a1;
}

uint64_t assignWithTake for SpatialDragGesture.StateType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) == 1)
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 16);
  if (v6 == 1)
  {
    outlined destroy of TouchEvent(a1);
LABEL_4:
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 89) = *(a2 + 89);
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    v9 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v9;
    goto LABEL_6;
  }

  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
LABEL_6:
  v10 = *(a3 + 20);
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = type metadata accessor for DragGesture.Value(0);
  v14 = *(v13 - 1);
  v15 = *(v14 + 48);
  v16 = v15(v11, 1, v13);
  v17 = v15(v12, 1, v13);
  if (!v16)
  {
    if (!v17)
    {
      v24 = type metadata accessor for Date();
      (*(*(v24 - 8) + 40))(v11, v12, v24);
      *&v11[v13[5]] = *&v12[v13[5]];
      *&v11[v13[6]] = *&v12[v13[6]];
      *&v11[v13[7]] = *&v12[v13[7]];
      goto LABEL_12;
    }

    outlined destroy of ModifierGesture<StateContainerGesture<SpatialDragGesture.StateType, TouchEvent, DragGesture.Value>, ModifierGesture<CoordinateSpaceGesture<TouchEvent>, ModifierGesture<EventFilter<TouchEvent>, EventListener<TouchEvent>>>>(v11, type metadata accessor for DragGesture.Value);
    goto LABEL_11;
  }

  if (v17)
  {
LABEL_11:
    type metadata accessor for CategoryGesture<DragGesture.Value>(0, &lazy cache variable for type metadata for DragGesture.Value?, MEMORY[0x1E69E6720]);
    memcpy(v11, v12, *(*(v19 - 8) + 64));
    goto LABEL_12;
  }

  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 32))(v11, v12, v18);
  *&v11[v13[5]] = *&v12[v13[5]];
  *&v11[v13[6]] = *&v12[v13[6]];
  *&v11[v13[7]] = *&v12[v13[7]];
  (*(v14 + 56))(v11, 0, 1, v13);
LABEL_12:
  v20 = *(a3 + 24);
  v21 = a1 + v20;
  v22 = a2 + v20;
  *v21 = *v22;
  *(v21 + 9) = *(v22 + 9);
  *(v21 + 32) = *(v22 + 32);
  *(v21 + 41) = *(v22 + 41);
  *(v21 + 64) = *(v22 + 64);
  *(v21 + 73) = *(v22 + 73);
  *(v21 + 104) = *(v22 + 104);
  *(v21 + 96) = *(v22 + 96);
  *(v21 + 112) = *(v22 + 112);
  return a1;
}

void type metadata completion function for SpatialDragGesture.StateType()
{
  type metadata accessor for CategoryGesture<DragGesture.Value>(319, &lazy cache variable for type metadata for DragGesture.Value?, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void *assignWithCopy for ItemContainerTintModifier(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithTake for ItemContainerTintModifier(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for ItemContainerTintModifier(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for ItemContainerTintModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t static ItemContainerTintModifier._makeToolbar(content:inputs:body:)(int *a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *))
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v5 = a2[3];
  v21 = a2[2];
  v22[0] = v5;
  *(v22 + 12) = *(a2 + 60);
  v6 = a2[1];
  v20[0] = *a2;
  v20[1] = v6;
  v7 = a2[3];
  v18 = v21;
  v19[0] = v7;
  *(v19 + 12) = *(a2 + 60);
  v8 = *a1;
  v9 = v6;
  v16 = v20[0];
  v17 = v4;
  swift_beginAccess();
  LODWORD(v25[0]) = *(v9 + 16);
  DWORD1(v25[0]) = v8;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ToolbarInputs(v20, v27);
  lazy protocol witness table accessor for type ItemContainerTintModifier.ChildEnvironment and conformance ItemContainerTintModifier.ChildEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v23[2] = v18;
  v24[0] = v19[0];
  *(v24 + 12) = *(v19 + 12);
  v23[0] = v16;
  v23[1] = v17;
  v14 = v18;
  v15[0] = v19[0];
  *(v15 + 12) = *(v19 + 12);
  v12 = v16;
  v13 = v17;
  v10 = outlined init with copy of _ToolbarInputs(v23, v27);
  a3(v10, &v12);
  v25[2] = v14;
  v26[0] = v15[0];
  *(v26 + 12) = *(v15 + 12);
  v25[0] = v12;
  v25[1] = v13;
  outlined destroy of _ToolbarInputs(v25);
  v27[2] = v18;
  v28[0] = v19[0];
  *(v28 + 12) = *(v19 + 12);
  v27[0] = v16;
  v27[1] = v17;
  return outlined destroy of _ToolbarInputs(v27);
}

uint64_t ItemContainerTintModifier.ChildEnvironment.value.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;

  swift_retain_n();
  AGGraphGetValue();
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint> and conformance EnvironmentPropertyKey<A>();
  swift_retain_n();
  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t specialized implicit closure #1 in _GraphInputs.toolbarItemContainerTint.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemContainerTint> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type ItemContainerTintModifier.ChildEnvironment and conformance ItemContainerTintModifier.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type ItemContainerTintModifier.ChildEnvironment and conformance ItemContainerTintModifier.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type ItemContainerTintModifier.ChildEnvironment and conformance ItemContainerTintModifier.ChildEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ItemContainerTintModifier.ChildEnvironment and conformance ItemContainerTintModifier.ChildEnvironment);
  }

  return result;
}

Swift::Void __swiftcall ListTableViewHeaderFooter.prepareForReuse()()
{
  v1 = type metadata accessor for UIListContentConfiguration();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v4 = type metadata accessor for ListTableViewHeaderFooter();
  v13.receiver = v0;
  v13.super_class = v4;
  objc_msgSendSuper2(&v13, sel_prepareForReuse);
  static UIListContentConfiguration.header()();
  specialized HeaderFooterConfiguration.Values.init(_:)(v3, v14);
  *&v12[6] = v14[0];
  *&v12[22] = v14[1];
  *&v12[38] = v14[2];
  v5 = &v0[OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_configuration];
  swift_beginAccess();
  v6 = *(v5 + 3);
  v15[2] = *(v5 + 2);
  v15[3] = v6;
  v7 = *(v5 + 1);
  v15[0] = *v5;
  v15[1] = v7;
  v8 = *&v12[16];
  *(v5 + 18) = *v12;
  v16 = *(v5 + 8);
  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 8) = 0;
  *(v5 + 8) = *&v12[46];
  *(v5 + 34) = v8;
  *(v5 + 50) = *&v12[32];
  outlined destroy of HeaderFooterConfiguration(v15);
  v9 = *&v0[OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_host];
  if (v9)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>();
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>();
    v10 = v9;
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }
}

void ListTableViewHeaderFooter.updateConfiguration(using:)()
{
  v1 = v0;
  type metadata accessor for UIBackgroundConfiguration?();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  isa = UIViewConfigurationState._bridgeToObjectiveC()().super.isa;
  v9 = type metadata accessor for ListTableViewHeaderFooter();
  v17.receiver = v1;
  v17.super_class = v9;
  objc_msgSendSuper2(&v17, sel__bridgedUpdateConfigurationUsingState_, isa);

  v10 = [v1 backgroundView];
  if (v10)
  {

    return;
  }

  MEMORY[0x18D00D660]();
  v11 = type metadata accessor for UIBackgroundConfiguration();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v7, 1, v11))
  {
    outlined destroy of UIBackgroundConfiguration?(v7);
  }

  else
  {
    v14 = UIBackgroundConfiguration.customView.getter();
    outlined destroy of UIBackgroundConfiguration?(v7);
    if (v14)
    {
      type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>();
      v15 = swift_dynamicCastClass();

      if (v15)
      {
        return;
      }
    }
  }

  type metadata accessor for EnvironmentPropertyKey<HeaderFooterConfigurationKey>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    v13 = OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_configuration;
    swift_beginAccess();
    if (*(v1 + v13))
    {
      static UIBackgroundConfiguration.listFooter()();
    }

    else
    {
      static UIBackgroundConfiguration.listHeader()();
    }

    (*(v12 + 56))(v4, 0, 1, v11);
    MEMORY[0x18D00D670](v4);
  }
}

id ListTableViewHeaderFooter.init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UIListContentConfiguration();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v2[OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_viewListID];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v2[OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_configuration];
  *(v9 + 8) = 0;
  *v9 = 0;
  *(v9 + 1) = 0;
  static UIListContentConfiguration.header()();
  specialized HeaderFooterConfiguration.Values.init(_:)(v7, v16);
  v10 = v16[1];
  *(v9 + 24) = v16[0];
  *(v9 + 40) = v10;
  *(v9 + 56) = v16[2];
  *&v2[OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_host] = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_outlineRootSeed] = 0;
  if (a2)
  {
    v11 = MEMORY[0x18D00C850](a1, a2);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for ListTableViewHeaderFooter();
  v15.receiver = v2;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, sel_initWithReuseIdentifier_, v11);

  return v13;
}

id ListTableViewHeaderFooter.init(coder:)(void *a1)
{
  v3 = type metadata accessor for UIListContentConfiguration();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v1[OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_viewListID];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v1[OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_configuration];
  *(v7 + 8) = 0;
  *v7 = 0;
  *(v7 + 1) = 0;
  static UIListContentConfiguration.header()();
  specialized HeaderFooterConfiguration.Values.init(_:)(v5, v13);
  v8 = v13[1];
  *(v7 + 24) = v13[0];
  *(v7 + 40) = v8;
  *(v7 + 56) = v13[2];
  *&v1[OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_host] = 0;
  *&v1[OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_outlineRootSeed] = 0;
  v9 = type metadata accessor for ListTableViewHeaderFooter();
  v12.receiver = v1;
  v12.super_class = v9;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

id ListTableViewHeaderFooter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ListTableViewHeaderFooter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *protocol witness for PlatformListViewBase.host.getter in conformance ListTableViewHeaderFooter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_host);
  v2 = v1;
  return v1;
}

uint64_t specialized ListTableViewHeaderFooter.hostingView<A>(_:didChangePreferences:)()
{
  result = PreferenceValues.subscript.getter();
  if (v2 == -1 || v2 != *(v0 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_outlineRootSeed))
  {
    *(v0 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_outlineRootSeed) = v2;
  }

  return result;
}

uint64_t specialized ListTableViewHeaderFooter.hostingView<A>(_:willUpdate:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_configuration;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 48);
  v16 = *(v3 + 32);
  v17 = v5;
  v6 = *(v3 + 16);
  v15[0] = *v3;
  v15[1] = v6;
  v7 = *(v3 + 48);
  v12 = v16;
  v13 = v7;
  v18 = *(v3 + 64);
  v14 = *(v3 + 64);
  v10 = v15[0];
  v11 = v4;
  type metadata accessor for EnvironmentPropertyKey<HeaderFooterConfigurationKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderFooterConfigurationKey>, &type metadata for HeaderFooterConfigurationKey, &protocol witness table for HeaderFooterConfigurationKey, MEMORY[0x1E697FE38]);
  outlined init with copy of HeaderFooterConfiguration(v15, v9);
  outlined init with copy of HeaderFooterConfiguration(v15, v9);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<HeaderFooterConfigurationKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of HeaderFooterConfiguration(v15);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<HeaderFooterConfigurationKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<HeaderFooterConfigurationKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<HeaderFooterConfigurationKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<HeaderFooterConfigurationKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<HeaderFooterConfigurationKey>, &type metadata for HeaderFooterConfigurationKey, &protocol witness table for HeaderFooterConfigurationKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<HeaderFooterConfigurationKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>> and conformance _UIHostingView<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CollectionViewCellModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 351))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 256);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for CollectionViewCellModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
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
    *(result + 350) = 0;
    *(result + 348) = 0;
    *(result + 344) = 0;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 351) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 351) = 0;
    }

    if (a2)
    {
      *(result + 256) = a2 + 1;
    }
  }

  return result;
}

uint64_t CollectionViewHeaderFooterVisitor.visit(view:traits:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(a1 + 56);
  v7 = *(a1 + 60);
  v8 = *(a1 + 64);
  v9 = *v2;
  v10 = *(v2 + 3);
  v11 = *(v8 + 16);
  swift_bridgeObjectRetain_n();
  if (v11)
  {
    v12 = *(v8 + 52);
    v29 = *(v8 + 32);

    if (v12)
    {
      v13 = -1;
    }

    else
    {
      v13 = v7;
    }

    v28 = v13;
  }

  else
  {

    v29 = 0;
    v28 = v7;
  }

  v31 = v7;
  v30 = *(v3 + 1);
  v27 = *(v30 + direct field offset for ListCollectionViewCellBase.shouldHugContent);
  KeyPath = swift_getKeyPath();
  LOBYTE(v32) = 0;
  v25 = swift_getKeyPath();
  v24 = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v49[0] = 0;
  v23 = swift_getKeyPath();
  v50 = v5;
  ViewTraitCollection.listRowInsets.getter();
  *&v34[5] = v35;
  *&v34[21] = v36;
  *&v34[37] = *v37;
  *&v34[46] = *&v37[9];
  ViewTraitCollection.value<A>(for:defaultValue:)();
  *&v38 = v5;
  *&v45 = 1;
  BYTE8(v45) = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  outlined consume of ListItemTint?(1);
  v21 = v51;
  outlined consume of ListItemTint?(1);
  v14 = 0;
  if (v9 == 1)
  {
    v50 = v5;
    LOBYTE(v38) = 0;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v14 = 1;
  }

  outlined init with copy of _ViewList_View(a1, &v50);
  v52 = KeyPath;
  v53 = 0;
  v54 = v25;
  v55 = 0;
  v56 = v24;
  v57 = 0;
  v58 = 0;
  v59 = v22;
  v60 = 0;
  v62 = 0;
  v61 = 0;
  v63 = 0;
  *v64 = *v49;
  *&v64[3] = *&v49[3];
  v65 = v23;
  v68 = v47;
  *v69 = *v48;
  *&v69[9] = *&v48[9];
  v66 = v45;
  v67 = v46;
  v70 = 0;
  v71 = v9;
  v72 = *v34;
  v73 = *&v34[16];
  *v74 = *&v34[32];
  *&v74[14] = *&v37[9];
  *v75 = *v44;
  *&v75[3] = *&v44[3];
  v76 = v5;
  v77 = v27;
  *v78 = *v43;
  *&v78[3] = *&v43[3];
  v79 = v5;
  v80 = v21;
  v81 = v14;
  v82 = v41;
  v83 = v42;
  v84 = v10;
  v85 = v6;
  v86 = v28;
  v87 = v29;
  *&v90[14] = *&v40[14];
  v89 = v39;
  *v90 = *v40;
  v88 = v38;
  v91 = 1;
  v15 = *(v3 + 2);
  specialized ListCollectionViewCellBase.configureContent(_:transaction:)(&v50, v15);
  if (*v3)
  {
    ViewTraitCollection.value<A>(for:defaultValue:)();
    outlined consume of Text.LineStyle?(0, 1);
    if (v33 != 1)
    {
      v17 = *v3;
      if (v17 > 0x3F || ((v32 >> v17) & 1) != 0)
      {

        _s7SwiftUI20PlatformListViewBasePAASo6UIViewCRbzrlE19configureBackground_6traits11transactionyAA15ModifiedContentVyAA03AnyE0V0I8ModifierQzGSg_AA0E15TraitCollectionVAA11TransactionVSgtFAA0dqe4CellF0CyAA01_ed1_E0VG_Tt0g5(v18, v15);

        outlined consume of Text.LineStyle?(v32, v33);
        goto LABEL_16;
      }

      outlined consume of Text.LineStyle?(v32, v33);
    }

    specialized ListCollectionViewCellBase.backgroundHost.setter(0);
  }

  else
  {
    ViewTraitCollection.value<A>(for:defaultValue:)();

    _s7SwiftUI20PlatformListViewBasePAASo6UIViewCRbzrlE19configureBackground_6traits11transactionyAA15ModifiedContentVyAA03AnyE0V0I8ModifierQzGSg_AA0E15TraitCollectionVAA11TransactionVSgtFAA0dqe4CellF0CyAA01_ed1_E0VG_Tt0g5(v16, v15);
  }

LABEL_16:
  outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(&v50);
  v19 = (v30 + direct field offset for ListCollectionViewCellBase.viewListID);
  *v19 = v6 | (v31 << 32);
  v19[1] = v8;

  return 0;
}

uint64_t closure #1 in CollectionViewCellModifier.resolvedBody(content:isInSidebar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v26 = *(a1 + 170) == 0;
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  LOBYTE(v58[0]) = 0;
  v14 = swift_getKeyPath();
  v27[224] = 0;
  v15 = static Edge.Set.all.getter();
  LOBYTE(v44) = 0;
  v16 = specialized Environment.wrappedValue.getter(*(a1 + 16), *(a1 + 24)) & 1;
  ConditionalSpacer.init(isEnabled:minLength:)();
  v17 = *(&v44 + 1);
  v18 = v45;
  v28[0] = xmmword_18CD80A00;
  v28[1] = xmmword_18CD80A00;
  v29 = KeyPath;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  LOBYTE(v33) = 0;
  *(&v33 + 1) = v13;
  LOBYTE(v34) = 0;
  *(&v34 + 1) = v14;
  LOBYTE(v38) = 0;
  BYTE1(v38) = v26;
  BYTE8(v38) = v15;
  *&v39 = a3;
  *(&v39 + 1) = a4;
  *&v40 = a5;
  *(&v40 + 1) = a6;
  LOBYTE(v41) = 0;
  v42 = 0;
  v43 = v16;
  LOBYTE(v57) = v16;
  v55 = v40;
  v56 = v41;
  v44 = xmmword_18CD80A00;
  v45 = xmmword_18CD80A00;
  v48 = v33;
  v49 = v34;
  v46 = KeyPath;
  v47 = 0u;
  v53 = v38;
  v54 = v39;
  v51 = v36;
  v52 = v37;
  v50 = v35;
  v27[216] = v18;
  v19 = v40;
  *(a2 + 160) = v39;
  *(a2 + 176) = v19;
  *(a2 + 192) = v56;
  *(a2 + 208) = v57;
  v20 = v51;
  *(a2 + 96) = v50;
  *(a2 + 112) = v20;
  v21 = v53;
  *(a2 + 128) = v52;
  *(a2 + 144) = v21;
  v22 = v47;
  *(a2 + 32) = v46;
  *(a2 + 48) = v22;
  v23 = v49;
  *(a2 + 64) = v48;
  *(a2 + 80) = v23;
  v24 = v45;
  *a2 = v44;
  *(a2 + 16) = v24;
  *(a2 + 216) = 0;
  *(a2 + 224) = v17;
  *(a2 + 232) = v18;
  v58[0] = xmmword_18CD80A00;
  v58[1] = xmmword_18CD80A00;
  v59 = KeyPath;
  v60 = 0;
  v62 = 0;
  v61 = 0;
  v63 = 0;
  v64 = v13;
  v65 = 0;
  v66 = v14;
  v67 = 0;
  v68 = v26;
  v69 = v15;
  v70 = a3;
  v71 = a4;
  v72 = a5;
  v73 = a6;
  v74 = 0;
  v75 = 0;
  v76 = v16;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>(v28, v27);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>(v58, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ListCoreCellEnvironment(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ListCoreCellEnvironment();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>(0, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>, type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer), MEMORY[0x1E6981F40]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)()
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, type metadata accessor for ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>);
    type metadata accessor for InvertedViewInputPredicate<Solarium>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<CollectionViewCellModifier>();
    type metadata accessor for StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>)
  {
    type metadata accessor for InvertedViewInputPredicate<Solarium>(255, &lazy cache variable for type metadata for InvertedViewInputPredicate<Solarium>, MEMORY[0x1E6981CD8], MEMORY[0x1E6981CD0], MEMORY[0x1E6980680]);
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>)
  {
    type metadata accessor for InvertedViewInputPredicate<Solarium>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>);
    }
  }
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for AccessibilityListCoreCellModifier<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>>()
{
  if (!lazy cache variable for type metadata for AccessibilityListCoreCellModifier<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>>)
  {
    type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<SidebarStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>);
    v0 = type metadata accessor for AccessibilityListCoreCellModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityListCoreCellModifier<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>>);
    }
  }
}

void type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>()
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>, type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer), MEMORY[0x1E6981F40]);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)> and conformance TupleView<A>();
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)> and conformance TupleView<A>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>, type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer), MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)> and conformance TupleView<A>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy163_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 159) = *(a2 + 159);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t assignWithTake for ListCoreCellEnvironment(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v5 = *(a2 + 72);
  v6 = *(a1 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  if (v6 == 1)
  {
    goto LABEL_4;
  }

  if (v5 == 1)
  {
    outlined destroy of ListItemTint(a1 + 72);
LABEL_4:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_6;
  }

  *(a1 + 72) = v5;

  *(a1 + 80) = *(a2 + 80);
LABEL_6:
  v7 = *(a2 + 152);
  v8 = *(a1 + 152);
  v9 = *(a2 + 104);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = v9;
  v10 = *(a2 + 136);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = v10;
  if (v8 != 1)
  {
    if (v7 != 1)
    {
      *(a1 + 152) = v7;

      *(a1 + 160) = *(a2 + 160);
      goto LABEL_11;
    }

    outlined destroy of ListItemTint(a1 + 152);
  }

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
LABEL_11:
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 162) = *(a2 + 162);
  return a1;
}

uint64_t getEnumTagSinglePayload for ListCoreCellEnvironment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 163))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for ListCoreCellEnvironment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 162) = 0;
    *(result + 160) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 163) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 163) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>> and()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<SidebarStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SidebarStyleContext> and conformance StyleContextAcceptsPredicate<A>, type metadata accessor for StyleContextAcceptsPredicate<SidebarStyleContext>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<SidebarStyleContext>();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>(255);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>, _FlexFrameLayout>, ListCoreCellEnvironment> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier>(255);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<SidebarStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>>, AccessibilityScrollableContextModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<CollectionViewCellModifier>, StaticIf<InvertedViewInputPredicate<Solarium>, StaticIf<_SemanticFeature<Semantics_v4>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, _PaddingLayout>, _AnimationModifier<Bool>>, ConditionalSpacer)>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

id RenderBoxView.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC7SwiftUI13RenderBoxView_rendersFirstFrameAsynchronously] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for RenderBoxView();
  v3 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = [v5 layer];
    [v6 setDelegate_];
    [v6 setOpaque_];

    a1 = v6;
  }

  return v4;
}

id RenderBoxView.__deallocating_deinit()
{
  v1 = [v0 layer];
  [v1 waitUntilAsyncRenderingCompleted];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for RenderBoxView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t static EnvironmentWritingSceneModifier._makeInputs(modifier:inputs:)(_DWORD *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for EnvironmentWritingSceneModifier();
  v5 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v16 - v6;
  swift_getWitnessTable();
  v8 = type metadata accessor for ChildEnvironment();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - v10;
  v16[3] = *a1;
  type metadata accessor for _GraphValue();
  LODWORD(a1) = _GraphValue.value.getter();
  v12 = *(a2 + 16);
  swift_beginAccess();
  LODWORD(v12) = *(v12 + 16);
  (*(*(v4 - 8) + 56))(v7, 1, 1, v4);
  ChildEnvironment.init(modifier:environment:oldModifier:)(a1, v12, v7, v11);
  v18 = v8;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<EnvironmentValues>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_10, v17, v8, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  (*(v9 + 8))(v11, v8);
  return _GraphInputs.environment.setter();
}

uint64_t ChildEnvironment.init(modifier:environment:oldModifier:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for ChildEnvironment() + 40);
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t protocol witness for EnvironmentWritingModifier.value.getter in conformance EnvironmentWritingSceneModifier<A>@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t Scene.environment<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v15 - v7;
  v9 = type metadata accessor for EnvironmentWritingSceneModifier();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(v6 + 16))(v8, a2, AssociatedTypeWitness, v11);
  (*(v6 + 32))(v13, v8, AssociatedTypeWitness);
  Scene.modifier<A>(_:)(v13, a3, v9);
  return (*(v10 + 8))(v13, v9);
}

uint64_t type metadata completion function for EnvironmentWritingSceneModifier()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for EnvironmentWritingSceneModifier(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && *(*(AssociatedTypeWitness - 8) + 64) <= 0x18uLL && (*(v5 + 80) & 0x100000) == 0)
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 + 16) & ~v6));
  }

  return a1;
}

uint64_t destroy for EnvironmentWritingSceneModifier(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for EnvironmentWritingSceneModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithCopy for EnvironmentWritingSceneModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t initializeWithTake for EnvironmentWritingSceneModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for EnvironmentWritingSceneModifier(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(a1, a2, AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for EnvironmentWritingSceneModifier(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v5)
  {
LABEL_23:
    v11 = *(v4 + 48);

    return v11(a1);
  }

  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v9 = ((a2 - v5 + ~(-1 << v7)) >> v7) + 1;
    if (HIWORD(v9))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 < 2)
    {
LABEL_22:
      if (v5)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v10 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v10 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v10) + 1;
}

void storeEnumTagSinglePayload for EnvironmentWritingSceneModifier(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (a3 <= v7)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 - v7 + ~(-1 << (8 * v8))) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7 < a2)
  {
    v10 = ~v7 + a2;
    if (v8 < 4)
    {
      v11 = (v10 >> (8 * v8)) + 1;
      if (v8)
      {
        v14 = v10 & ~(-1 << (8 * v8));
        bzero(a1, v8);
        if (v8 != 3)
        {
          if (v8 == 2)
          {
            *a1 = v14;
            if (v9 > 1)
            {
LABEL_39:
              if (v9 == 2)
              {
                *&a1[v8] = v11;
              }

              else
              {
                *&a1[v8] = v11;
              }

              return;
            }
          }

          else
          {
            *a1 = v10;
            if (v9 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v14;
        a1[2] = BYTE2(v14);
      }

      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v9)
    {
      a1[v8] = v11;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v8] = 0;
  }

  else if (v9)
  {
    a1[v8] = 0;
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
  v15 = *(v6 + 56);

  v15(a1, a2);
}

uint64_t ChildEnvironment.updateValue()(uint64_t a1)
{
  v2 = v1;
  v41 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v33 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v30 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v28 - v6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v35 = v13;
  v14 = *(v13 + 48);
  Value = AGGraphGetValue();
  v17 = v16;
  v18 = *(v3 - 8);
  (*(v18 + 16))(v12, Value, v3);
  v12[v14] = v17 & 1;
  v19 = AGGraphGetValue();
  v20 = v19[1];
  v38 = *v19;
  v39 = v20;
  v40 = v21 & 1;
  if (v21)
  {
  }

  else
  {
    OutputValue = AGGraphGetOutputValue();

    if (OutputValue && (getter of modifierNeedsUpdate #1 in ChildEnvironment.updateValue()(v12, v1, v3, v4) & 1) == 0)
    {

      return (*(v34 + 8))(v12, v35);
    }
  }

  v24 = swift_checkMetadataState();
  (*(v4 + 32))(v3, v4);
  specialized EnvironmentValues.subscript.setter(v7, v24, v24, AssociatedConformanceWitness);
  (*(v29 + 8))(v7, v30);
  v36 = v38;
  v37 = v39;

  AGGraphSetOutputValue();

  v25 = *(v33 + 40);
  v26 = type metadata accessor for Optional();
  (*(*(v26 - 8) + 8))(v2 + v25, v26);
  v27 = v32;
  (*(v34 + 32))(v32, v12, v35);
  (*(v18 + 32))(v2 + v25, v27, v3);
  return (*(v18 + 56))(v2 + v25, 0, 1, v3);
}

uint64_t getter of modifierNeedsUpdate #1 in ChildEnvironment.updateValue()(void (*a1)(void, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v22 = a1;
  v40 = *MEMORY[0x1E69E9840];
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = &v34 - v18;
  v21 = *(v20 + 16);
  v37 = v22;
  v21(v19, v22, TupleTypeMetadata2, v17);
  LODWORD(v22) = v19[*(TupleTypeMetadata2 + 48)];
  v23 = *(v6 + 8);
  v23(v19, a3);
  if (v22 == 1)
  {
    v24 = *(type metadata accessor for ChildEnvironment() + 40);
    if (!(*(v6 + 48))(v38 + v24, 1, a3))
    {
      v25 = v38 + v24;
      v26 = v34;
      (*(v6 + 16))(v34, v25, a3);
      v22 = *(a4 + 32);
      v22(a3, a4);
      v23(v26, a3);
      v27 = v36;
      (*(v36 + 32))(v15, v12, AssociatedTypeWitness);
      v28 = v35;
      v29 = (v22)(a3, a4);
      MEMORY[0x1EEE9AC00](v29);
      *(&v34 - 4) = AssociatedTypeWitness;
      *(&v34 - 3) = v28;
      *(&v34 - 4) = 3;
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, partial apply for closure #1 in compareValues<A>(_:_:options:), (&v34 - 6), AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v30);
      v31 = *(v27 + 8);
      v31(v15, AssociatedTypeWitness);
      v32 = v39;
      v31(v28, AssociatedTypeWitness);
      LOBYTE(v22) = v32 ^ 1;
    }
  }

  else
  {
    LOBYTE(v22) = 0;
  }

  return v22 & 1;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ChildEnvironment<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t type metadata completion function for ChildEnvironment()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ChildEnvironment(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = v7 & 0x100000;
  if (v8 <= 7 && v10 == 0 && ((-9 - v8) | v8) - v9 >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v14 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v15 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v14 = *v15;
    v16 = v14 + v8 + 4;
    v17 = v15 + v8 + 4;
    if ((*(v5 + 48))(v17 & ~v8, 1, v4))
    {
      memcpy((v16 & ~v8), (v17 & ~v8), v9);
    }

    else
    {
      (*(v6 + 16))(v16 & ~v8, v17 & ~v8, v4);
      (*(v6 + 56))(v16 & ~v8, 0, 1, v4);
    }
  }

  else
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v8 & 0xFC ^ 0x1FC) & (v8 + 16)));
  }

  return v3;
}

uint64_t destroy for ChildEnvironment(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v7 = *(v2 - 8);
  v3 = *(v7 + 80);
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v3 + 4;
  result = (*(v7 + 48))(v4 & ~v3, 1, v2);
  if (!result)
  {
    v6 = *(v7 + 8);

    return v6(v4 & ~v3, v2);
  }

  return result;
}

_DWORD *initializeWithCopy for ChildEnvironment(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v4 + v8 + 4;
  v10 = v5 + v8 + 4;
  if ((*(v7 + 48))(v10 & ~v8, 1, v6))
  {
    if (*(v7 + 84))
    {
      v11 = *(v7 + 64);
    }

    else
    {
      v11 = *(v7 + 64) + 1;
    }

    memcpy((v9 & ~v8), (v10 & ~v8), v11);
  }

  else
  {
    (*(v7 + 16))(v9 & ~v8, v10 & ~v8, v6);
    (*(v7 + 56))(v9 & ~v8, 0, 1, v6);
  }

  return a1;
}

_DWORD *assignWithCopy for ChildEnvironment(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v4 + v8 + 4;
  v10 = v5 + v8 + 4;
  v11 = *(v7 + 48);
  v12 = v11(v9 & ~v8, 1, v6);
  v13 = v11(v10 & ~v8, 1, v6);
  if (v12)
  {
    if (!v13)
    {
      (*(v7 + 16))(v9 & ~v8, v10 & ~v8, v6);
      (*(v7 + 56))(v9 & ~v8, 0, 1, v6);
      return a1;
    }

    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v7 + 24))(v9 & ~v8, v10 & ~v8, v6);
      return a1;
    }

    v17 = *(v7 + 8);
    v16 = v7 + 8;
    v17(v9 & ~v8, v6);
    v14 = *(v16 + 76);
    v15 = *(v16 + 56);
  }

  if (v14)
  {
    v18 = v15;
  }

  else
  {
    v18 = v15 + 1;
  }

  memcpy((v9 & ~v8), (v10 & ~v8), v18);
  return a1;
}

_DWORD *initializeWithTake for ChildEnvironment(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v4 + v8 + 4;
  v10 = v5 + v8 + 4;
  if ((*(v7 + 48))(v10 & ~v8, 1, v6))
  {
    if (*(v7 + 84))
    {
      v11 = *(v7 + 64);
    }

    else
    {
      v11 = *(v7 + 64) + 1;
    }

    memcpy((v9 & ~v8), (v10 & ~v8), v11);
  }

  else
  {
    (*(v7 + 32))(v9 & ~v8, v10 & ~v8, v6);
    (*(v7 + 56))(v9 & ~v8, 0, 1, v6);
  }

  return a1;
}

_DWORD *assignWithTake for ChildEnvironment(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v4 + v8 + 4;
  v10 = v5 + v8 + 4;
  v11 = *(v7 + 48);
  v12 = v11(v9 & ~v8, 1, v6);
  v13 = v11(v10 & ~v8, 1, v6);
  if (v12)
  {
    if (!v13)
    {
      (*(v7 + 32))(v9 & ~v8, v10 & ~v8, v6);
      (*(v7 + 56))(v9 & ~v8, 0, 1, v6);
      return a1;
    }

    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v7 + 40))(v9 & ~v8, v10 & ~v8, v6);
      return a1;
    }

    v17 = *(v7 + 8);
    v16 = v7 + 8;
    v17(v9 & ~v8, v6);
    v14 = *(v16 + 76);
    v15 = *(v16 + 56);
  }

  if (v14)
  {
    v18 = v15;
  }

  else
  {
    v18 = v15 + 1;
  }

  memcpy((v9 & ~v8), (v10 & ~v8), v18);
  return a1;
}

uint64_t getEnumTagSinglePayload for ChildEnvironment(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(v4 + 80);
  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v6;
  if (a2 > v6)
  {
    v10 = v8 + ((v7 + 8) & ~v7);
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v7 + 4) & ~v7);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for ChildEnvironment(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v7 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = v11 + ((v10 + 8) & ~v10);
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 == 0 || !v13)
  {
LABEL_18:
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
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
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_18;
  }

  v6 = 4;
  if (v9 < a2)
  {
LABEL_19:
    v17 = ~v9 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_46:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_28:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v12] = 0;
  }

  else if (v6)
  {
    a1[v12] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v8 >= 2)
  {
    v20 = *(v7 + 56);
    v21 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 4) & ~v10;
    v22 = a2 + 1;

    v20(v21, v22);
  }
}

unint64_t specialized ChildEnvironment.description.getter()
{
  _StringGuts.grow(_:)(22);

  swift_getAssociatedTypeWitness();
  v0 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v0);

  return 0xD000000000000014;
}

uint64_t type metadata accessor for DragDropDefaultPreviewResponder()
{
  result = type metadata singleton initialization cache for DragDropDefaultPreviewResponder;
  if (!type metadata singleton initialization cache for DragDropDefaultPreviewResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id DragDropDefaultPreviewResponder.previewParameters.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC9A0]) init];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  [v3 setBackgroundColor_];

  [v3 _setPreviewMode_];
  UIViewSnapshotResponder.contentPath.getter(&v13);
  v5 = v17;
  if (v17 != 255)
  {
    v7 = v15;
    v6 = v16;
    v9 = v13;
    v8 = v14;
    v18[0] = v13;
    v18[1] = v14;
    v18[2] = v15;
    v18[3] = v16;
    v19 = v17;
    type metadata accessor for UIBezierPath();
    outlined init with copy of Path?(&v13, v12);
    outlined copy of Path.Storage(v9, v8, v7, v6, v5);
    v10 = UIBezierPath.init(_:)(v18);
    [v3 setVisiblePath_];

    outlined destroy of Path?(&v13);
    outlined destroy of Path?(&v13);
  }

  return v3;
}

uint64_t DragDropDefaultPreviewResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for CustomPreviewResponder()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void CustomPreviewResponder.preview.didset(uint64_t a1)
{
  v2 = v1;
  v4 = (*v2 + class metadata base offset for CustomPreviewResponder);
  v5 = *v4;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  v14 = *&v2[v4[3]];
  if (v14)
  {
    v15 = v4[2];
    swift_beginAccess();
    (*(v7 + 16))(v9, &v2[v15], v6);
    v16 = *(v10 + 48);
    if (v16(v9, 1, v5) == 1)
    {
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      (*(v10 + 32))(v13, v9, v5);
      if (v16(a1, 1, v5) != 1)
      {
        v17 = v14;
        specialized _UIHostingView.rootView.setter(v13);
      }

      (*(v10 + 8))(v13, v5);
    }
  }
}

uint64_t CustomPreviewResponder.previewHost.getter()
{
  v1 = v0;
  v2 = (*v0 + class metadata base offset for CustomPreviewResponder);
  v3 = *v2;
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = v2[3];
  v9 = *(v0 + v8);
  if (v9)
  {
    v10 = *(v0 + v8);
LABEL_5:
    v16 = v9;
    return v10;
  }

  v11 = v2[2];
  swift_beginAccess();
  (*(v5 + 16))(v7, v0 + v11, v4);
  v12 = *(v3 - 8);
  result = (*(v12 + 48))(v7, 1, v3);
  if (result != 1)
  {
    type metadata accessor for _UIHostingView();
    v14 = specialized _UIHostingView.__allocating_init(rootView:)(v7);
    (*(v12 + 8))(v7, v3);
    _UIHostingView.safeAreaRegions.setter();
    v15 = *(v1 + v8);
    *(v1 + v8) = v14;
    v10 = v14;

    v9 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double CustomPreviewResponder.previewSize.getter()
{
  v0 = CustomPreviewResponder.previewHost.getter();
  type metadata accessor for _UIHostingView();
  swift_getWitnessTable();
  *&v1 = *&ViewRendererHost.idealSize()();

  return v1;
}

UIDragPreviewParameters __swiftcall CustomPreviewResponder.prepareHostForPreview()()
{
  v1 = DragDropDefaultPreviewResponder.previewParameters.getter();
  static Update.ensure<A>(_:)();
  return v1;
}

uint64_t closure #1 in CustomPreviewResponder.prepareHostForPreview()(uint64_t a1, void *a2)
{
  v3 = CustomPreviewResponder.previewHost.getter();
  v4 = CustomPreviewResponder.previewSize.getter();
  [v3 setFrame_];

  v6 = CustomPreviewResponder.previewHost.getter();
  *&v12[0] = 0;
  BYTE8(v12[0]) = 1;
  type metadata accessor for _UIHostingView();
  swift_getWitnessTable();
  ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();

  v7 = CustomPreviewResponder.previewHost.getter();
  _UIHostingView.viewGraph.getter();

  v8 = ViewGraph.responderNode.getter();

  if (v8)
  {
    type metadata accessor for ViewResponder();
    if (swift_dynamicCastClass())
    {
      v15 = 0u;
      v16 = 0u;
      v17 = 6;
      *&v18 = 2;
      hostingViewCoordinateSpace.getter();
      v14 = 1;
      dispatch thunk of ViewResponder.addContentPath(to:kind:in:observer:)();
      outlined destroy of CoordinateSpace(v12);
      v18 = v15;
      v19 = v16;
      v20 = v17;
      if (Path.isEmpty.getter())
      {
      }

      else
      {
        type metadata accessor for UIBezierPath();
        v12[0] = v18;
        v12[1] = v19;
        v13 = v20;
        outlined init with copy of Path.Storage(v12, v11);
        v10 = UIBezierPath.init(_:)(&v18);
        [a2 setVisiblePath_];
      }

      return outlined destroy of Path(&v18);
    }

    else
    {
    }
  }

  return result;
}

uint64_t CustomPreviewResponder.makePreview()@<X0>(uint64_t a1@<X8>)
{
  isa = CustomPreviewResponder.prepareHostForPreview()().super.super.isa;
  result = CustomPreviewResponder.previewHost.getter();
  *a1 = result;
  *(a1 + 8) = isa;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  return result;
}

uint64_t CustomPreviewResponder.init(inputs:space:displayList:)(uint64_t a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v4;
  v9[4] = *(a1 + 64);
  v10 = *(a1 + 80);
  v5 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v5;
  v6 = *a2;
  (*(*(*(v3 + class metadata base offset for CustomPreviewResponder) - 8) + 56))(v2 + *(v3 + class metadata base offset for CustomPreviewResponder + 16), 1, 1);
  *(v2 + *(*v2 + class metadata base offset for CustomPreviewResponder + 24)) = 0;
  *(v2 + 296) = 0;
  v2[38] = 0;
  *(v2 + 78) = 0;
  *(v2 + 316) = 2;
  v8 = v6;
  return UIViewSnapshotResponder.init(inputs:space:displayList:)(v9, &v8);
}

void CustomPreviewResponder.__ivar_destroyer()
{
  v1 = *(*v0 + class metadata base offset for CustomPreviewResponder + 16);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *&v0[*(*v0 + class metadata base offset for CustomPreviewResponder + 24)];
}

char *CustomPreviewResponder.deinit()
{
  v0 = DefaultLayoutViewResponder.deinit();
  v1 = *(*v0 + class metadata base offset for CustomPreviewResponder + 16);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  return v0;
}

Swift::Void __swiftcall CustomPreviewDropResponder.prepareForPreview(contentTypes:defaultPreview:)(Swift::OpaquePointer contentTypes, SwiftUI::DefaultDragDropPreview_optional defaultPreview)
{
  v3 = *defaultPreview.value.base.super.super.isa;
  *(v2 + *(*v2 + class metadata base offset for CustomPreviewDropResponder + 16)) = contentTypes._rawValue;

  v4 = *(*v2 + class metadata base offset for CustomPreviewDropResponder + 24);
  v6 = *(v2 + v4);
  *(v2 + v4) = v3;
  v5 = v3;
}

void CustomPreviewDropResponder.makePreview()(uint64_t a1@<X8>)
{
  v3 = (*v1 + class metadata base offset for CustomPreviewDropResponder);
  v4 = type metadata accessor for Optional();
  *&v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v28 - v5;
  v6 = type metadata accessor for DropPreview();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v15 = *(v1 + v3[2]);
  v16 = 0uLL;
  if (!v15)
  {
    v26 = 0;
    v25.super.super.isa = 0;
    v27 = 0;
    goto LABEL_9;
  }

  v33 = a1;
  v17 = *(v1 + v3[4]);
  if (!v17)
  {
    (*(v12 + 56))(v10, 1, 1, v6, 0);
    goto LABEL_8;
  }

  v29 = v1;
  v30 = v4;
  v18 = *(v1 + v3[3]);
  v35 = v18;
  v19 = v12;

  outlined copy of AppIntentExecutor?(v17);
  v20 = v18;
  v17(v15, &v35);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v17);

  if ((*(v19 + 48))(v10, 1, v6) == 1)
  {
LABEL_8:
    (*(v8 + 8))(v10, v7);
    v26 = 0;
    v25.super.super.isa = 0;
    v27 = 0;
    a1 = v33;
    v16 = 0uLL;
    goto LABEL_9;
  }

  v21 = v19;
  (*(v19 + 32))(v14, v10, v6);
  v22 = *(*v29 + class metadata base offset for CustomPreviewResponder + 24);
  v23 = *(v29 + v22);
  *(v29 + v22) = 0;

  v24 = v31;
  DropPreview.view()(v6, v31);
  specialized CustomPreviewResponder.preview.setter(v24);
  (*(v32 + 8))(v24, v30);
  v25.super.super.isa = CustomPreviewResponder.prepareHostForPreview()().super.super.isa;
  v26 = CustomPreviewResponder.previewHost.getter();
  v34 = 1;
  a1 = v33;
  if (v26)
  {
    v32 = *&v14[*(v6 + 40)];
    (*(v21 + 8))(v14, v6);
    v16 = v32;
    v34 = 0;
    v27 = 0;
  }

  else
  {
    (*(v21 + 8))(v14, v6);
    v16 = 0uLL;
    v27 = v34;
  }

LABEL_9:
  *a1 = v26;
  *(a1 + 8) = v25;
  *(a1 + 16) = v16;
  *(a1 + 32) = v27;
}

uint64_t CustomPreviewDropResponder.init(inputs:space:displayList:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + *(*v2 + class metadata base offset for CustomPreviewDropResponder + 16)) = 0;
  *(v2 + *(*v2 + class metadata base offset for CustomPreviewDropResponder + 24)) = 0;
  v4 = (v2 + *(*v2 + class metadata base offset for CustomPreviewDropResponder + 32));
  *v4 = 0;
  v4[1] = 0;
  v6 = v3;
  return CustomPreviewResponder.init(inputs:space:displayList:)(a1, &v6);
}

uint64_t CustomPreviewDropResponder.__ivar_destroyer()
{

  v1 = *(v0 + *(*v0 + class metadata base offset for CustomPreviewDropResponder + 32));

  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v1);
}

char *CustomPreviewDropResponder.deinit()
{
  v0 = CustomPreviewResponder.deinit();

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*&v0[*(*v0 + class metadata base offset for CustomPreviewDropResponder + 32)]);
  return v0;
}

uint64_t CustomPreviewResponder.__deallocating_deinit(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t specialized CustomPreviewResponder.preview.setter(uint64_t a1)
{
  v3 = *v1 + class metadata base offset for CustomPreviewResponder;
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = *(v3 + 16);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v8], v4);
  swift_beginAccess();
  (*(v5 + 24))(&v1[v8], a1, v4);
  swift_endAccess();
  CustomPreviewResponder.preview.didset(v7);
  return (*(v5 + 8))(v7, v4);
}

unint64_t type metadata accessor for UIBezierPath()
{
  result = lazy cache variable for type metadata for UIBezierPath;
  if (!lazy cache variable for type metadata for UIBezierPath)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIBezierPath);
  }

  return result;
}

uint64_t outlined init with copy of Path?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Path?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Path?()
{
  if (!lazy cache variable for type metadata for Path?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Path?);
    }
  }
}

uint64_t outlined destroy of Path?(uint64_t a1)
{
  type metadata accessor for Path?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void protocol witness for PickerContent.body.getter in conformance _OnHoverPickerContent<A>()
{
  swift_getWitnessTable();

  PrimitivePickerContent.body.getter();
}

uint64_t sub_18C349BF4()
{
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

void protocol witness for PickerContent.body.getter in conformance _DisabledPickerContent<A>()
{
  swift_getWitnessTable();

  PrimitivePickerContent.body.getter();
}

uint64_t PickerContent<>._identifiedView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  return NestedDynamicProperties.init(wrappedValue:)(v6, a1, a2);
}

uint64_t _PickerContentBodyAdaptor.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for NestedDynamicProperties();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, v2, v6);
  return (*(*(v4 - 8) + 32))(a2, v8, v4);
}

uint64_t _PickerContentBodyAdaptor.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = *(a1 + 16);
  v22 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v21 - v5;
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  _PickerContentBodyAdaptor.content.getter(a1, v9);
  (*(v22 + 64))(v3);
  (*(v23 + 8))(v9, v3);
  (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v24 + 8))(v6, AssociatedTypeWitness);
  v18 = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v14, v11, v18);
  v19 = *(v12 + 8);
  v19(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)(v17, v11, v18);
  return (v19)(v17, v11);
}

uint64_t PickerBuilder.ContentWithFooter.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v37 = a1[4];
  type metadata accessor for _TraitWritingModifier<IsAuxiliaryContentTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsAuxiliaryContentTraitKey>, MEMORY[0x1E6980698], MEMORY[0x1E6980690], MEMORY[0x1E697FDB8]);
  v3 = type metadata accessor for ModifiedContent();
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v31 - v7;
  v8 = a1[3];
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[6];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  v15 = v32;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v41 = &v31 - v19;
  PickerBuilder.Content.content.getter(a1, v12);
  (*(v13 + 56))(v8, v13);
  (*(v9 + 8))(v12, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v17, AssociatedTypeWitness, AssociatedConformanceWitness);
  v34 = *(v15 + 8);
  v34(v17, AssociatedTypeWitness);
  v20 = a1[7];
  v21 = v35;
  View._untagged()();
  IsAuxiliaryContentTrait = lazy protocol witness table accessor for type _TraitWritingModifier<IsAuxiliaryContentTraitKey> and conformance _TraitWritingModifier<A>();
  v47[3] = v20;
  v47[4] = IsAuxiliaryContentTrait;
  v23 = v38;
  WitnessTable = swift_getWitnessTable();
  v25 = v36;
  static ViewBuilder.buildExpression<A>(_:)(v21, v23, WitnessTable);
  v26 = v39;
  v27 = *(v39 + 8);
  v27(v21, v23);
  (*(v32 + 16))(v17, v41, AssociatedTypeWitness);
  v46 = 1;
  v47[0] = v17;
  v47[1] = &v46;
  (*(v26 + 16))(v21, v25, v23);
  v47[2] = v21;
  v45[0] = AssociatedTypeWitness;
  type metadata accessor for ModifiedContent<Divider, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>();
  v45[1] = v28;
  v45[2] = v23;
  v42 = AssociatedConformanceWitness;
  v43 = lazy protocol witness table accessor for type ModifiedContent<Divider, _TraitWritingModifier<IsAuxiliaryContentTraitKey>> and conformance <> ModifiedContent<A, B>();
  v44 = WitnessTable;
  static ViewBuilder.buildBlock<each A>(_:)(v47, 3uLL, v45);
  v27(v25, v23);
  v29 = v34;
  v34(v41, AssociatedTypeWitness);
  v27(v21, v23);
  return v29(v17, AssociatedTypeWitness);
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<IsAuxiliaryContentTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<IsAuxiliaryContentTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<IsAuxiliaryContentTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<IsAuxiliaryContentTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsAuxiliaryContentTraitKey>, MEMORY[0x1E6980698], MEMORY[0x1E6980690], MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<IsAuxiliaryContentTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Divider, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Divider, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>)
  {
    type metadata accessor for _TraitWritingModifier<IsAuxiliaryContentTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsAuxiliaryContentTraitKey>, MEMORY[0x1E6980698], MEMORY[0x1E6980690], MEMORY[0x1E697FDB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Divider, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Divider, _TraitWritingModifier<IsAuxiliaryContentTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Divider, _TraitWritingModifier<IsAuxiliaryContentTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Divider, _TraitWritingModifier<IsAuxiliaryContentTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Divider, _TraitWritingModifier<IsAuxiliaryContentTraitKey>>();
    lazy protocol witness table accessor for type _TraitWritingModifier<IsAuxiliaryContentTraitKey> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Divider, _TraitWritingModifier<IsAuxiliaryContentTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t PickerBuilder.ContentWithFooter.init(content:footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  NestedDynamicProperties.init(wrappedValue:)(a1, a3, a5);
  v8 = type metadata accessor for PickerBuilder.ContentWithFooter();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 68), a2, a4);
}

uint64_t _ConditionalContent<>._identifiedView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v30 = a3;
  v4 = *(a1 + 24);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v25 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = a2;
  v28 = swift_getAssociatedTypeWitness();
  v29 = AssociatedTypeWitness;
  v12 = type metadata accessor for _ConditionalContent.Storage();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v15 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for _ConditionalContent.Storage();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v25 - v21;
  (*(v23 + 16))(&v25 - v21, v27, v19, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v22, v4);
    (*(v26 + 56))(v4);
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v15 + 32))(v18, v22, v9);
    (*(v25 + 56))(v9);
    (*(v15 + 8))(v18, v9);
  }

  swift_storeEnumTagMultiPayload();
  swift_checkMetadataState();
  swift_checkMetadataState();
  return _ConditionalContent.init(__storage:)(v14, v30);
}

{
  v30 = a3;
  v4 = *(a1 + 24);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v25 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = a2;
  v28 = swift_getAssociatedTypeWitness();
  v29 = AssociatedTypeWitness;
  v12 = type metadata accessor for _ConditionalContent.Storage();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v15 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for _ConditionalContent.Storage();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v25 - v21;
  (*(v23 + 16))(&v25 - v21, v27, v19, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v22, v4);
    (*(v26 + 56))(v4);
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v15 + 32))(v18, v22, v9);
    (*(v25 + 56))(v9);
    (*(v15 + 8))(v18, v9);
  }

  swift_storeEnumTagMultiPayload();
  swift_checkMetadataState();
  swift_checkMetadataState();
  return _ConditionalContent.init(__storage:)(v14, v30);
}

void _ConditionalContent<>.body.getter()
{
  swift_getWitnessTable();
  specialized PickerContent.bodyError()();
}

{
  swift_getWitnessTable();
  specialized TabContent.bodyError()();
}

uint64_t Optional<A>._identifiedView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7[4] = *(a1 + 16);
  v7[5] = a2;
  v7[2] = a2;
  v7[3] = swift_getKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for implicit closure #1 in Optional<A>._identifiedView.getter, v7, MEMORY[0x1E69E73E0], AssociatedTypeWitness, v5, a3);
}

{
  v7[2] = *(a1 + 16);
  v7[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in Optional<A>._identifiedView.getter, v7, MEMORY[0x1E69E73E0], AssociatedTypeWitness, v5, a3);
}

void Optional<A>.body.getter()
{
  Optional<A>.body.getter();
}

{
  swift_getWitnessTable();
  specialized PickerContent.bodyError()();
}

{
  Optional<A>.body.getter();
}

{
  swift_getWitnessTable();
  specialized TabContent.bodyError()();
}

uint64_t ForEach<>.init<A>(_:id:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[1] = a6;
  v16[2] = a8;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14, v12);
  v16[3] = a2;
  ForEach.init(_:idGenerator:content:)();
  return (*(v11 + 8))(a1, a5);
}

{
  v16[1] = a6;
  v16[2] = a8;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14, v12);
  v16[3] = a2;
  ForEach.init(_:idGenerator:content:)();
  return (*(v11 + 8))(a1, a5);
}

{
  return ForEach<>.init<A>(_:id:liftedContent:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  v16[1] = a6;
  v16[2] = a8;
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14, v12);
  v16[3] = a2;
  ForEach.init(_:idGenerator:content:)();
  return (*(v11 + 8))(a1, a5);
}

uint64_t ForEach<>._identifiedView.getter(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, a1, v4);
  v12 = *(a1 + 16);
  v14 = v12;
  v15 = *(a1 + 32);
  v13 = *(a1 + 40);
  v16 = v13;
  v17 = a2;
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  v10 = v13;
  *(v9 + 16) = v12;
  *(v9 + 32) = v10;
  *(v9 + 48) = a2;
  *(v9 + 56) = KeyPath;
  swift_getAssociatedTypeWitness();
  return ForEach.init<A>(_:transform:)();
}

{
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, a1, v4);
  v12 = *(a1 + 16);
  v14 = v12;
  v15 = *(a1 + 32);
  v13 = *(a1 + 40);
  v16 = v13;
  v17 = a2;
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  v10 = v13;
  *(v9 + 16) = v12;
  *(v9 + 32) = v10;
  *(v9 + 48) = a2;
  *(v9 + 56) = KeyPath;
  swift_getAssociatedTypeWitness();
  return ForEach.init<A>(_:transform:)();
}

void ForEach<>.body.getter()
{
  Optional<A>.body.getter();
}

{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  Optional<A>.body.getter();
}

uint64_t ForEach<>.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v22[2] = a2;
  v22[3] = a3;
  v22[1] = a9;
  v17 = *(a4 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  (*(v17 + 16))(v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v20, v18);
  v22[4] = a4;
  v22[5] = a5;
  v22[6] = a6;
  v22[7] = a7;
  v22[8] = a8;
  v22[9] = a10;
  v22[10] = a11;
  v22[11] = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  ForEach.init(_:idGenerator:content:)();
  return (*(v17 + 8))(a1, a4);
}

{
  v22[2] = a2;
  v22[3] = a3;
  v22[1] = a9;
  v17 = *(a4 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  (*(v17 + 16))(v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v20, v18);
  v22[4] = a4;
  v22[5] = a5;
  v22[6] = a6;
  v22[7] = a7;
  v22[8] = a8;
  v22[9] = a10;
  v22[10] = a11;
  v22[11] = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  ForEach.init(_:idGenerator:content:)();
  return (*(v17 + 8))(a1, a4);
}

{
  v26 = a2;
  v27 = a3;
  v25[1] = a9;
  v17 = *(a4 - 8);
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v21, v18);
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v32 = a8;
  v33 = a10;
  v34 = a11;
  KeyPath = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  ForEach<>.init<A>(_:id:content:)(v20, KeyPath, v26, v27, a4, a6, v23, a8);
  return (*(v17 + 8))(a1, a4);
}

double ForEach<>.init<A>(_:content:)@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a1;
  v12[6] = a2;
  type metadata accessor for _TraitWritingModifier<IsAuxiliaryContentTraitKey>(0, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  ForEach.init(_:idGenerator:content:)();
  *a6 = v14;
  *(a6 + 16) = v15;
  result = *&v16;
  *(a6 + 32) = v16;
  *(a6 + 48) = v17;
  return result;
}

{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a1;
  v12[6] = a2;
  type metadata accessor for Range<Int>();
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  ForEach.init(_:idGenerator:content:)();
  *a6 = v14;
  *(a6 + 16) = v15;
  result = *&v16;
  *(a6 + 32) = v16;
  *(a6 + 48) = v17;
  return result;
}

{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a1;
  v12[6] = a2;
  _sSnySiGMaTm_6(0, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  _sSnySiGSnyxGSksSxRzSZ6StrideRpzrlWlTm_0(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  ForEach.init(_:idGenerator:content:)();
  *a6 = v14;
  *(a6 + 16) = v15;
  result = *&v16;
  *(a6 + 32) = v16;
  *(a6 + 48) = v17;
  return result;
}

uint64_t Group<A>.init<A>(content:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v2(v1);
  return Group.init(_content:)();
}

{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v2(v1);
  return Group.init(_content:)();
}

{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v2(v1);
  return Group.init(_content:)();
}

{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v2(v1);
  return Group.init(_content:)();
}

uint64_t Group<A>._identifiedView.getter(uint64_t a1, uint64_t a2)
{
  return (*(a2 + 56))(*(a1 + 16));
}

{
  return (*(a2 + 56))(*(a1 + 16));
}

void Group<A>.body.getter()
{
  Optional<A>.body.getter();
}

{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  Optional<A>.body.getter();
}

uint64_t Section<>._identifiedView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  swift_getKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  mapSection<A, B, C, D>(_:transform:)(v2, partial apply for implicit closure #1 in Section<>._identifiedView.getter, v6, AssociatedTypeWitness, v7, a2);
}

uint64_t mapSection<A, B, C, D>(_:transform:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v24 = a2;
  v25 = a6;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, a1, v21, v17);
  v22 = type metadata accessor for Section();
  v24(a1 + *(v22 + 44));
  (*(v10 + 16))(v12, a1 + *(v22 + 48), a5);
  return Section.init(header:content:footer:)(v19, v15, v12, a3, a4, a5, v25);
}

uint64_t Section<>.init<A>(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v8(v5);
  return Section.init(header:content:footer:)(v9, v7, v10, MEMORY[0x1E6981E70], a2, MEMORY[0x1E6981E70], a3);
}

uint64_t Section<>.init<A>(content:header:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14(v11);
  a1(v15);
  return Section.init(header:content:footer:)(v13, v9, v16, a2, a3, MEMORY[0x1E6981E70], a4);
}

uint64_t Section<>.init<A, B>(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  (*(v13 + 16))(v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17, v15);
  v23[0] = Text.init<A>(_:)();
  v23[1] = v18;
  v24 = v19 & 1;
  v25 = v20;
  a2(v23[0], v18, v19, v20);
  (*(v13 + 8))(a1, a4);
  return Section.init(header:content:footer:)(v23, v11, v21, MEMORY[0x1E6981148], a3, MEMORY[0x1E6981E70], a5);
}

uint64_t Section<>.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = Text.init(_:tableName:bundle:comment:)();
  v15[1] = v9;
  v16 = v10 & 1;
  v17 = v11;
  a2();
  return Section.init(header:content:footer:)(v15, v8, v12, MEMORY[0x1E6981148], a3, MEMORY[0x1E6981E70], a4);
}

uint64_t _TuplePickerContent._identifiedView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TupleView();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _TuplePickerContent.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  TupleView.init(_:)();
  return (*(v5 + 8))(a1, a3);
}

void protocol witness for PickerContent.body.getter in conformance _TuplePickerContent<A, B>()
{
  swift_getWitnessTable();

  PrimitivePickerContent.body.getter();
}

void protocol witness for PickerContent.body.getter in conformance _KeyboardShortcutPickerContent<A>()
{
  swift_getWitnessTable();

  PrimitivePickerContent.body.getter();
}

void specialized PickerContent.bodyError()()
{
  _StringGuts.grow(_:)(31);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](0xD000000000000015, 0x800000018CD43120);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata accessor for _TraitWritingModifier<IsAuxiliaryContentTraitKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t associated type witness table accessor for View.Body : View in _PickerContentBodyAdaptor<A>()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t associated type witness table accessor for PickerContent._IdentifiedView : View in <> _ConditionalContent<A, B>()
{
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

uint64_t instantiation function for generic protocol witness table for _TuplePickerContent<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t default associated conformance accessor for PickerContent.PickerContent.SelectionValue: Hashable()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t type metadata completion function for PickerBuilder.ContentWithFooter()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for PickerBuilder.ContentWithFooter(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 32);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = ((v5 + v8) & ~v8) + *(v7 + 64);
  v11 = (*(v4 + 80) | *(v7 + 80));
  if (v11 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v10 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v11 + 16) & ~v11));
  }

  else
  {
    v15 = ~v8;
    (*(v4 + 16))(a1);
    (*(v7 + 16))((v3 + v9) & v15, (a2 + v9) & v15, v6);
  }

  return v3;
}

uint64_t destroy for PickerBuilder.ContentWithFooter(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 24) - 8) + 8;
  (*v4)();
  v5 = *(*(a2 + 32) - 8);
  v6 = *(v5 + 8);
  v7 = (*(v4 + 56) + a1 + *(v5 + 80)) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t initializeWithCopy for PickerBuilder.ContentWithFooter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 32) - 8);
  (*(v7 + 16))((*(v6 + 48) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 48) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t assignWithCopy for PickerBuilder.ContentWithFooter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 32) - 8);
  (*(v7 + 24))((*(v6 + 40) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 40) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t initializeWithTake for PickerBuilder.ContentWithFooter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 32) - 8);
  (*(v7 + 32))((*(v6 + 32) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 32) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t assignWithTake for PickerBuilder.ContentWithFooter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 32) - 8);
  (*(v7 + 40))((*(v6 + 24) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 24) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for PickerBuilder.ContentWithFooter(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 32);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 24) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

void storeEnumTagSinglePayload for PickerBuilder.ContentWithFooter(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 32) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v7)
  {
    v12 = *(v6 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(v8 + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v19 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v18 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v21 = v17 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_57:
              if (v16 == 2)
              {
                *&a1[v13] = v18;
              }

              else
              {
                *&a1[v13] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v16)
    {
      a1[v13] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v13] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v16)
  {
    goto LABEL_30;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 >= v9)
  {
    if (v7 >= a2)
    {
      v27 = *(v6 + 56);

      v27();
    }

    else
    {
      if (v10 <= 3)
      {
        v24 = ~(-1 << (8 * v10));
      }

      else
      {
        v24 = -1;
      }

      if (v10)
      {
        v25 = v24 & (~v7 + a2);
        if (v10 <= 3)
        {
          v26 = v10;
        }

        else
        {
          v26 = 4;
        }

        bzero(a1, v10);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *a1 = v25;
            a1[2] = BYTE2(v25);
          }

          else
          {
            *a1 = v25;
          }
        }

        else if (v26 == 1)
        {
          *a1 = v25;
        }

        else
        {
          *a1 = v25;
        }
      }
    }
  }

  else
  {
    v22 = *(v8 + 56);
    v23 = &a1[v10 + v11] & ~v11;

    v22(v23);
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for PickerBuilder.Content(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && *(*(*(a3 + 24) - 8) + 64) <= 0x18uLL && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 + 16) & ~v5));
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for PickerBuilder.Content(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for PickerBuilder.Content(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t assignWithTake for OnTestViewModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4;

  return a1;
}

double static AddSupportedPPTTestsModifier._makeView(modifier:inputs:body:)@<D0>(__int128 *a1@<X1>, void (*a2)(uint64_t *__return_ptr)@<X2>, double *a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v12 = *a1;
  v13 = v4;
  v14 = a1[2];
  v5 = *(a1 + 6);
  v6 = *(a1 + 14);
  v17 = *(a1 + 60);
  v18 = *(a1 + 76);
  v15 = v5;
  v16 = v6;
  a2(&v10);
  *&v12 = v5;
  DWORD2(v12) = v6;
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    *&v12 = v10;
    DWORD2(v12) = LODWORD(v11);
    v7 = PreferencesOutputs.subscript.getter();
    if ((v7 & 0x100000000) != 0)
    {
      v8 = *MEMORY[0x1E698D3F8];
    }

    else
    {
      v8 = v7;
    }

    *&v12 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v8);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for PPTTestCase?(0, &lazy cache variable for type metadata for [PPTTestCase.Name], &type metadata for PPTTestCase.Name, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type AddSupportedPPTTestsModifier.AddTestCases and conformance AddSupportedPPTTestsModifier.AddTestCases();
    Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v12) = 0;
    PreferencesOutputs.subscript.setter();
  }

  *a3 = v10;
  result = v11;
  a3[1] = v11;
  return result;
}

uint64_t AddSupportedPPTTestsModifier.AddTestCases.value.getter(int a1)
{
  v2 = *MEMORY[0x1E698D3F8];
  type metadata accessor for PPTTestCase?(0, &lazy cache variable for type metadata for [PPTTestCase.Name], &type metadata for PPTTestCase.Name, MEMORY[0x1E69E62F8]);
  if (v2 == a1)
  {
    AGGraphGetValue();
  }

  else
  {
    v5 = *AGGraphGetValue();

    AGGraphGetValue();

    specialized Array.append<A>(contentsOf:)(v4);
    return v5;
  }
}

uint64_t protocol witness for Rule.value.getter in conformance AddSupportedPPTTestsModifier.AddTestCases@<X0>(uint64_t *a1@<X8>)
{
  result = AddSupportedPPTTestsModifier.AddTestCases.value.getter(*v1);
  *a1 = result;
  return result;
}

char *OnTestViewModifier.AddTestCase.value.getter(int a1)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    type metadata accessor for PPTTestCase?(0, &lazy cache variable for type metadata for [PPTTestCase.Name], &type metadata for PPTTestCase.Name, MEMORY[0x1E69E62F8]);
    v1 = *AGGraphGetValue();
  }

  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
  }

  v6 = *(v1 + 2);
  v5 = *(v1 + 3);
  if (v6 >= v5 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v1);
  }

  *(v1 + 2) = v6 + 1;
  v7 = &v1[16 * v6];
  *(v7 + 4) = v4;
  *(v7 + 5) = v3;
  return v1;
}

char *protocol witness for Rule.value.getter in conformance OnTestViewModifier.AddTestCase@<X0>(char **a1@<X8>)
{
  result = OnTestViewModifier.AddTestCase.value.getter(*v1);
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AddSupportedPPTTestsModifier.AddTestCases and conformance AddSupportedPPTTestsModifier.AddTestCases()
{
  result = lazy protocol witness table cache variable for type AddSupportedPPTTestsModifier.AddTestCases and conformance AddSupportedPPTTestsModifier.AddTestCases;
  if (!lazy protocol witness table cache variable for type AddSupportedPPTTestsModifier.AddTestCases and conformance AddSupportedPPTTestsModifier.AddTestCases)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddSupportedPPTTestsModifier.AddTestCases and conformance AddSupportedPPTTestsModifier.AddTestCases);
  }

  return result;
}

uint64_t CustomizableToolbarContent.matchedTransitionID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  return ToolbarContent.modifier<A>(_:)(v5, a3, &type metadata for TransitionIdentifierModifier, a4);
}

uint64_t ToolbarContent.matchedTransitionID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  return ToolbarContent.modifier<A>(_:)(v5, a3, &type metadata for TransitionIdentifierModifier, a4);
}

uint64_t static TransitionIdentifierModifier._makeToolbar(content:inputs:body:)(int *a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *))
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v5 = a2[3];
  v21 = a2[2];
  v22[0] = v5;
  *(v22 + 12) = *(a2 + 60);
  v6 = a2[1];
  v20[0] = *a2;
  v20[1] = v6;
  v7 = a2[3];
  v18 = v21;
  v19[0] = v7;
  *(v19 + 12) = *(a2 + 60);
  v8 = *a1;
  v9 = v6;
  v16 = v20[0];
  v17 = v4;
  swift_beginAccess();
  LODWORD(v25[0]) = *(v9 + 16);
  DWORD1(v25[0]) = v8;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ToolbarInputs(v20, v27);
  lazy protocol witness table accessor for type TransitionIdentifierModifier.ChildEnvironment and conformance TransitionIdentifierModifier.ChildEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v23[2] = v18;
  v24[0] = v19[0];
  *(v24 + 12) = *(v19 + 12);
  v23[0] = v16;
  v23[1] = v17;
  v14 = v18;
  v15[0] = v19[0];
  *(v15 + 12) = *(v19 + 12);
  v12 = v16;
  v13 = v17;
  v10 = outlined init with copy of _ToolbarInputs(v23, v27);
  a3(v10, &v12);
  v25[2] = v14;
  v26[0] = v15[0];
  *(v26 + 12) = *(v15 + 12);
  v25[0] = v12;
  v25[1] = v13;
  outlined destroy of _ToolbarInputs(v25);
  v27[2] = v18;
  v28[0] = v19[0];
  *(v28 + 12) = *(v19 + 12);
  v27[0] = v16;
  v27[1] = v17;
  return outlined destroy of _ToolbarInputs(v27);
}

uint64_t TransitionIdentifierModifier.ChildEnvironment.value.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;

  swift_retain_n();
  AGGraphGetValue();
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarTransitionIdentifier>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarTransitionIdentifier> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

double specialized implicit closure #1 in _GraphInputs.toolbarTransitionIdentifier.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarTransitionIdentifier>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarTransitionIdentifier> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarTransitionIdentifier>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarTransitionIdentifier> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type TransitionIdentifierModifier.ChildEnvironment and conformance TransitionIdentifierModifier.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type TransitionIdentifierModifier.ChildEnvironment and conformance TransitionIdentifierModifier.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type TransitionIdentifierModifier.ChildEnvironment and conformance TransitionIdentifierModifier.ChildEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransitionIdentifierModifier.ChildEnvironment and conformance TransitionIdentifierModifier.ChildEnvironment);
  }

  return result;
}

uint64_t AnyDynamicItem.makeView<A>(uniqueId:container:inputs:adaptor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a3 + 48);
  v12[2] = *(a3 + 32);
  v12[3] = v9;
  v12[4] = *(a3 + 64);
  v13 = *(a3 + 80);
  v10 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v10;
  return (*(*a5 + 112))(a1, a2, v12, a8, a8, a9);
}

uint64_t *makeStorage<A, B>(content:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v32 = a2;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v10;
  StorageVisitor1 = type metadata accessor for MakeStorageVisitor1();
  v27 = *(StorageVisitor1 - 8);
  MEMORY[0x1EEE9AC00](StorageVisitor1);
  v13 = &v27 - v12;
  v14 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v20 = *(v14 + 16);
  v30 = a1;
  v20(&v27 - v21, a1, a3, v19);
  if (swift_dynamicCast())
  {
    v22 = v31;
    (*(v8 + 16))(v31, v32, a4);
    (*(v8 + 32))(v13, v22, a4);
    *&v13[*(StorageVisitor1 + 36)] = 0;
    swift_getWitnessTable();
    result = AnyView.visitContent<A>(_:)();
    v24 = *&v13[*(StorageVisitor1 + 36)];
    if (v24)
    {
      v25 = *(v27 + 8);

      v25(v13, StorageVisitor1);

      return v24;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v33 = a3;
    v34 = a4;
    v35 = v28;
    v36 = v29;
    type metadata accessor for IdentifiedItemStorage();
    (v20)(v17, v30, a3);
    v26 = v31;
    (*(v8 + 16))(v31, v32, a4);
    swift_allocObject();
    return IdentifiedItemStorage.init(content:identifier:)(v17, v26);
  }

  return result;
}

uint64_t AnyDynamicItem.matchesIdentity(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == a1 || ((*(*a4 + 104))() & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    v7 = (*(*a4 + 80))();
    if (v7 == (*(*a1 + 80))())
    {
      v8 = (*(*a4 + 88))(v11);
      (*(*a1 + 88))(v10, v8);
      v6 = MEMORY[0x18D00E7E0](v11, v10);
      outlined destroy of AnyHashable(v10);
      outlined destroy of AnyHashable(v11);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

BOOL protocol witness for DynamicContainerItem.canBeReused(by:) in conformance AnyDynamicItem(uint64_t *a1)
{
  v2 = *a1;
  v3 = (*(**v1 + 80))();
  return v3 == (*(*v2 + 80))();
}

uint64_t type metadata completion function for IdentifiedItemStorage()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *IdentifiedItemStorage.init(content:identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  (*(*(*(*v2 + 136) - 8) + 32))(v2 + *(*v2 + 168), a1);
  (*(*(*(v4 + 144) - 8) + 32))(v2 + *(*v2 + 176), a2);
  return v2;
}

uint64_t IdentifiedItemStorage.matchesIdentity(of:)()
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v1 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v1 & 1;
  }

  return result;
}

uint64_t IdentifiedItemStorage.makeView<A>(uniqueId:container:inputs:adaptor:)(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = *v6;
  v8 = *(a3 + 48);
  *&v26[9] = *(a3 + 32);
  *&v26[11] = v8;
  *&v26[13] = *(a3 + 64);
  v27 = *(a3 + 80);
  v9 = *(a3 + 16);
  *&v26[5] = *a3;
  *&v26[7] = v9;
  v10 = *(v7 + 136);
  v11 = *(v7 + 152);
  v26[0] = __PAIR64__(a1, a2);
  memset(&v26[1], 0, 32);
  v24[0] = *v26;
  v24[1] = *&v26[2];
  v25 = 0;
  v17 = v10;
  v20 = v10;
  v21 = a5;
  v22 = v11;
  v23 = a6;
  v12 = type metadata accessor for AnyDynamicChild();
  v18 = v12;
  WitnessTable = swift_getWitnessTable();
  v13 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v24, closure #1 in Attribute.init<A>(_:)partial apply, v16, v12, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  (*(*(v12 - 8) + 8))(v26, v12);
  _GraphValue.init(_:)();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t IdentifiedItemStorage.__ivar_destroyer()
{
  v1 = *v0;
  (*(*(*(*v0 + 136) - 8) + 8))(v0 + *(*v0 + 168));
  v2 = *(*(*(v1 + 144) - 8) + 8);
  v3 = v0 + *(*v0 + 176);

  return v2(v3);
}

uint64_t *IdentifiedItemStorage.deinit()
{
  v1 = *v0;
  (*(*(*(*v0 + 136) - 8) + 8))(v0 + *(*v0 + 168));
  (*(*(*(v1 + 144) - 8) + 8))(v0 + *(*v0 + 176));
  return v0;
}

uint64_t type metadata completion function for IdentifiedTransitionStorage()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t *IdentifiedTransitionStorage.init(content:identifier:transition:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  (*(*(*(*v3 + 136) - 8) + 32))(v3 + *(*v3 + 184), a1);
  (*(*(*(v6 + 144) - 8) + 32))(v3 + *(*v3 + 192), a2);
  (*(*(*(v6 + 152) - 8) + 32))(v3 + *(*v3 + 200), a3);
  return v3;
}

uint64_t IdentifiedTransitionStorage.contentType.getter()
{
  type metadata accessor for ApplyTransitionModifier();

  return type metadata accessor for ModifiedContent();
}

uint64_t IdentifiedTransitionStorage.matchesIdentity(of:)()
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v1 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v1 & 1;
  }

  return result;
}

uint64_t IdentifiedTransitionStorage.makeView<A>(uniqueId:container:inputs:adaptor:)(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v11 = *(a3 + 48);
  *&v31[9] = *(a3 + 32);
  *&v31[11] = v11;
  *&v31[13] = *(a3 + 64);
  v12 = *(a3 + 16);
  *&v31[5] = *a3;
  v13 = *v6;
  v32 = *(a3 + 80);
  *&v31[7] = v12;
  type metadata accessor for ApplyTransitionModifier();
  v14 = type metadata accessor for ModifiedContent();
  v29 = *(v13 + 160);
  WitnessTable = swift_getWitnessTable();
  v31[0] = __PAIR64__(a1, a2);
  memset(&v31[1], 0, 32);
  v27[0] = *v31;
  v27[1] = *&v31[2];
  v28 = 0;
  v20 = v14;
  v23 = v14;
  v24 = a5;
  v25 = swift_getWitnessTable();
  v26 = a6;
  v15 = type metadata accessor for AnyDynamicChild();
  v21 = v15;
  v22 = swift_getWitnessTable();
  v16 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v27, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v19, v15, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
  (*(*(v15 - 8) + 8))(v31, v15);
  _GraphValue.init(_:)();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t IdentifiedTransitionStorage.visitContent<A>(_:phase:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v17 = a1;
  v18 = a3;
  v16[3] = a2;
  v6 = *v4;
  type metadata accessor for ApplyTransitionModifier();
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - v9;
  v11 = *(v6 + 160);
  Transition.apply<A>(content:phase:)();
  v12 = *(a4 + 8);
  WitnessTable = swift_getWitnessTable();
  v19 = v11;
  v20 = WitnessTable;
  v14 = swift_getWitnessTable();
  v12(v10, v7, v14, v18, a4);
  return (*(v8 + 8))(v10, v7);
}

uint64_t IdentifiedTransitionStorage.__ivar_destroyer()
{
  v1 = *v0;
  (*(*(*(*v0 + 136) - 8) + 8))(v0 + *(*v0 + 184));
  (*(*(*(v1 + 144) - 8) + 8))(v0 + *(*v0 + 192));
  v2 = *(*(*(v1 + 152) - 8) + 8);
  v3 = v0 + *(*v0 + 200);

  return v2(v3);
}

uint64_t *IdentifiedTransitionStorage.deinit()
{
  v1 = *v0;
  (*(*(*(*v0 + 136) - 8) + 8))(v0 + *(*v0 + 184));
  (*(*(*(v1 + 144) - 8) + 8))(v0 + *(*v0 + 192));
  (*(*(*(v1 + 152) - 8) + 8))(v0 + *(*v0 + 200));
  return v0;
}

uint64_t IdentifiedItemStorage.__deallocating_deinit(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t MakeStorageVisitor1.visit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = makeStorage<A, B>(content:identifier:)(a1, v4, a3, *(a2 + 16), a4);
  v7 = *(a2 + 36);

  *(v4 + v7) = v6;
  return result;
}

uint64_t AnyDynamicChild.info.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v4 = *(Value + 32);
  v5 = *(Value + 40);
  v6 = *(Value + 44);
  *a1 = *Value;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 44) = v6;
}

uint64_t AnyDynamicChild.updateValue()(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v29[0] = *v1;
  v29[1] = v4;
  v30 = *(v1 + 32);
  AnyDynamicChild.info.getter(&v25);
  v5 = v26;

  if (!*(v5 + 16))
  {
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(DWORD1(v29[0]));
  if ((v7 & 1) == 0)
  {
  }

  v8 = *(*(v5 + 56) + 8 * v6);

  AnyDynamicChild.info.getter(&v25);
  v9 = v25;
  v10 = v27;

  if ((v9 & 0xC000000000000001) == 0)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v9 + 8 * v8 + 32);

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_19;
  }

  v11 = MEMORY[0x18D00E9C0](v8, v9);
LABEL_7:

  swift_beginAccess();
  v10 = *(v11 + 84);

  if (v10 != 3)
  {
    AnyDynamicChild.info.getter(&v25);
    v9 = v25;

    if ((v9 & 0xC000000000000001) == 0)
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v8 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_22:
        __break(1u);
        return result;
      }

LABEL_12:

      v13 = a1[3];
      v14 = a1[5];
      FocusStoreLocation.id.getter();

      DynamicContainer._ItemInfo.item.getter();

      v15 = v25;
      v16 = v26;
      v17 = v27;
      v18 = v28;
      v19 = *(*(a1 - 1) + 8);

      v19(v29, a1);
      v2[1] = v15;
      v2[2] = v16;
      v2[3] = v17;
      v2[4] = v18;
      result = AGGraphGetCurrentAttribute();
      if (result != *MEMORY[0x1E698D3F8])
      {
        v20 = a1[2];
        v21 = a1[4];
        v24 = result;
        v25 = v20;
        v26 = v13;
        v27 = v21;
        v28 = v14;
        updated = type metadata accessor for AnyDynamicChild.UpdateVisitor();
        WitnessTable = swift_getWitnessTable();
        (*(*v15 + 120))(&v24, v10, updated, WitnessTable);
      }

      goto LABEL_21;
    }

LABEL_19:
    MEMORY[0x18D00E9C0](v8, v9);
    goto LABEL_12;
  }

  return result;
}

uint64_t AnyDynamicChild.matchesIdentifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - v12;
  v14 = *(v4 + 8);
  if (v14)
  {
    (*(*v14 + 88))(v20, v11);
    AnyHashable.base.getter();
    outlined destroy of AnyHashable(v20);
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  type metadata accessor for Any?();
  v15 = swift_dynamicCast();
  v16 = (*(*(a3 - 8) + 56))(v13, v15 ^ 1u, 1, a3);
  MEMORY[0x1EEE9AC00](v16);
  v17 = *(a2 + 32);
  *&v20[-8] = *(a2 + 16);
  v20[-6] = a3;
  *&v20[-5] = v17;
  v20[-3] = a4;
  v20[-2] = a1;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in AnyDynamicChild.matchesIdentifier<A>(_:), &v20[-10], MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v18, v20);
  (*(v10 + 8))(v13, v9);
  return v20[0] & 1;
}

uint64_t initializeWithCopy for AnyDynamicChild(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for AnyDynamicChild(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for AnyDynamicChild(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnyDynamicChild(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for AnyDynamicChild(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for MakeStorageVisitor1()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MakeStorageVisitor1(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *storeEnumTagSinglePayload for MakeStorageVisitor1(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v18 = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}