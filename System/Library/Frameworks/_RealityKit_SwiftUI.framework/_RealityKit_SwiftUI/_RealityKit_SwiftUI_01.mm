uint64_t ObjectCaptureSession.canRequestImageCapture.setter(uint64_t result)
{
  if (*(v1 + 35) == (result & 1))
  {
    *(v1 + 35) = result & 1;
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

uint64_t ObjectCaptureSession.numberOfShotsTaken.setter(uint64_t result)
{
  if (*(v1 + 40) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t ObjectCaptureSession.subscriptions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__subscriptions;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = _sSh2eeoiySbShyxG_ABtFZ7Combine14AnyCancellableC_Tt1g5(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id key path getter for ObjectCaptureSession.state : ObjectCaptureSession@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  *a2 = v4;
  return outlined copy of ObjectCaptureSession.CaptureState(v4);
}

void key path setter for ObjectCaptureSession.state : ObjectCaptureSession(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  outlined copy of ObjectCaptureSession.CaptureState(v3);
  ObjectCaptureSession.state.setter(&v3);
}

id ObjectCaptureSession.state.getter@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + 16);
  *a1 = v3;
  return outlined copy of ObjectCaptureSession.CaptureState(v3);
}

uint64_t ObjectCaptureSession.stateUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy19_RealityKit_SwiftUI20ObjectCaptureSessionC0F5StateOGSgMd, &_sScSy19_RealityKit_SwiftUI20ObjectCaptureSessionC0F5StateOGSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_stateUpdater);
  dispatch thunk of AsyncUpdateStreamContainer.makeUpdater()();
  dispatch thunk of AsyncUpdateStream.stream.getter();

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy19_RealityKit_SwiftUI20ObjectCaptureSessionC0F5StateOGMd, &_sScSy19_RealityKit_SwiftUI20ObjectCaptureSessionC0F5StateOGMR);
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v6, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ObjectCaptureSession.feedback : ObjectCaptureSession@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

uint64_t key path setter for ObjectCaptureSession.feedback : ObjectCaptureSession(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return ObjectCaptureSession.feedback.setter(v4);
}

uint64_t ObjectCaptureSession.feedback.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
}

uint64_t ObjectCaptureSession.feedbackUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyShy19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackOGGSgMd, &_sScSyShy19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackOGGSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_feedbackUpdater);
  dispatch thunk of AsyncUpdateStreamContainer.makeUpdater()();
  dispatch thunk of AsyncUpdateStream.stream.getter();

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyShy19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackOGGMd, &_sScSyShy19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackOGGMR);
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v6, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  __break(1u);
  return result;
}

BOOL static ObjectCaptureSession.Tracking.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v2 == 4)
  {
    return v3 == 4;
  }

  if ((v3 & 0xFE) == 4)
  {
    return 0;
  }

  return v2 == v3;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ObjectCaptureSession.Tracking(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v2 == 4)
  {
    return v3 == 4;
  }

  if ((v3 & 0xFE) == 4)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t key path getter for ObjectCaptureSession.cameraTracking : ObjectCaptureSession@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
  return result;
}

unsigned __int8 *key path setter for ObjectCaptureSession.cameraTracking : ObjectCaptureSession(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return ObjectCaptureSession.cameraTracking.setter(&v4);
}

uint64_t ObjectCaptureSession.cameraTracking.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a1 = *(v1 + 32);
  return result;
}

uint64_t ObjectCaptureSession.cameraTrackingUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy19_RealityKit_SwiftUI20ObjectCaptureSessionC8TrackingOGSgMd, &_sScSy19_RealityKit_SwiftUI20ObjectCaptureSessionC8TrackingOGSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_cameraTrackingUpdater);
  dispatch thunk of AsyncUpdateStreamContainer.makeUpdater()();
  dispatch thunk of AsyncUpdateStream.stream.getter();

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy19_RealityKit_SwiftUI20ObjectCaptureSessionC8TrackingOGMd, &_sScSy19_RealityKit_SwiftUI20ObjectCaptureSessionC8TrackingOGMR);
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v6, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ObjectCaptureSession.isPaused : ObjectCaptureSession@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 33);
  return result;
}

uint64_t ObjectCaptureSession.isPaused.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 33);
}

uint64_t ObjectCaptureSession.isPausedUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGSgMd, &_sScSySbGSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_isPausedUpdater);
  dispatch thunk of AsyncUpdateStreamContainer.makeUpdater()();
  dispatch thunk of AsyncUpdateStream.stream.getter();

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGMd, &_sScSySbGMR);
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v6, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ObjectCaptureSession.userCompletedScanPass : ObjectCaptureSession@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 34);
  return result;
}

uint64_t ObjectCaptureSession.userCompletedScanPass.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 34);
}

uint64_t ObjectCaptureSession.userCompletedScanPassUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGSgMd, &_sScSySbGSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_userCompletedScanPassUpdater);
  dispatch thunk of AsyncUpdateStreamContainer.makeUpdater()();
  dispatch thunk of AsyncUpdateStream.stream.getter();

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGMd, &_sScSySbGMR);
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v6, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ObjectCaptureSession.canRequestImageCapture : ObjectCaptureSession@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 35);
  return result;
}

uint64_t ObjectCaptureSession.canRequestImageCapture.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 35);
}

uint64_t ObjectCaptureSession.canRequestImageCaptureUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGSgMd, &_sScSySbGSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_canRequestImageCaptureUpdater);
  dispatch thunk of AsyncUpdateStreamContainer.makeUpdater()();
  dispatch thunk of AsyncUpdateStream.stream.getter();

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySbGMd, &_sScSySbGMR);
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v6, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ObjectCaptureSession.numberOfShotsTaken : ObjectCaptureSession@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t ObjectCaptureSession.numberOfShotsTaken.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 40);
}

uint64_t ObjectCaptureSession.numberOfShotsTakenUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySiGSgMd, &_sScSySiGSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_numberOfShotsTakenUpdater);
  dispatch thunk of AsyncUpdateStreamContainer.makeUpdater()();
  dispatch thunk of AsyncUpdateStream.stream.getter();

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySiGMd, &_sScSySiGMR);
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v6, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  __break(1u);
  return result;
}

uint64_t ObjectCaptureSession.maximumNumberOfInputImages.getter()
{
  type metadata accessor for ObjectCaptureSession();
  v0 = type metadata accessor for ObjectCaptureSession.HardwareSpecs();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ObjectCaptureSession.hardwareSpecs.getter();
  v5 = ObjectCaptureSession.HardwareSpecs.maxNumImages.getter();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t ObjectCaptureSession.Configuration.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  result = type metadata accessor for ObjectCaptureSession.Configuration(0);
  *(a1 + *(result + 20)) = 0;
  return result;
}

uint64_t ObjectCaptureSession.Configuration.isOverCaptureEnabled.setter(char a1)
{
  result = type metadata accessor for ObjectCaptureSession.Configuration(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t key path getter for ObjectCaptureSession.configuration : ObjectCaptureSession@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__configuration;
  swift_beginAccess();
  return outlined init with copy of ObjectCaptureSession.Error(v3 + v4, a2, type metadata accessor for ObjectCaptureSession.Configuration);
}

uint64_t key path setter for ObjectCaptureSession.configuration : ObjectCaptureSession(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ObjectCaptureSession.Configuration(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of ObjectCaptureSession.Error(a1, v7, type metadata accessor for ObjectCaptureSession.Configuration);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return outlined destroy of ObjectCaptureSession.Configuration(v7, type metadata accessor for ObjectCaptureSession.Configuration);
}

uint64_t ObjectCaptureSession.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__configuration;
  swift_beginAccess();
  return outlined init with copy of ObjectCaptureSession.Error(v5 + v3, a1, type metadata accessor for ObjectCaptureSession.Configuration);
}

uint64_t closure #1 in ObjectCaptureSession.configuration.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObjectCaptureSession.Configuration(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ObjectCaptureSession.Error(a2, v7, type metadata accessor for ObjectCaptureSession.Configuration);
  v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__configuration;
  swift_beginAccess();
  outlined assign with take of ObjectCaptureSession.Configuration(v7, a1 + v8);
  return swift_endAccess();
}

void ObjectCaptureSession.start(imagesDirectory:configuration:)(uint64_t a1, uint64_t a2)
{
  v54 = type metadata accessor for DataModel.Error(0);
  v4 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ObjectCaptureSession.Configuration(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v52 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if (specialized static ObjectCaptureSharedSymbols.isNonExistentOrEmptyDirectory(_:)())
  {
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a2, v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      v53 = v6;
      outlined destroy of PerspectiveCameraComponent?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_15:
      outlined init with copy of ObjectCaptureSession.Error(a2, v13, type metadata accessor for ObjectCaptureSession.Configuration);
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v30 = v55;
      *(&v52 - 2) = v55;
      *(&v52 - 1) = v13;
      v56 = v30;
      lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      outlined destroy of ObjectCaptureSession.Configuration(v13, type metadata accessor for ObjectCaptureSession.Configuration);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, logger);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_23B824000, v32, v33, "Starting ObjectCaptureSession with configuration:", v34, 2u);
        MEMORY[0x23EEB0B70](v34, -1, -1);
      }

      specialized ObjectCaptureSession.logConfiguration(_:)(a2);
      v35 = v55;
      v36 = *(v55 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
      swift_getKeyPath();
      v56 = v35;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v37 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__configuration;
      swift_beginAccess();
      outlined init with copy of ObjectCaptureSession.Error(v35 + v37, v11, type metadata accessor for ObjectCaptureSession.Configuration);
      DataModel.startSession(imagesURL:configuration:)(a1, v11);
      outlined destroy of ObjectCaptureSession.Configuration(v11, type metadata accessor for ObjectCaptureSession.Configuration);
      return;
    }

    (*(v19 + 32))(v22, v17, v18);
    if ((URL.isFileURL.getter() & 1) == 0)
    {
      while (1)
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
          _os_log_impl(&dword_23B824000, v49, v50, "checkpointDirectory must be a file URL but was not!", v51, 2u);
          MEMORY[0x23EEB0B70](v51, -1, -1);
        }

        __break(1u);
LABEL_34:
        swift_once();
LABEL_26:
        v44 = type metadata accessor for Logger();
        __swift_project_value_buffer(v44, logger);
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_23B824000, v45, v46, "imagesDirectory must be a file URL but was not!", v47, 2u);
          MEMORY[0x23EEB0B70](v47, -1, -1);
        }

        __break(1u);
      }
    }

    if (specialized static ObjectCaptureSharedSymbols.isNonExistentOrEmptyDirectory(_:)())
    {
      v53 = v6;
      (*(v19 + 8))(v22, v18);
      goto LABEL_15;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, logger);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_23B824000, v39, v40, "A provided checkpointDirectory must be empty to start a new scan!", v41, 2u);
      MEMORY[0x23EEB0B70](v41, -1, -1);
    }

    type metadata accessor for ObjectCaptureSession.Error(0);
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession.Error and conformance ObjectCaptureSession.Error, type metadata accessor for ObjectCaptureSession.Error);
    v42 = swift_allocError();
    (*(v19 + 16))(v43, v22, v18);
    swift_storeEnumTagMultiPayload();
    ObjectCaptureSession.switchToErrorState(error:)(v42);
    (*(v19 + 8))(v22, v18);
  }

  else
  {
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
      _os_log_impl(&dword_23B824000, v24, v25, "imagesDirectory must be emoty to start a new scan!", v26, 2u);
      MEMORY[0x23EEB0B70](v26, -1, -1);
    }

    type metadata accessor for ObjectCaptureSession.Error(0);
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession.Error and conformance ObjectCaptureSession.Error, type metadata accessor for ObjectCaptureSession.Error);
    v27 = swift_allocError();
    (*(v19 + 16))(v28, a1, v18);
    swift_storeEnumTagMultiPayload();
    ObjectCaptureSession.switchToErrorState(error:)(v27);
  }
}

uint64_t ObjectCaptureSession.startDetecting()(const char *a1, void (*a2)(void))
{
  v5 = v2;
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
    _os_log_impl(&dword_23B824000, v7, v8, a1, v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  v10 = *(v5 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  a2();
  return 1;
}

Swift::Void __swiftcall ObjectCaptureSession.startCapturing()()
{
  v1 = v0;
  v2 = type metadata accessor for DataModel.Error(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
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
    _os_log_impl(&dword_23B824000, v7, v8, "startCapturing() called!", v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  v10 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  DataModel.startCapturing()();
  if (v11)
  {
    v31[0] = v11;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (!swift_dynamicCast())
    {
LABEL_9:

      v13 = v11;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v30 = v11;
        v31[0] = v17;
        *v16 = 136446210;
        v18 = v11;
        v19 = String.init<A>(describing:)();
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v31);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_23B824000, v14, v15, "Got Unknown error = %{public}s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        MEMORY[0x23EEB0B70](v17, -1, -1);
        MEMORY[0x23EEB0B70](v16, -1, -1);
      }

      ObjectCaptureSession.switchToErrorState(error:)(v11);
      return;
    }

    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of ObjectCaptureSession.Configuration(v5, type metadata accessor for DataModel.Error);
      goto LABEL_9;
    }

    v23 = *v5;
    v22 = v5[1];

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30 = v27;
      *v26 = 136446210;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, &v30);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_23B824000, v24, v25, "startCapturing() called in invalid state %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x23EEB0B70](v27, -1, -1);
      MEMORY[0x23EEB0B70](v26, -1, -1);

      __break(1u);
    }

    __break(1u);
  }
}

Swift::Void __swiftcall ObjectCaptureSession.beginNewScanPassAfterFlip()()
{
  v1 = v0;
  v2 = type metadata accessor for DataModel.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_5:
    outlined destroy of ObjectCaptureSession.Configuration(v5, type metadata accessor for DataModel.State);
    if (one-time initialization token for logger != -1)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, logger);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v23 = v18;
        *v17 = 136446210;
        swift_getKeyPath();
        v22 = v1;
        lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v22 = v1[2];
        outlined copy of ObjectCaptureSession.CaptureState(v22);
        v19 = String.init<A>(describing:)();
        v1 = v20;
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v23);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_23B824000, v15, v16, "Can't beginNewScanPassAfterFlip() from state == %{public}s  Must be .paused from .capturing", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v18);
        MEMORY[0x23EEB0B70](v18, -1, -1);
        MEMORY[0x23EEB0B70](v17, -1, -1);

        __break(1u);
      }

      __break(1u);
LABEL_9:
      swift_once();
    }
  }

  v12 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = type metadata accessor for DataModel.Error(0);
  if ((*(*(v13 - 8) + 48))(v5, 8, v13) != 3)
  {
    goto LABEL_5;
  }

  ObjectCaptureSession.verifyObjectCentricModeOrFail()();
  DataModel.beginNextSegment()();
}

Swift::Void __swiftcall ObjectCaptureSession.beginNewScanPass()()
{
  v1 = v0;
  v2 = type metadata accessor for DataModel.State(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v32 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
LABEL_6:
    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, logger);
    v19 = v6;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32[1] = v6;
      v33 = v23;
      *v22 = 136446210;
      v24 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v25 = String.init<A>(describing:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v33);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_23B824000, v20, v21, "Begin new scan pass failed: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x23EEB0B70](v23, -1, -1);
      MEMORY[0x23EEB0B70](v22, -1, -1);
    }

    else
    {
    }

    return;
  }

  v15 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  if ((DataModel.inCapturingMetaState.getter() & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v16 = type metadata accessor for DataModel.Error(0);
    (*(*(v16 - 8) + 56))(v6, 1, 8, v16);
    v17 = specialized static DataModel.State.== infix(_:_:)(v8, v6);
    outlined destroy of ObjectCaptureSession.Configuration(v6, type metadata accessor for DataModel.State);
    outlined destroy of ObjectCaptureSession.Configuration(v8, type metadata accessor for DataModel.State);
    if ((v17 & 1) == 0)
    {
      if (one-time initialization token for logger != -1)
      {
        goto LABEL_16;
      }

      while (1)
      {
        v28 = type metadata accessor for Logger();
        __swift_project_value_buffer(v28, logger);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_23B824000, v29, v30, "Cannot call beginNewScanPass() unless capturing or paused during capture.", v31, 2u);
          MEMORY[0x23EEB0B70](v31, -1, -1);
        }

        __break(1u);
LABEL_16:
        swift_once();
      }
    }
  }

  ObjectCaptureSession.verifyObjectCentricModeOrFail()();
  DataModel.beginNewOrbit()();
  if (v6)
  {
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }
}

Swift::Void __swiftcall ObjectCaptureSession.finish()()
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
    _os_log_impl(&dword_23B824000, v3, v4, "finish() called!", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  swift_getKeyPath();
  v19 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 16) == 3)
  {
    v6 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
    DataModel.stopCapturing()();
    if (!v7)
    {
      return;
    }

    v8 = v7;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v9, v10))
    {

      return;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    v13 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_23B824000, v9, v10, "startCapturing() punting!  Got error: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x23EEB0B70](v12, -1, -1);
    MEMORY[0x23EEB0B70](v11, -1, -1);
  }

  else
  {
    v9 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_23B824000, v9, v17, "Ignoring call: finish() called in state != .capturing", v18, 2u);
      MEMORY[0x23EEB0B70](v18, -1, -1);
    }
  }
}

uint64_t ObjectCaptureSession.resume()(const char *a1, uint64_t (*a2)(void))
{
  v5 = v2;
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
    _os_log_impl(&dword_23B824000, v7, v8, a1, v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  v10 = *(v5 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  return a2();
}

Swift::Void __swiftcall ObjectCaptureSession.requestImageCapture()()
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
    *v4 = 67240192;
    swift_getKeyPath();
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v4 + 4) = *(v0 + 35);

    _os_log_impl(&dword_23B824000, v2, v3, "Requesting a manual shot...  canRequestImageCapture=%{BOOL,public}d", v4, 8u);
    MEMORY[0x23EEB0B70](v4, -1, -1);
  }

  else
  {
  }

  v5 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  DataModel.takeManualShot()();
}

uint64_t ObjectCaptureSession.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v38[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVySbGMd, &_s17RealityFoundation6AtomicVySbGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38[-v9];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, logger);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_23B824000, v12, v13, "~~~ ObjectCaptureSession deinit was called! ~~~", v14, 2u);
    MEMORY[0x23EEB0B70](v14, -1, -1);
  }

  v15 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_tornDown;
  v16 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_tornDown);
  v17 = *(*v16 + 88);
  swift_beginAccess();
  (*(v7 + 16))(v10, v16 + v17, v6);
  Atomic.wrappedValue.getter();
  (*(v7 + 8))(v10, v6);
  v18 = &_ss23_ContiguousArrayStorageCySfGMd;
  if (v38[31] == 1)
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23B824000, v19, v20, "~~~ Already tornDown properly in deinit, nothing to do.", v21, 2u);
      MEMORY[0x23EEB0B70](v21, -1, -1);
    }
  }

  else
  {
    AllAsync = ObjectCaptureSession.unsafeGetAllAsyncStreams()();
    v23 = type metadata accessor for TaskPriority();
    v24 = *(*(v23 - 8) + 56);
    v24(v5, 1, 1, v23);
    type metadata accessor for MainActor();
    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    v27 = MEMORY[0x277D85700];
    v26[2] = v25;
    v26[3] = v27;
    v26[4] = AllAsync;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in nonisolated_PrivateTearDown(of:), v26);

    v28 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
    v24(v5, 1, 1, v23);
    swift_retain_n();
    v29 = static MainActor.shared.getter();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = v27;
    v30[4] = v28;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in nonisolated_PrivateTearDown(of:), v30);

    v18 = &_ss23_ContiguousArrayStorageCySfGMd;

    specialized static ObjectCaptureSession.stopResourceLogging()("Stopping resource logging timer...", &unk_284E411F8, &async function pointer to partial apply for closure #1 in static ObjectCaptureSession.stopResourceLogging());
  }

  outlined consume of ObjectCaptureSession.CaptureState(*(v1 + 16));
  v31 = *(v1 + 24);

  outlined destroy of ObjectCaptureSession.Configuration(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__configuration, type metadata accessor for ObjectCaptureSession.Configuration);
  v32 = *(v1 + v15);

  v33 = *(v1 + v18[99]);

  v34 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__subscriptions);

  v35 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession___observationRegistrar;
  v36 = type metadata accessor for ObservationRegistrar();
  (*(*(v36 - 8) + 8))(v1 + v35, v36);
  return v1;
}

uint64_t ObjectCaptureSession.__deallocating_deinit()
{
  ObjectCaptureSession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ObjectCaptureSession.subscriptions.getter()
{
  swift_getKeyPath();
  v4 = v0;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__subscriptions;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t key path getter for ObjectCaptureSession.subscriptions : ObjectCaptureSession@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__subscriptions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t closure #1 in ObjectCaptureSession.subscriptions.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__subscriptions;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

void ObjectCaptureSession.setState(_:)(void **a1)
{
  v2 = v1;
  v3 = *a1;
  swift_getKeyPath();
  v19 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v1[2];
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        if (v3 == 3)
        {
          goto LABEL_28;
        }

        goto LABEL_19;
      case 4:
        if (v3 != 4)
        {
          goto LABEL_19;
        }

        goto LABEL_28;
      case 5:
        if (v3 == 5)
        {
          goto LABEL_28;
        }

        goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (!v4)
  {
    if (!v3)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  if (v4 == 1)
  {
    if (v3 != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (v4 != 2)
  {
LABEL_16:
    if (v3 < 6)
    {
      goto LABEL_19;
    }

    v5 = v4;
    v6 = v4;
LABEL_28:
    outlined copy of ObjectCaptureSession.CaptureState(v3);
    outlined consume of ObjectCaptureSession.CaptureState(v4);
    outlined consume of ObjectCaptureSession.CaptureState(v3);
    outlined consume of ObjectCaptureSession.CaptureState(v4);
    return;
  }

  if (v3 == 2)
  {
    goto LABEL_28;
  }

LABEL_19:
  outlined copy of ObjectCaptureSession.CaptureState(v2[2]);
  outlined copy of ObjectCaptureSession.CaptureState(v4);
  outlined copy of ObjectCaptureSession.CaptureState(v3);
  outlined consume of ObjectCaptureSession.CaptureState(v4);
  outlined consume of ObjectCaptureSession.CaptureState(v3);
  outlined consume of ObjectCaptureSession.CaptureState(v4);
  v19 = v3;
  outlined copy of ObjectCaptureSession.CaptureState(v3);
  ObjectCaptureSession.state.setter(&v19);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    outlined copy of ObjectCaptureSession.CaptureState(v2[2]);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

    *(v10 + 4) = v14;
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x23EEB0B70](v11, -1, -1);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  v15 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_stateUpdater);
  swift_getKeyPath();
  v19 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = v2[2];
  outlined copy of ObjectCaptureSession.CaptureState(v19);
  dispatch thunk of AsyncUpdateStreamContainer.publishUpdate(_:)();
  outlined consume of ObjectCaptureSession.CaptureState(v19);
  if (v3 >= 5)
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_23B824000, v16, v17, "Entering terminal state, so calling tearDown()...", v18, 2u);
      MEMORY[0x23EEB0B70](v18, -1, -1);
    }

    ObjectCaptureSession.tearDown()();
  }
}

Swift::Int ObjectCaptureSession.setFeedback(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v17 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = _sSh2eeoiySbShyxG_ABtFZ19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackO_Tt1g5(*(v1 + 24), a1);
  if ((result & 1) == 0)
  {

    ObjectCaptureSession.feedback.setter(v5);
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
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v11 = *(v1 + 24);
      lazy protocol witness table accessor for type ObjectCaptureSession.Feedback and conformance ObjectCaptureSession.Feedback();

      v12 = Set.description.getter();
      v14 = v13;

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v17);

      *(v9 + 4) = v15;
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    v16 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_feedbackUpdater);
    swift_getKeyPath();
    v17 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = *(v2 + 24);

    dispatch thunk of AsyncUpdateStreamContainer.publishUpdate(_:)();
  }

  return result;
}

uint64_t ObjectCaptureSession.setCameraTracking(_:)(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  v16 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v1 + 32);
  if (v4 == 5)
  {
    if (v2 == 5)
    {
      return result;
    }
  }

  else if (v4 == 4)
  {
    if (v2 == 4)
    {
      return result;
    }
  }

  else if ((v2 & 0xFE) != 4 && v4 == v2)
  {
    return result;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v16 = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

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
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = *(v1 + 32);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v9 + 4) = v13;
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x23EEB0B70](v10, -1, -1);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  v14 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_cameraTrackingUpdater);
  swift_getKeyPath();
  v16 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v16) = *(v1 + 32);
  return dispatch thunk of AsyncUpdateStreamContainer.publishUpdate(_:)();
}

uint64_t ObjectCaptureSession.setIsPaused(_:)(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_getKeyPath();
  v15 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 33) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v15 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

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
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v1 + 33))
      {
        v11 = 1702195828;
      }

      else
      {
        v11 = 0x65736C6166;
      }

      if (*(v1 + 33))
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

      *(v9 + 4) = v13;
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    v14 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_isPausedUpdater);
    swift_getKeyPath();
    v15 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v15) = *(v2 + 33);
    return dispatch thunk of AsyncUpdateStreamContainer.publishUpdate(_:)();
  }

  return result;
}

uint64_t ObjectCaptureSession.setUserCompletedScanPass(_:)(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_getKeyPath();
  v15 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 34) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v15 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

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
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v1 + 34))
      {
        v11 = 1702195828;
      }

      else
      {
        v11 = 0x65736C6166;
      }

      if (*(v1 + 34))
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

      *(v9 + 4) = v13;
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    v14 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_userCompletedScanPassUpdater);
    swift_getKeyPath();
    v15 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v15) = *(v2 + 34);
    return dispatch thunk of AsyncUpdateStreamContainer.publishUpdate(_:)();
  }

  return result;
}

uint64_t ObjectCaptureSession.setNumberOfShotsTaken(_:)(uint64_t a1)
{
  swift_getKeyPath();
  v15 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 40) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v15 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

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
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v14 = *(v1 + 40);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

      *(v8 + 4) = v12;
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x23EEB0B70](v9, -1, -1);
      MEMORY[0x23EEB0B70](v8, -1, -1);
    }

    v13 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_numberOfShotsTakenUpdater);
    swift_getKeyPath();
    v15 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = *(v1 + 40);
    return dispatch thunk of AsyncUpdateStreamContainer.publishUpdate(_:)();
  }

  return result;
}

uint64_t ObjectCaptureSession.setCanRequestImageCapture(_:)(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_getKeyPath();
  v15 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 35) != v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v15 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

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
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v1 + 35))
      {
        v11 = 1702195828;
      }

      else
      {
        v11 = 0x65736C6166;
      }

      if (*(v1 + 35))
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

      *(v9 + 4) = v13;
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    v14 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_canRequestImageCaptureUpdater);
    swift_getKeyPath();
    v15 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v15) = *(v2 + 35);
    return dispatch thunk of AsyncUpdateStreamContainer.publishUpdate(_:)();
  }

  return result;
}

uint64_t closure #1 in static ObjectCaptureSession.startResourceLogging()()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in static ObjectCaptureSession.startResourceLogging(), v2, v1);
}

{
  v1 = *(v0 + 16);

  type metadata accessor for ResourceTimedLogger();
  result = swift_initStaticObject();
  v3 = *(result + 32);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(result + 32) = v5;
    v6 = *(result + 24);
    if (!v6 || ![v6 isValid])
    {
      ResourceTimedLogger.startNewTimer()();
    }

    v7 = *(v0 + 8);

    return v7();
  }

  return result;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of PerspectiveCameraComponent?(a3, &_sScPSgMd, &_sScPSgMR);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of PerspectiveCameraComponent?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t closure #1 in static ObjectCaptureSession.stopResourceLogging()()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in static ObjectCaptureSession.stopResourceLogging(), v2, v1);
}

{
  v1 = *(v0 + 16);

  type metadata accessor for ResourceTimedLogger();
  swift_initStaticObject();
  ResourceTimedLogger.unrequestLogging()();
  v2 = *(v0 + 8);

  return v2();
}

void ObjectCaptureSession.tearDown()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVySbGMd, &_s17RealityFoundation6AtomicVySbGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14[-v5];
  v7 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_tornDown);
  v8 = *(*v7 + 88);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7 + v8, v2);
  Atomic.wrappedValue.getter();
  (*(v3 + 8))(v6, v2);
  if (v14[8])
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
      _os_log_impl(&dword_23B824000, v10, v11, "Already tornDown, nothing to do...", v12, 2u);
      MEMORY[0x23EEB0B70](v12, -1, -1);
    }
  }

  else
  {
    ObjectCaptureSession.logAnalyticsEventsOnTearDown()();
    ObjectCaptureSession.finishAysncStreams()();
    v13 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
    DataModel.tearDown()();
    specialized static ObjectCaptureSession.stopResourceLogging()("Stopping resource logging timer...", &unk_284E411F8, &async function pointer to partial apply for closure #1 in static ObjectCaptureSession.stopResourceLogging());
    v14[39] = 1;
    swift_beginAccess();
    Atomic.wrappedValue.setter();
    swift_endAccess();
  }
}

void ObjectCaptureSession.switchToErrorState(error:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_23B824000, v6, v7, "Switch to error state.  Got error= %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x23EEB0B70](v9, -1, -1);
    MEMORY[0x23EEB0B70](v8, -1, -1);
  }

  v16 = a1;
  v14 = a1;
  ObjectCaptureSession.setState(_:)(&v16);
  outlined consume of ObjectCaptureSession.CaptureState(a1);
  v15 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  DataModel.cancelCapturing()();
}

uint64_t ObjectCaptureSession.subscribeToInternalPublishers()()
{
  v1 = v0;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v72 = *(v64 - 8);
  v2 = *(v72 + 64);
  MEMORY[0x28223BE20](v64);
  v63 = v53 - v3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySb_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySb_GSo17OS_dispatch_queueCGMR);
  v73 = *(v69 - 8);
  v4 = *(v73 + 64);
  MEMORY[0x28223BE20](v69);
  v55 = v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v10 = *(v9 - 8);
  v58 = v9;
  v59 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v53 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySi_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySi_GSo17OS_dispatch_queueCGMR);
  v15 = *(v14 - 8);
  v60 = v14;
  v61 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v54 = v53 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy19_RealityKit_SwiftUI9DataModelC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy19_RealityKit_SwiftUI9DataModelC5StateO_GMR);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v53 - v21;
  v23 = *&v0[OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy19_RealityKit_SwiftUI9DataModelC5StateOGMd, &_s7Combine9PublishedVy19_RealityKit_SwiftUI9DataModelC5StateOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  v62 = MEMORY[0x277CBCEC8];
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Published<DataModel.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy19_RealityKit_SwiftUI9DataModelC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy19_RealityKit_SwiftUI9DataModelC5StateO_GMR);
  Publisher<>.sink(receiveValue:)();

  (*(v19 + 8))(v22, v18);
  swift_getKeyPath();
  v74 = v0;
  v24 = lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v74 = v0;
  swift_getKeyPath();
  v53[1] = v24;
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v70 = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession__subscriptions;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v74 = v0;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v25 = swift_allocObject();
  swift_weakInit();
  v26 = (v23 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_onFeedback);
  v27 = *(v23 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_onFeedback);
  v28 = *(v23 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_onFeedback + 8);
  *v26 = partial apply for closure #2 in ObjectCaptureSession.subscribeToInternalPublishers();
  v26[1] = v25;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v27);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  v56 = type metadata accessor for OS_dispatch_queue();
  v29 = static OS_dispatch_queue.main.getter();
  v74 = v29;
  v65 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v30 = *(v65 - 8);
  v31 = *(v30 + 56);
  v67 = v30 + 56;
  v68 = v31;
  v32 = v71;
  v31(v71, 1, 1, v65);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Published<Int>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v66 = lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue);
  v33 = v54;
  v34 = v58;
  Publisher.receive<A>(on:options:)();
  outlined destroy of PerspectiveCameraComponent?(v32, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v59 + 8))(v13, v34);
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<Int>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySi_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySi_GSo17OS_dispatch_queueCGMR);
  v35 = v60;
  Publisher<>.sink(receiveValue:)();

  (*(v61 + 8))(v33, v35);
  swift_getKeyPath();
  v74 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v74 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v74 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v57 = v23;
  swift_beginAccess();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v36 = v63;
  Published.projectedValue.getter();
  swift_endAccess();
  v37 = static OS_dispatch_queue.main.getter();
  v74 = v37;
  v38 = v71;
  v68(v71, 1, 1, v65);
  v62 = lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v39 = v55;
  v40 = v64;
  Publisher.receive<A>(on:options:)();
  outlined destroy of PerspectiveCameraComponent?(v38, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  v41 = *(v72 + 8);
  v72 += 8;
  v60 = v41;
  v41(v36, v40);
  swift_allocObject();
  swift_weakInit();
  v59 = lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<Bool>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySb_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySb_GSo17OS_dispatch_queueCGMR);
  v42 = v69;
  Publisher<>.sink(receiveValue:)();

  v43 = *(v73 + 8);
  v73 += 8;
  v58 = v43;
  v43(v39, v42);
  swift_getKeyPath();
  v74 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v74 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v74 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  v44 = static OS_dispatch_queue.main.getter();
  v74 = v44;
  v45 = v71;
  v68(v71, 1, 1, v65);
  v46 = v64;
  Publisher.receive<A>(on:options:)();
  outlined destroy of PerspectiveCameraComponent?(v45, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  v60(v36, v46);
  swift_allocObject();
  swift_weakInit();
  v47 = v69;
  Publisher<>.sink(receiveValue:)();

  v58(v39, v47);
  swift_getKeyPath();
  v74 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v74 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v74 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v48 = v63;
  Published.projectedValue.getter();
  swift_endAccess();
  v49 = static OS_dispatch_queue.main.getter();
  v74 = v49;
  v50 = v71;
  v68(v71, 1, 1, v65);
  Publisher.receive<A>(on:options:)();
  outlined destroy of PerspectiveCameraComponent?(v50, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  v60(v48, v46);
  swift_allocObject();
  swift_weakInit();
  v51 = v69;
  Publisher<>.sink(receiveValue:)();

  v58(v39, v51);
  swift_getKeyPath();
  v74 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v74 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v74 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t closure #1 in ObjectCaptureSession.subscribeToInternalPublishers()(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ObjectCaptureSession.onStateChange(into:)(a1);
  }

  return result;
}

uint64_t closure #2 in ObjectCaptureSession.subscribeToInternalPublishers()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ObjectCaptureSession.onFeedback(frameFeedback:frameCameraTracking:)(a1, a2);
  }

  return result;
}

uint64_t closure #3 in ObjectCaptureSession.subscribeToInternalPublishers()(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ObjectCaptureSession.setNumberOfShotsTaken(_:)(v1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(v3 + 24);

    v6 = ObjectCaptureSession.updateFlippabilityIfNeeded(set:)(v5);

    ObjectCaptureSession.updateOverCaptureIfNeeded(set:)();

    ObjectCaptureSession.publishFeedbackSetIfNeeded(set:)(v6);
  }

  return result;
}

uint64_t closure #4 in ObjectCaptureSession.subscribeToInternalPublishers()(unsigned __int8 *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v4);
  }

  return result;
}

uint64_t closure #6 in ObjectCaptureSession.subscribeToInternalPublishers()(unsigned __int8 *a1)
{
  v1 = *a1;
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
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_23B824000, v3, v4, "Auto detection failure is now %{BOOL}d: updating feedback...", v5, 8u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_getKeyPath();
    v9 = v7;
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v7 + 24);

    if (v1)
    {
      specialized Set._Variant.insert(_:)(&v8, 8);
    }

    else
    {
      specialized Set._Variant.remove(_:)(8u, &v8);
    }

    ObjectCaptureSession.publishFeedbackSetIfNeeded(set:)(v9);
  }

  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ObjectCaptureSession.updateOverCaptureIfNeeded(set:)()
{
  type metadata accessor for ObjectCaptureSession();
  v1 = type metadata accessor for ObjectCaptureSession.HardwareSpecs();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  static ObjectCaptureSession.hardwareSpecs.getter();
  v6 = ObjectCaptureSession.HardwareSpecs.maxNumImages.getter();
  (*(v2 + 8))(v5, v1);
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
    *v10 = 134349312;
    swift_getKeyPath();
    v14 = v0;
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v10 + 4) = *(v0 + 40);

    *(v10 + 12) = 2050;
    *(v10 + 14) = v6;
    _os_log_impl(&dword_23B824000, v8, v9, "Shots: %{public}ld  Limit: %{public}ld", v10, 0x16u);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  else
  {
  }

  swift_getKeyPath();
  v14 = v0;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v6 < *(v0 + 40))
  {

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134349312;
      swift_getKeyPath();
      v14 = v0;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v13 + 4) = *(v0 + 40);

      *(v13 + 12) = 2050;
      *(v13 + 14) = v6;
      _os_log_impl(&dword_23B824000, v11, v12, "Adding .overCapturing since %{public}ld > %{public}ld", v13, 0x16u);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }

    else
    {
    }

    specialized Set._Variant.insert(_:)(&v14, 7);
  }
}

uint64_t ObjectCaptureSession.updateFlippabilityIfNeeded(set:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) != 1)
  {
  }

  v11 = a1;
  v3 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isObjectFlippable);
  if (v3 == 2 || (v3 & 1) != 0)
  {

    return v11;
  }

  specialized Set._Variant.insert(_:)(&v10, 6);
  if (specialized Set.contains(_:)(6u, a1))
  {
    return v11;
  }

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
    _os_log_impl(&dword_23B824000, v7, v8, "Adding .objectNotFlippable persistently to the Feedback set.", v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  return v11;
}

BOOL specialized Set.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](v3);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t one-time initialization function for allFrameFeedbackMessages()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVGMd, &_ss23_ContiguousArrayStorageCy6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVGMR);
  v0 = *(type metadata accessor for ObjectCaptureSession.Frame.Feedback() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23B91AE90;
  static ObjectCaptureSession.Frame.Feedback.tooFast.getter();
  static ObjectCaptureSession.Frame.Feedback.lowLight.getter();
  static ObjectCaptureSession.Frame.Feedback.tooFar.getter();
  static ObjectCaptureSession.Frame.Feedback.tooClose.getter();
  static ObjectCaptureSession.Frame.Feedback.tooDark.getter();
  result = static ObjectCaptureSession.Frame.Feedback.outOfFieldOfView.getter();
  static ObjectCaptureSession.allFrameFeedbackMessages = v3;
  return result;
}

uint64_t ObjectCaptureSession.onFeedback(frameFeedback:frameCameraTracking:)(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v47 = a1;
  v2 = type metadata accessor for ARCamera.TrackingState.Reason();
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ARCamera.TrackingState();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x277D84FA0];
  if (one-time initialization token for allFrameFeedbackMessages != -1)
  {
    swift_once();
  }

  v8 = static ObjectCaptureSession.allFrameFeedbackMessages;
  v9 = *(static ObjectCaptureSession.allFrameFeedbackMessages + 2);
  if (v9)
  {
    v10 = type metadata accessor for ObjectCaptureSession.Frame.Feedback();
    v11 = v10;
    v12 = *(v10 - 8);
    v46 = *(v12 + 16);
    v13 = &v8[(*(v12 + 80) + 32) & ~*(v12 + 80)];
    v15 = *(v12 + 64);
    v14 = *(v12 + 72);
    v16 = (v12 + 8);
    do
    {
      MEMORY[0x28223BE20](v10);
      v46(&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v11);
      lazy protocol witness table accessor for type ObjectCaptureSession.Error and conformance ObjectCaptureSession.Error(&lazy protocol witness table cache variable for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback, MEMORY[0x282217638]);
      if (dispatch thunk of SetAlgebra.isSuperset(of:)())
      {
        v17 = specialized static ObjectCaptureSession.toOCSFeedbackSet(ocsFeedback:)(&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
        specialized Set.formUnion<A>(_:)(v17);
      }

      v10 = (*v16)(&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  swift_getKeyPath();
  v18 = v45;
  v49 = v45;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (specialized Set.contains(_:)(6u, *(v18 + 24)))
  {
    specialized Set._Variant.insert(_:)(&v49, 6);
  }

  swift_getKeyPath();
  v49 = v18;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = specialized Set.contains(_:)(7u, *(v18 + 24));
  v20 = v44;
  v21 = v41;
  if (v19)
  {
    specialized Set._Variant.insert(_:)(&v49, 7);
  }

  swift_getKeyPath();
  v49 = v18;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (specialized Set.contains(_:)(8u, *(v18 + 24)))
  {
    specialized Set._Variant.insert(_:)(&v49, 8);
  }

  ObjectCaptureSession.publishFeedbackSetIfNeeded(set:)(v50);

  type metadata accessor for ObjectCaptureSession(0);
  outlined init with copy of ObjectCaptureSession.Error(v42, v21, MEMORY[0x277D82DB0]);
  v22 = v43;
  v23 = (*(v43 + 48))(v21, 2, v20);
  if (v23)
  {
    if (v23 == 1)
    {
      v24 = 4;
    }

    else
    {
      v24 = 5;
    }
  }

  else
  {
    v25 = v40;
    (*(v22 + 32))(v40, v21, v20);
    static ObjectCaptureSession.fromARCameraTrackingReason(arReason:)(v25, &v49);
    (*(v22 + 8))(v25, v20);
    v24 = v49;
  }

  swift_getKeyPath();
  v49 = v18;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = *(v18 + 32);
  if (v27 == 5)
  {
    if (v24 == 5)
    {
      return result;
    }
  }

  else if (v27 == 4)
  {
    if (v24 == 4)
    {
      return result;
    }
  }

  else if ((v24 & 0xFE) != 4 && v27 == v24)
  {
    return result;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, logger);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v49 = v32;
    *v31 = 136446466;
    swift_getKeyPath();
    v48 = v18;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v48) = *(v18 + 32);
    v33 = String.init<A>(describing:)();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v49);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2082;
    LOBYTE(v48) = v24;
    v36 = String.init<A>(describing:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v49);

    *(v31 + 14) = v38;
    _os_log_impl(&dword_23B824000, v29, v30, "Camera tracking switching from %{public}s to %{public}s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v32, -1, -1);
    MEMORY[0x23EEB0B70](v31, -1, -1);
  }

  LOBYTE(v49) = v24;
  return ObjectCaptureSession.setCameraTracking(_:)(&v49);
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = specialized Set._Variant.insert(_:)(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void ObjectCaptureSession.publishFeedbackSetIfNeeded(set:)(uint64_t a1)
{
  swift_getKeyPath();
  v13 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((_sSh2eeoiySbShyxG_ABtFZ19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackO_Tt1g5(a1, *(v1 + 24)) & 1) == 0)
  {
    ObjectCaptureSession.setFeedback(_:)(a1);
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
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136446210;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v8 = *(v1 + 24);
      lazy protocol witness table accessor for type ObjectCaptureSession.Feedback and conformance ObjectCaptureSession.Feedback();

      v9 = Set.description.getter();
      v11 = v10;

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v13);

      *(v6 + 4) = v12;
      _os_log_impl(&dword_23B824000, v4, v5, "Published new Feedback set: %{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x23EEB0B70](v7, -1, -1);
      MEMORY[0x23EEB0B70](v6, -1, -1);
    }
  }
}

void ObjectCaptureSession.onStateChange(into:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DataModel.Error(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v104 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v106 = &v104 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v107 = &v104 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v104 - v17;
  v112 = type metadata accessor for DataModel.State(0);
  v19 = *(*(v112 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v112);
  v108 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v113 = &v104 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v104 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v104 - v27;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = __swift_project_value_buffer(v29, logger);
  v114 = a1;
  outlined init with copy of ObjectCaptureSession.Error(a1, v28, type metadata accessor for DataModel.State);
  v111 = v30;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v115 = v26;
  v109 = v12;
  v105 = v9;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v110 = v4;
    v36 = v35;
    v117 = v35;
    *v34 = 136446210;
    outlined init with copy of ObjectCaptureSession.Error(v28, v115, type metadata accessor for DataModel.State);
    v37 = String.init<A>(describing:)();
    v38 = v18;
    v39 = v2;
    v41 = v40;
    outlined destroy of ObjectCaptureSession.Configuration(v28, type metadata accessor for DataModel.State);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v41, &v117);
    v2 = v39;
    v18 = v38;

    *(v34 + 4) = v42;
    _os_log_impl(&dword_23B824000, v31, v32, "Switching state into: %{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    v43 = v36;
    v4 = v110;
    MEMORY[0x23EEB0B70](v43, -1, -1);
    v44 = v34;
    v26 = v115;
    MEMORY[0x23EEB0B70](v44, -1, -1);
  }

  else
  {

    outlined destroy of ObjectCaptureSession.Configuration(v28, type metadata accessor for DataModel.State);
  }

  (*(v5 + 56))(v26, 3, 8, v4);
  v45 = v114;
  v46 = specialized static DataModel.State.== infix(_:_:)(v114, v26);
  outlined destroy of ObjectCaptureSession.Configuration(v26, type metadata accessor for DataModel.State);
  if ((v46 & 1) == 0)
  {
    ObjectCaptureSession.setIsPaused(_:)(0);
  }

  swift_getKeyPath();
  v117 = v2;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v47 = v2[2];
  v48 = v113;
  outlined init with copy of ObjectCaptureSession.Error(v45, v113, type metadata accessor for DataModel.State);
  v49 = (*(v5 + 48))(v48, 8, v4);
  if (v49 > 3)
  {
    if (v49 > 5)
    {
      if (v49 == 6)
      {
        v47 = 3;
      }

      else if (v49 == 7)
      {
        v47 = 4;
      }

      else
      {
        v47 = 5;
      }

      goto LABEL_28;
    }

    if (v49 != 4)
    {
      v47 = 2;
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  if (v49 > 1)
  {
    if (v49 != 2)
    {
      outlined copy of ObjectCaptureSession.CaptureState(v47);
      ObjectCaptureSession.setIsPaused(_:)(1);

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = v2;
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v117 = v66;
        *v65 = 136446210;
        swift_getKeyPath();
        v116 = v64;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v116 = v64[2];
        outlined copy of ObjectCaptureSession.CaptureState(v116);
        v67 = String.init<A>(describing:)();
        v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v117);

        *(v65 + 4) = v69;
        _os_log_impl(&dword_23B824000, v62, v63, "Setting isPaused=true  fromState = %{public}s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v66);
        MEMORY[0x23EEB0B70](v66, -1, -1);
        MEMORY[0x23EEB0B70](v65, -1, -1);
      }

      goto LABEL_28;
    }

LABEL_23:
    v47 = 1;
LABEL_28:
    v117 = v47;
    outlined copy of ObjectCaptureSession.CaptureState(v47);
    ObjectCaptureSession.setState(_:)(&v117);
    outlined consume of ObjectCaptureSession.CaptureState(v47);
    outlined consume of ObjectCaptureSession.CaptureState(v47);
    return;
  }

  if (v49)
  {
    v47 = 0;
    goto LABEL_28;
  }

  outlined init with take of DataModel.Error(v48, v18);
  swift_getKeyPath();
  v117 = v2;
  outlined copy of ObjectCaptureSession.CaptureState(v47);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v2[2] < 6uLL)
  {
    v50 = v107;
    outlined init with copy of ObjectCaptureSession.Error(v18, v107, type metadata accessor for DataModel.Error);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v110 = v4;
      v54 = v53;
      v55 = swift_slowAlloc();
      v117 = v55;
      *v54 = 136446210;
      outlined init with copy of ObjectCaptureSession.Error(v50, v106, type metadata accessor for DataModel.Error);
      v56 = String.init<A>(describing:)();
      v57 = v2;
      v59 = v58;
      outlined destroy of ObjectCaptureSession.Configuration(v50, type metadata accessor for DataModel.Error);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v59, &v117);
      v2 = v57;

      *(v54 + 4) = v60;
      _os_log_impl(&dword_23B824000, v51, v52, "Capturing failed with error: %{public}s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      MEMORY[0x23EEB0B70](v55, -1, -1);
      v61 = v54;
      v4 = v110;
      MEMORY[0x23EEB0B70](v61, -1, -1);
    }

    else
    {

      outlined destroy of ObjectCaptureSession.Configuration(v50, type metadata accessor for DataModel.Error);
    }

    v83 = v109;
    outlined init with copy of ObjectCaptureSession.Error(v18, v109, type metadata accessor for DataModel.Error);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      type metadata accessor for ObjectCaptureSession.Error(0);
      lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession.Error and conformance ObjectCaptureSession.Error, type metadata accessor for ObjectCaptureSession.Error);
      v91 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      outlined consume of ObjectCaptureSession.CaptureState(v47);
      outlined destroy of ObjectCaptureSession.Configuration(v18, type metadata accessor for DataModel.Error);
      v47 = v91;
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v85 = type metadata accessor for ObjectCaptureSession.Error();
      v86 = *(v85 - 8);
      v87 = *(v86 + 64);
      MEMORY[0x28223BE20](v85);
      v89 = &v104 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v86 + 32))(v89, v83, v85);
      v90 = specialized static ObjectCaptureSession.fromOCSError(_:)(v89);
      outlined consume of ObjectCaptureSession.CaptureState(v47);
      (*(v86 + 8))(v89, v85);
      outlined destroy of ObjectCaptureSession.Configuration(v18, type metadata accessor for DataModel.Error);
      v47 = v90;
    }

    else
    {
      v92 = v105;
      outlined init with copy of ObjectCaptureSession.Error(v18, v105, type metadata accessor for DataModel.Error);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v110 = v4;
        v96 = v95;
        v97 = swift_slowAlloc();
        v117 = v97;
        *v96 = 136446210;
        outlined init with copy of ObjectCaptureSession.Error(v92, v106, type metadata accessor for DataModel.Error);
        v98 = String.init<A>(describing:)();
        v115 = v2;
        v100 = v99;
        outlined destroy of ObjectCaptureSession.Configuration(v92, type metadata accessor for DataModel.Error);
        v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, &v117);

        *(v96 + 4) = v101;
        _os_log_impl(&dword_23B824000, v93, v94, "Got unexpected error: %{public}s", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v97);
        MEMORY[0x23EEB0B70](v97, -1, -1);
        MEMORY[0x23EEB0B70](v96, -1, -1);
      }

      else
      {

        outlined destroy of ObjectCaptureSession.Configuration(v92, type metadata accessor for DataModel.Error);
      }

      lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error);
      v102 = swift_allocError();
      outlined init with take of DataModel.Error(v18, v103);
      outlined consume of ObjectCaptureSession.CaptureState(v47);
      outlined destroy of ObjectCaptureSession.Configuration(v83, type metadata accessor for DataModel.Error);
      v47 = v102;
    }

    goto LABEL_28;
  }

  v113 = v18;
  v70 = v45;
  v71 = v108;
  outlined init with copy of ObjectCaptureSession.Error(v70, v108, type metadata accessor for DataModel.State);

  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v117 = v114;
    *v74 = 136446466;
    swift_getKeyPath();
    v116 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v116 = v2[2];
    outlined copy of ObjectCaptureSession.CaptureState(v116);
    v75 = String.init<A>(describing:)();
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v117);

    *(v74 + 4) = v77;
    *(v74 + 12) = 2082;
    outlined init with copy of ObjectCaptureSession.Error(v71, v115, type metadata accessor for DataModel.State);
    v78 = String.init<A>(describing:)();
    v80 = v79;
    outlined destroy of ObjectCaptureSession.Configuration(v71, type metadata accessor for DataModel.State);
    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v117);

    *(v74 + 14) = v81;
    _os_log_impl(&dword_23B824000, v72, v73, "onStateChange(): ObjectCaptureSession was already in error state=%{public}s but got an internal error state=%{public}s which will be ignored.", v74, 0x16u);
    v82 = v114;
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v82, -1, -1);
    MEMORY[0x23EEB0B70](v74, -1, -1);
    outlined consume of ObjectCaptureSession.CaptureState(v47);
  }

  else
  {
    outlined consume of ObjectCaptureSession.CaptureState(v47);

    outlined destroy of ObjectCaptureSession.Configuration(v71, type metadata accessor for DataModel.State);
  }

  outlined destroy of ObjectCaptureSession.Configuration(v113, type metadata accessor for DataModel.Error);
}

uint64_t static ObjectCaptureSession.fromARCameraTrackingReason(arReason:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for ARCamera.TrackingState.Reason();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = *(v5 + 16);
  v12(&v16 - v10, a1, v4);
  result = (*(v5 + 88))(v11, v4);
  if (result == *MEMORY[0x277D82D90])
  {
    v14 = 0;
LABEL_9:
    *a2 = v14;
    return result;
  }

  if (result == *MEMORY[0x277D82DA0])
  {
    v14 = 2;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x277D82DA8])
  {
    v14 = 3;
    goto LABEL_9;
  }

  if (result == *MEMORY[0x277D82D98])
  {
    v14 = 1;
    goto LABEL_9;
  }

  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v16 = 0xD000000000000019;
  v17 = 0x800000023B924B20;
  v12(v9, a1, v4);
  v15 = String.init<A>(describing:)();
  MEMORY[0x23EEAF590](v15);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void ObjectCaptureSession.finishAysncStreams()()
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
    _os_log_impl(&dword_23B824000, v1, v2, "Finishing all async update streams...", v3, 2u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  AllAsync = ObjectCaptureSession.unsafeGetAllAsyncStreams()();
  v5 = *(AllAsync + 16);
  if (v5)
  {
    v6 = (AllAsync + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of Finishable.finish()();
      swift_unknownObjectRelease();
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23B824000, oslog, v9, "done finishing all async update streams.", v10, 2u);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }
}

uint64_t ObjectCaptureSession.unsafeGetAllAsyncStreams()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation10Finishable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation10Finishable_pGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23B91AEA0;
  v2 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_stateUpdater);
  v3 = lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type AsyncUpdateStreamContainer<ObjectCaptureSession.CaptureState> and conformance AsyncUpdateStreamContainer<A>, &_s17RealityFoundation26AsyncUpdateStreamContainerCy01_A11Kit_SwiftUI20ObjectCaptureSessionC0K5StateOGMd, &_s17RealityFoundation26AsyncUpdateStreamContainerCy01_A11Kit_SwiftUI20ObjectCaptureSessionC0K5StateOGMR);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_feedbackUpdater);
  v5 = lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type AsyncUpdateStreamContainer<Set<ObjectCaptureSession.Feedback>> and conformance AsyncUpdateStreamContainer<A>, &_s17RealityFoundation26AsyncUpdateStreamContainerCyShy01_A11Kit_SwiftUI20ObjectCaptureSessionC8FeedbackOGGMd, &_s17RealityFoundation26AsyncUpdateStreamContainerCyShy01_A11Kit_SwiftUI20ObjectCaptureSessionC8FeedbackOGGMR);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_cameraTrackingUpdater);
  v7 = lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type AsyncUpdateStreamContainer<ObjectCaptureSession.Tracking> and conformance AsyncUpdateStreamContainer<A>, &_s17RealityFoundation26AsyncUpdateStreamContainerCy01_A11Kit_SwiftUI20ObjectCaptureSessionC8TrackingOGMd, &_s17RealityFoundation26AsyncUpdateStreamContainerCy01_A11Kit_SwiftUI20ObjectCaptureSessionC8TrackingOGMR);
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  v8 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_isPausedUpdater);
  v9 = lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type AsyncUpdateStreamContainer<Bool> and conformance AsyncUpdateStreamContainer<A>, &_s17RealityFoundation26AsyncUpdateStreamContainerCySbGMd, &_s17RealityFoundation26AsyncUpdateStreamContainerCySbGMR);
  *(v1 + 80) = v8;
  *(v1 + 88) = v9;
  v10 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_userCompletedScanPassUpdater);
  *(v1 + 96) = v10;
  *(v1 + 104) = v9;
  v11 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_canRequestImageCaptureUpdater);
  *(v1 + 112) = v11;
  *(v1 + 120) = v9;
  v12 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_numberOfShotsTakenUpdater);
  v13 = lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type AsyncUpdateStreamContainer<Int> and conformance AsyncUpdateStreamContainer<A>, &_s17RealityFoundation26AsyncUpdateStreamContainerCySiGMd, &_s17RealityFoundation26AsyncUpdateStreamContainerCySiGMR);
  *(v1 + 128) = v12;
  *(v1 + 136) = v13;
  v14 = v2;
  v15 = v4;
  v16 = v6;
  v17 = v8;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  return v1;
}

void ObjectCaptureSession.verifyObjectCentricModeOrFail()()
{
  if (*(*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel) + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) == 2)
  {
    if (one-time initialization token for logger != -1)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v1 = type metadata accessor for Logger();
      __swift_project_value_buffer(v1, logger);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&dword_23B824000, v2, v3, "Invalid call in area mode!", v4, 2u);
        MEMORY[0x23EEB0B70](v4, -1, -1);
      }

      __break(1u);
LABEL_6:
      swift_once();
    }
  }
}

uint64_t ObjectCaptureSession.logAnalyticsEventsOnStartUp()()
{
  v1 = type metadata accessor for AnalyticsManager.ObjectCaptureSessionBundleIdentifierEvent();
  v24 = *(v1 - 8);
  v25 = v1;
  v2 = *(v24 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  inited = type metadata accessor for AnalyticsManager.ObjectCaptureSessionInitEvent();
  v11 = *(inited - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](inited);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AnalyticsManager();
  static AnalyticsManager.shared.getter();
  v15 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_sessionID;
  v16 = *(v6 + 16);
  v21 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  v23 = v5;
  v16(v9, v21 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_sessionID, v5);
  AnalyticsManager.ObjectCaptureSessionInitEvent.init(sessionID:)();
  dispatch thunk of AnalyticsManager.sendObjectCaptureSessionInitEvent(event:)();

  (*(v11 + 8))(v14, inited);
  v17 = [objc_opt_self() mainBundle];
  v18 = [v17 bundleIdentifier];

  if (v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static AnalyticsManager.shared.getter();
  v16(v9, v21 + v15, v23);
  AnalyticsManager.ObjectCaptureSessionBundleIdentifierEvent.init(sessionID:bundleID:)();
  dispatch thunk of AnalyticsManager.sendObjectCaptureSessionBundleIdentifierEvent(event:)();

  return (*(v24 + 8))(v4, v25);
}

uint64_t ObjectCaptureSession.logAnalyticsEventsOnTearDown()()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v38 = *(v35 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AnalyticsManager.ObjectCaptureSessionStatusEvent();
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI20ObjectCaptureSessionC5ErrorOSgMd, &_s19_RealityKit_SwiftUI20ObjectCaptureSessionC5ErrorOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v34 = &v31 - v10;
  v11 = type metadata accessor for AnalyticsManager.ObjectCaptureSessionStatusEvent.Status();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = *(v12 + 104);
  v19(&v31 - v17, *MEMORY[0x277CDB398], v11);
  swift_getKeyPath();
  v40 = v0;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  v20 = v11;
  v21 = v12;
  v22 = v35;

  v23 = v0[2];
  if (v23 >= 5)
  {
    v32 = v19;
    v33 = v16;
    if (v23 != 5)
    {
      v31 = v18;
      v40 = v23;
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v25 = type metadata accessor for ObjectCaptureSession.Error(0);
      v26 = v34;
      v27 = swift_dynamicCast();
      v28 = *(*(v25 - 8) + 56);
      v29 = v32;
      if (v27)
      {
        v28(v26, 0, 1, v25);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v18 = v31;
          (*(v21 + 8))(v31, v20);
          outlined destroy of ObjectCaptureSession.Configuration(v26, type metadata accessor for ObjectCaptureSession.Error);
          v29(v18, *MEMORY[0x277CDB3A8], v20);
          goto LABEL_11;
        }

        outlined destroy of ObjectCaptureSession.Configuration(v26, type metadata accessor for ObjectCaptureSession.Error);
      }

      else
      {
        v28(v26, 1, 1, v25);
        outlined destroy of PerspectiveCameraComponent?(v26, &_s19_RealityKit_SwiftUI20ObjectCaptureSessionC5ErrorOSgMd, &_s19_RealityKit_SwiftUI20ObjectCaptureSessionC5ErrorOSgMR);
      }

      v18 = v31;
      goto LABEL_11;
    }

    (*(v21 + 8))(v18, v20);
    v32(v18, *MEMORY[0x277CDB3A0], v20);
LABEL_11:
    v16 = v33;
  }

  type metadata accessor for AnalyticsManager();
  static AnalyticsManager.shared.getter();
  (*(v38 + 16))(v39, *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel) + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_sessionID, v22);
  (*(v21 + 16))(v16, v18, v20);
  AnalyticsManager.ObjectCaptureSessionStatusEvent.init(sessionID:status:)();
  dispatch thunk of AnalyticsManager.sendObjectCaptureSessionStatusEvent(event:)();

  (*(v36 + 8))(v7, v37);
  return (*(v21 + 8))(v18, v20);
}

uint64_t protocol witness for Identifiable.id.getter in conformance ObjectCaptureSession@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ObjectCaptureSession(0);
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

uint64_t UnsafeSendableInstance.__deallocating_deinit()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Atomic();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t closure #1 in nonisolated_PrivateTearDown(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in nonisolated_PrivateTearDown(of:), v6, v5);
}

{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in nonisolated_PrivateTearDown(of:), v6, v5);
}

uint64_t closure #1 in nonisolated_PrivateTearDown(of:)()
{
  v1 = v0[3];

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
    _os_log_impl(&dword_23B824000, v3, v4, "~~~~ ObjectCaptureSession delayed deinit finishing all update streams...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = v0[2];

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v0[2] + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of Finishable.finish()();
      swift_unknownObjectRelease();
      v8 += 2;
      --v7;
    }

    while (v7);
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_23B824000, v11, v12, "~~~~ done: ObjectCaptureSession delayed deinit finishing all update streams.", v13, 2u);
    MEMORY[0x23EEB0B70](v13, -1, -1);
  }

  v14 = v0[1];

  return v14();
}

{
  v1 = v0[3];

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
    _os_log_impl(&dword_23B824000, v3, v4, "~~~~ ObjectCaptureSession delayed deinit cleaning up DataModel...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = v0[2];

  DataModel.tearDown()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23B824000, v7, v8, "~~~~ done: ObjectCaptureSession delayed deinit cleaning up DataModel.", v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  v10 = v0[1];

  return v10();
}

uint64_t ObjectCaptureSession.shouldPlayHaptics.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t key path getter for ObjectCaptureSession.shouldPlayHaptics : ObjectCaptureSession@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v6;
  return result;
}

void key path setter for ObjectCaptureSession.shouldPlayHaptics : ObjectCaptureSession(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  ObjectCaptureSession.shouldPlayHaptics.setter();
}

void ObjectCaptureSession.shouldPlayHaptics.setter()
{
  v0 = [objc_msgSend(objc_opt_self() capabilitiesForHardware)];
  swift_unknownObjectRelease();
  if (v0)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, logger);
    v5 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_23B824000, v5, v3, "Cannot change shouldPlayHaptics since device does not support haptics!", v4, 2u);
      MEMORY[0x23EEB0B70](v4, -1, -1);
    }
  }
}

void closure #1 in ObjectCaptureSession.shouldPlayHaptics.setter(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  DataModel.shouldPlayHaptics.didset();
}

void (*ObjectCaptureSession.shouldPlayHaptics.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  swift_getKeyPath();
  *a1 = v1;
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 16) = *a1;
  return ObjectCaptureSession.shouldPlayHaptics.modify;
}

void ObjectCaptureSession.shouldPlayHaptics.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  ObjectCaptureSession.shouldPlayHaptics.setter();
}

uint64_t ObjectCaptureSession.isAutoCaptureEnabled.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel) + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isAutoCaptureEnabled);
}

uint64_t key path getter for ObjectCaptureSession.isAutoCaptureEnabled : ObjectCaptureSession@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(*(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel) + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isAutoCaptureEnabled);
  return result;
}

uint64_t key path setter for ObjectCaptureSession.isAutoCaptureEnabled : ObjectCaptureSession(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t ObjectCaptureSession.isAutoCaptureEnabled.setter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*ObjectCaptureSession.isAutoCaptureEnabled.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession and conformance ObjectCaptureSession, type metadata accessor for ObjectCaptureSession);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v4 + 32) = *(*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel) + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isAutoCaptureEnabled);
  return ObjectCaptureSession.isAutoCaptureEnabled.modify;
}

void ObjectCaptureSession.isAutoCaptureEnabled.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 32);
  swift_getKeyPath();
  v5 = v1[2];
  v4 = v1[3];
  *v1 = v1[1];
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t key path getter for DataModel.state : DataModel(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for DataModel.state : DataModel(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for DataModel.State(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  outlined init with copy of ObjectCaptureSession.Error(a1, &v13 - v9, type metadata accessor for DataModel.State);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of ObjectCaptureSession.Error(v10, v8, type metadata accessor for DataModel.State);

  static Published.subscript.setter();
  return outlined destroy of ObjectCaptureSession.Configuration(v10, type metadata accessor for DataModel.State);
}

uint64_t key path getter for DataModel.shouldPlayHaptics : DataModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

void key path setter for DataModel.shouldPlayHaptics : DataModel(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  DataModel.shouldPlayHaptics.didset();
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZ19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackO_Tt1g5(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    Hasher.init(_seed:)();
    MEMORY[0x23EEAFE40](v13);
    result = Hasher._finalize()();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ7Combine14AnyCancellableC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return MEMORY[0x2821FCF40](v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        type metadata accessor for AnyCancellable();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable;
        v17 = a1;
        if (!v13)
        {
LABEL_27:
          v19 = v14;
          while (1)
          {
            v14 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v20 = *(v10 + 8 * v14);
            ++v19;
            if (v20)
            {
              v18 = __clz(__rbit64(v20));
              v26 = (v20 - 1) & v20;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](v5, v4);
        }

        while (1)
        {
          v18 = __clz(__rbit64(v13));
          v26 = (v13 - 1) & v13;
LABEL_32:
          v29 = *(*(v17 + 48) + 8 * (v18 | (v14 << 6)));
          v21 = *(a2 + 40);
          lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);

          v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v23 = -1 << *(a2 + 32);
          v24 = v22 & ~v23;
          if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            break;
          }

          v25 = ~v23;
          lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
          while (1)
          {
            v28 = *(*(a2 + 48) + 8 * v24);
            if (dispatch thunk of static Equatable.== infix(_:_:)())
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v26;
          v5 = &lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable;
          v17 = a1;
          if (!v26)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return specialized _NativeSet.isEqual(to:)(v8, v7);
}

uint64_t specialized _NativeSet.isEqual(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = __CocoaSet.count.getter();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = *(*(a2 + 48) + 8 * (v10 | (v5 << 6)));

    v14 = __CocoaSet.contains(_:)();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(a2 + 56 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
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
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
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
    return MEMORY[0x277D84F90];
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
          return MEMORY[0x277D84F90];
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 32 * v8 + 32), (v6 + 32), 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for RealityViewCameraConvertible(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI17KeyframeAnimationC0H0VyAC14PlatterAnimVar33_461B7213B95BBE9C1EB31D36A0EAB781LLV_GGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI17KeyframeAnimationC0H0VyAC14PlatterAnimVar33_461B7213B95BBE9C1EB31D36A0EAB781LLV_GGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI17CameraPathManagerC10PoseSampleVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI17CameraPathManagerC10PoseSampleVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 96 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI26DynamicScanVolumeEstimatorC12SphereSampleVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI26DynamicScanVolumeEstimatorC12SphereSampleVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI21FreeformCloudRendererC19AnchorMetalResource33_3779DB7E999291C1C0BBA21A79DFAE44LLVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI21FreeformCloudRendererC19AnchorMetalResource33_3779DB7E999291C1C0BBA21A79DFAE44LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo25geom_interpolating_key_3faGMd, &_ss23_ContiguousArrayStorageCySo25geom_interpolating_key_3faGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI13TubeGeneratorC10CurvePointVySo16CameraPathVertexV_GGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI13TubeGeneratorC10CurvePointVySo16CameraPathVertexV_GGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI20ContinuousShotCircle33_D8FE582B883C2D49039B52B4C90B8CC0LLC0I4DataVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI20ContinuousShotCircle33_D8FE582B883C2D49039B52B4C90B8CC0LLC0I4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo23ObjectCaptureCubeVertexVGMd, &_ss23_ContiguousArrayStorageCySo23ObjectCaptureCubeVertexVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

unint64_t specialized Set._Variant.remove(_:)@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](a1);
  result = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a1)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    v14 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v13 = v14;
    }

    *a2 = *(*(v13 + 48) + v9);
    result = specialized _NativeSet._delete(at:)(v9);
    *v2 = v14;
  }

  else
  {
LABEL_5:
    *a2 = 9;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackOGMd, &_ss11_SetStorageCy19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x23EEAFE40](v17);
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x23EEAFE40](v4);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized static ObjectCaptureSession.CaptureState.== infix(_:_:)(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 2)
  {
    if (v2 == 3)
    {
      if (v3 != 3)
      {
        goto LABEL_21;
      }
    }

    else if (v2 == 4)
    {
      if (v3 != 4)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      if (v3 != 5)
      {
        goto LABEL_21;
      }
    }

LABEL_19:
    v5 = 1;
    goto LABEL_22;
  }

  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (v2 == 1)
  {
    if (v3 != 1)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      goto LABEL_19;
    }

LABEL_21:
    outlined copy of ObjectCaptureSession.CaptureState(*a1);
    v5 = 0;
    goto LABEL_22;
  }

LABEL_16:
  if (v3 < 6)
  {
    goto LABEL_21;
  }

  v4 = v2;
  v5 = 1;
LABEL_22:
  outlined copy of ObjectCaptureSession.CaptureState(v3);
  outlined consume of ObjectCaptureSession.CaptureState(v2);
  outlined consume of ObjectCaptureSession.CaptureState(v3);
  return v5;
}

uint64_t specialized static ObjectCaptureSession.stopResourceLogging()(const char *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
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
    _os_log_impl(&dword_23B824000, v10, v11, a1, v12, 2u);
    MEMORY[0x23EEB0B70](v12, -1, -1);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  type metadata accessor for MainActor();
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, a3, v15);
}

uint64_t type metadata accessor for ObjectCaptureSession.Error(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id outlined copy of ObjectCaptureSession.CaptureState(id result)
{
  if (result >= 6)
  {
    return result;
  }

  return result;
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ObjectCaptureSession.Error(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(unint64_t *a1, void (*a2)(uint64_t))
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

void specialized ObjectCaptureSession.logConfiguration(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v42 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = &v42 - v11;
  v12 = type metadata accessor for ObjectCaptureSession.Configuration(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, logger);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_23B824000, v17, v18, "Configuration {", v19, 2u);
    MEMORY[0x23EEB0B70](v19, -1, -1);
  }

  outlined init with copy of ObjectCaptureSession.Error(a1, v15, type metadata accessor for ObjectCaptureSession.Configuration);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67240192;
    v23 = v15[*(v12 + 20)];
    outlined destroy of ObjectCaptureSession.Configuration(v15, type metadata accessor for ObjectCaptureSession.Configuration);
    *(v22 + 4) = v23;
    _os_log_impl(&dword_23B824000, v20, v21, "\tisOverCaptureEnabled: %{BOOL,public}d", v22, 8u);
    MEMORY[0x23EEB0B70](v22, -1, -1);
  }

  else
  {
    outlined destroy of ObjectCaptureSession.Configuration(v15, type metadata accessor for ObjectCaptureSession.Configuration);
  }

  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_23B824000, v24, v25, "\tcheckpointDirectory: nil", v26, 2u);
      MEMORY[0x23EEB0B70](v26, -1, -1);
    }
  }

  else
  {
    v27 = v44;
    (*(v7 + 32))(v44, v5, v6);
    v28 = v43;
    (*(v7 + 16))(v43, v27, v6);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v45 = v42;
      *v31 = 141558274;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2080;
      lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      v35 = *(v7 + 8);
      v35(v28, v6);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v45);

      *(v31 + 14) = v36;
      _os_log_impl(&dword_23B824000, v29, v30, "\tcheckpointDirectory: %{mask.hash}s", v31, 0x16u);
      v37 = v42;
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x23EEB0B70](v37, -1, -1);
      MEMORY[0x23EEB0B70](v31, -1, -1);

      v35(v44, v6);
    }

    else
    {

      v38 = *(v7 + 8);
      v38(v28, v6);
      v38(v27, v6);
    }
  }

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_23B824000, v39, v40, "} \\ Configuration", v41, 2u);
    MEMORY[0x23EEB0B70](v41, -1, -1);
  }
}

uint64_t outlined destroy of ObjectCaptureSession.Configuration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in nonisolated_PrivateTearDown(of:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in nonisolated_PrivateTearDown(of:);

  return closure #1 in nonisolated_PrivateTearDown(of:)(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in nonisolated_PrivateTearDown(of:);

  return closure #1 in nonisolated_PrivateTearDown(of:)(a1, v4, v5, v6);
}

uint64_t objectdestroyTm(void (*a1)(void))
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

void outlined consume of ObjectCaptureSession.CaptureState(id a1)
{
  if (a1 >= 6)
  {
  }
}

void partial apply for closure #1 in ObjectCaptureSession.isAutoCaptureEnabled.setter()
{
  partial apply for closure #1 in ObjectCaptureSession.isAutoCaptureEnabled.setter();
}

{
  *(*(*(v0 + 16) + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel) + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isAutoCaptureEnabled) = *(v0 + 24);
  DataModel.isAutoCaptureEnabled.didset();
}

unint64_t lazy protocol witness table accessor for type ObjectCaptureSession.Feedback and conformance ObjectCaptureSession.Feedback()
{
  result = lazy protocol witness table cache variable for type ObjectCaptureSession.Feedback and conformance ObjectCaptureSession.Feedback;
  if (!lazy protocol witness table cache variable for type ObjectCaptureSession.Feedback and conformance ObjectCaptureSession.Feedback)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObjectCaptureSession.Feedback and conformance ObjectCaptureSession.Feedback);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ObjectCaptureSession.Feedback and conformance ObjectCaptureSession.Feedback;
  if (!lazy protocol witness table cache variable for type ObjectCaptureSession.Feedback and conformance ObjectCaptureSession.Feedback)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObjectCaptureSession.Feedback and conformance ObjectCaptureSession.Feedback);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ObjectCaptureSession.Tracking.Reason and conformance ObjectCaptureSession.Tracking.Reason()
{
  result = lazy protocol witness table cache variable for type ObjectCaptureSession.Tracking.Reason and conformance ObjectCaptureSession.Tracking.Reason;
  if (!lazy protocol witness table cache variable for type ObjectCaptureSession.Tracking.Reason and conformance ObjectCaptureSession.Tracking.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObjectCaptureSession.Tracking.Reason and conformance ObjectCaptureSession.Tracking.Reason);
  }

  return result;
}

uint64_t type metadata completion function for ObjectCaptureSession()
{
  result = type metadata accessor for ObjectCaptureSession.Configuration(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of ObjectCaptureSession.state.getter()
{
  return (*(*v0 + 264))();
}

{
  return MEMORY[0x2821527C0]();
}

uint64_t dispatch thunk of ObjectCaptureSession.resume()()
{
  return (*(*v0 + 696))();
}

{
  return MEMORY[0x2821527E0]();
}

uint64_t dispatch thunk of ObjectCaptureSession.finish()()
{
  return (*(*v0 + 752))();
}

{
  return MEMORY[0x2821527D8]();
}

uint64_t dispatch thunk of ObjectCaptureSession.cancel()()
{
  return (*(*v0 + 760))();
}

{
  return MEMORY[0x2821527D0]();
}

uint64_t type metadata completion function for ObjectCaptureSession.Updates(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  result = a4(319, *(a1 + 16));
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  v6 = a4(0, *(a3 + 16));
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  v7 = a5(0, *(a4 + 16));
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t type metadata completion function for ObjectCaptureSession.Error()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for (requiredBytes: Int64)();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for (requiredBytes: Int64)()
{
  result = lazy cache variable for type metadata for (requiredBytes: Int64);
  if (!lazy cache variable for type metadata for (requiredBytes: Int64))
  {
    result = MEMORY[0x277D84A28];
    atomic_store(MEMORY[0x277D84A28], &lazy cache variable for type metadata for (requiredBytes: Int64));
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19_RealityKit_SwiftUI20ObjectCaptureSessionC0F5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ObjectCaptureSession.CaptureState(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ObjectCaptureSession.CaptureState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for ObjectCaptureSession.CaptureState(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ObjectCaptureSession.Feedback(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ObjectCaptureSession.Feedback(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ObjectCaptureSession.Tracking(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
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

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
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

uint64_t storeEnumTagSinglePayload for ObjectCaptureSession.Tracking(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
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

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for ObjectCaptureSession.Tracking(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for ObjectCaptureSession.Tracking(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ObjectCaptureSession.Tracking.Reason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ObjectCaptureSession.Tracking.Reason(uint64_t result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for ObjectCaptureSession.Configuration()
{
  type metadata accessor for URL?();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for URL?()
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for URL?);
    }
  }
}

uint64_t type metadata completion function for UnsafeSendableInstance(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Atomic();
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

uint64_t type metadata completion function for UnsafeSendable(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for UnsafeSendable(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
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

char *storeEnumTagSinglePayload for UnsafeSendable(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
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

uint64_t outlined init with take of DataModel.Error(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataModel.Error(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized static ObjectCaptureSession.fromOCSError(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ObjectCaptureSession.Error();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 16);
  v7(v6, a1, v2);
  v8 = (*(v3 + 88))(v6, v2);
  if (!MEMORY[0x277D00440] || v8 != *MEMORY[0x277D00440])
  {
    if (MEMORY[0x277D00430] && v8 == *MEMORY[0x277D00430] || MEMORY[0x277D00448] && v8 == *MEMORY[0x277D00448] || MEMORY[0x277D00450] && v8 == *MEMORY[0x277D00450] || MEMORY[0x277D00460] && v8 == *MEMORY[0x277D00460])
    {
      type metadata accessor for ObjectCaptureSession.Error(0);
      lazy protocol witness table accessor for type ObjectCaptureSession and conformance ObjectCaptureSession(&lazy protocol witness table cache variable for type ObjectCaptureSession.Error and conformance ObjectCaptureSession.Error, type metadata accessor for ObjectCaptureSession.Error);
      v9 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      return v9;
    }

    if ((!MEMORY[0x277D00438] || v8 != *MEMORY[0x277D00438]) && (!MEMORY[0x277D00458] || v8 != *MEMORY[0x277D00458]))
    {
      lazy protocol witness table accessor for type ObjectCaptureSession.Error and conformance ObjectCaptureSession.Error(&lazy protocol witness table cache variable for type ObjectCaptureSession.Error and conformance ObjectCaptureSession.Error, MEMORY[0x2822175E8]);
      v9 = swift_allocError();
      v7(v11, a1, v2);
      (*(v3 + 8))(v6, v2);
      return v9;
    }
  }

  lazy protocol witness table accessor for type ObjectCaptureSession.Error and conformance ObjectCaptureSession.Error(&lazy protocol witness table cache variable for type ObjectCaptureSession.Error and conformance ObjectCaptureSession.Error, MEMORY[0x2822175E8]);
  v9 = swift_allocError();
  v7(v10, a1, v2);
  return v9;
}

uint64_t specialized static ObjectCaptureSession.toOCSFeedbackSet(ocsFeedback:)(uint64_t a1)
{
  v26 = MEMORY[0x277D84FA0];
  v2 = type metadata accessor for ObjectCaptureSession.Frame.Feedback();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v25[-1] - v5;
  v7 = (*(v3 + 16))(&v25[-1] - v5, a1, v2);
  MEMORY[0x28223BE20](v7);
  static ObjectCaptureSession.Frame.Feedback.tooFast.getter();
  lazy protocol witness table accessor for type ObjectCaptureSession.Error and conformance ObjectCaptureSession.Error(&lazy protocol witness table cache variable for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback, MEMORY[0x282217638]);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  v9 = *(v3 + 8);
  v10 = v9(&v25[-1] - v5, v2);
  if (v8)
  {
    v9(&v25[-1] - v5, v2);
    v11 = 2;
LABEL_13:
    specialized Set._Variant.insert(_:)(v25, v11);
    return v26;
  }

  v24 = a1;
  MEMORY[0x28223BE20](v10);
  static ObjectCaptureSession.Frame.Feedback.tooDark.getter();
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = v9(&v25[-1] - v5, v2);
  if (v12)
  {
    v9(&v25[-1] - v5, v2);
    v11 = 4;
    goto LABEL_13;
  }

  MEMORY[0x28223BE20](v13);
  v14 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  static ObjectCaptureSession.Frame.Feedback.lowLight.getter();
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = v9(&v25[-1] - v14, v2);
  if (v15)
  {
    v9(v6, v2);
    v11 = 3;
    goto LABEL_13;
  }

  MEMORY[0x28223BE20](v16);
  static ObjectCaptureSession.Frame.Feedback.tooFar.getter();
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = v9(&v25[-1] - v14, v2);
  if (v17)
  {
    v9(v6, v2);
    v11 = 1;
    goto LABEL_13;
  }

  MEMORY[0x28223BE20](v18);
  v19 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  static ObjectCaptureSession.Frame.Feedback.tooClose.getter();
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = v9(&v25[-1] - v19, v2);
  if (v20)
  {
    v9(v6, v2);
    v11 = 0;
    goto LABEL_13;
  }

  MEMORY[0x28223BE20](v21);
  static ObjectCaptureSession.Frame.Feedback.outOfFieldOfView.getter();
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v9(&v25[-1] - v19, v2);
  if (v22)
  {
    v9(v6, v2);
    v11 = 5;
    goto LABEL_13;
  }

  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  MEMORY[0x23EEAF590](0xD000000000000026, 0x800000023B924AF0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type ObjectCaptureSession.Error and conformance ObjectCaptureSession.Error(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t keypath_set_4Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t partial apply for closure #1 in ObjectCaptureSession.feedback.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
}

void partial apply for closure #1 in ObjectCaptureSession.state.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  outlined copy of ObjectCaptureSession.CaptureState(v1);
  outlined consume of ObjectCaptureSession.CaptureState(v3);
}

uint64_t partial apply for closure #1 in static ObjectCaptureSession.stopResourceLogging()()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = ObjectCaptureSession.Updates.Iterator.next();

  return closure #1 in static ObjectCaptureSession.stopResourceLogging()();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in nonisolated_PrivateTearDown(of:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_178(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = ObjectCaptureSession.Updates.Iterator.next();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined assign with take of ObjectCaptureSession.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObjectCaptureSession.Configuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in static ObjectCaptureSession.startResourceLogging()()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in nonisolated_PrivateTearDown(of:);

  return closure #1 in static ObjectCaptureSession.startResourceLogging()();
}

uint64_t RealityViewCameraContent.project<A>(point:to:)(__n128 a1)
{
  v12 = a1;
  v2 = type metadata accessor for CoordinateSpace();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  result = ARView.project(_:)();
  if ((v9 & 1) == 0)
  {
    v10 = *&result;
    dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
    v11 = specialized RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v7, v6, v10);
    (*(v3 + 8))(v6, v2);
    return *&v11;
  }

  return result;
}

double specialized RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(void *a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v38 - v10;
  v12 = type metadata accessor for GeometryProxy();
  v42 = *(v12 - 8);
  v43 = v12;
  v13 = *(v42 + 64);
  MEMORY[0x28223BE20](v12);
  v41 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Scene.AnchorCollection();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CoordinateSpace();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v39 = v11;
    v40 = v4;
    (*(v21 + 104))(v24, *MEMORY[0x277CDF958], v20);
    lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type CoordinateSpace and conformance CoordinateSpace, MEMORY[0x277CDF970]);
    v25 = a1;
    v38[1] = a2;
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v21 + 8))(v24, v20);
    if (v26)
    {
LABEL_5:

      return a3;
    }

    dispatch thunk of ARView.scene.getter();
    dispatch thunk of Scene.anchors.getter();

    lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection, MEMORY[0x277CDB0C0]);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v44[4] == v44[0])
    {
      (*(v16 + 8))(v19, v15);
      goto LABEL_5;
    }

    v28 = dispatch thunk of Collection.subscript.read();
    v30 = *v29;

    v28(v44, 0);
    (*(v16 + 8))(v19, v15);

    v32 = v39;
    specialized RealityCoordinateSpaceProjecting.getProxy(from:)(v31, v39);

    v34 = v42;
    v33 = v43;
    if ((*(v42 + 48))(v32, 1, v43) == 1)
    {

      outlined destroy of PerspectiveCameraComponent?(v32, &_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
    }

    else
    {
      v35 = v41;
      (*(v34 + 32))(v41, v32, v33);
      GeometryProxy.frame(in:)();
      v37 = v36;

      (*(v34 + 8))(v35, v33);
      return a3 - v37;
    }
  }

  return a3;
}

double RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(void *a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - v8;
  v10 = type metadata accessor for GeometryProxy();
  v40 = *(v10 - 8);
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v10);
  v39 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Scene.AnchorCollection();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CoordinateSpace();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v37 = v9;
    v38 = v10;
    (*(v19 + 104))(v22, *MEMORY[0x277CDF958], v18);
    lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type CoordinateSpace and conformance CoordinateSpace, MEMORY[0x277CDF970]);
    v23 = a1;
    v36 = a2;
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v19 + 8))(v22, v18);
    if (v24)
    {
    }

    else
    {
      dispatch thunk of ARView.scene.getter();
      dispatch thunk of Scene.anchors.getter();

      lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection, MEMORY[0x277CDB0C0]);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      if (v41[4] == v41[0])
      {

        (*(v14 + 8))(v17, v13);
      }

      else
      {
        v25 = dispatch thunk of Collection.subscript.read();
        v27 = *v26;

        v25(v41, 0);
        (*(v14 + 8))(v17, v13);

        v29 = v37;
        RealityCoordinateSpaceProjecting.getProxy(from:)(v28, v37);

        v30 = v40;
        v31 = v38;
        if ((*(v40 + 48))(v29, 1, v38) == 1)
        {

          outlined destroy of PerspectiveCameraComponent?(v29, &_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
        }

        else
        {
          v32 = v39;
          (*(v30 + 32))(v39, v29, v31);
          GeometryProxy.frame(in:)();
          v34 = v33;

          (*(v30 + 8))(v32, v31);
          return a3 - v34;
        }
      }
    }
  }

  return a3;
}

uint64_t RealityCoordinateSpaceProjecting.getProxy(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v23 = lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type RealityViewCameraComponent and conformance RealityViewCameraComponent, type metadata accessor for RealityViewCameraComponent);
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

unint64_t RealityViewCameraContent.unproject<A, B>(_:from:to:ontoPlane:)(double a1, double a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v45 = a10;
  v46 = a12;
  v41[1] = a9;
  v41[2] = a11;
  v49 = a5;
  v50 = a6;
  v47 = a3;
  v48 = a4;
  v44 = a8;
  v43 = type metadata accessor for __RealityCoordinateSpaceContext();
  v14 = *(v43 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v43);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for __ResolvedRealityCoordinateSpace();
  v18 = *(v42 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v42);
  v21 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CoordinateSpace();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v12;
  dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
  specialized RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v27, v26, a1);
  (*(v23 + 8))(v26, v22);
  dispatch thunk of ARView.scene.getter();
  active = dispatch thunk of Scene.internalActiveCamera.getter();

  MEMORY[0x23EEAD680](v29);
  dispatch thunk of RealityCoordinateSpace._resolve(in:)();
  (*(v14 + 8))(v17, v43);
  v30 = __ResolvedRealityCoordinateSpace.entity.getter();
  (*(v18 + 8))(v21, v42);
  if (v30)
  {
    v52 = v30;
    if (active)
    {
      v51 = active;
      type metadata accessor for Entity();
      lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8]);

      dispatch thunk of static Equatable.== infix(_:_:)();
    }

    v34 = ARView.unproject(_:ontoPlane:relativeToCamera:)();
    if (v36)
    {
      v33 = v34;
      goto LABEL_8;
    }

    v38.n128_u64[0] = v34;
    v38.n128_u64[1] = v35;
    v50 = v38;
    type metadata accessor for Entity();
    HasTransform.convert(position:from:)();
    v50 = v39;

    return v50.n128_u64[0];
  }

  else
  {
    v31 = ARView.unproject(_:ontoPlane:relativeToCamera:)();
    if (v32)
    {
      v33 = v31;
LABEL_8:

      return v33;
    }

    v40 = v31;

    return v40;
  }
}

uint64_t RealityViewCameraContent.ray<A, B>(through:in:to:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X5>, _OWORD *a4@<X8>, double a5@<D0>)
{
  v36 = a2;
  v37 = a3;
  v35 = a1;
  v40 = a4;
  v7 = type metadata accessor for __RealityCoordinateSpaceContext();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for __ResolvedRealityCoordinateSpace();
  v31 = *(v11 - 8);
  v32 = v11;
  v12 = *(v31 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CoordinateSpace();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v5;
  dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
  specialized RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v20, v19, a5);
  (*(v16 + 8))(v19, v15);
  result = ARView.ray(through:)();
  v22 = v41;
  v23 = v42;
  v24 = v43;
  if ((v43 & 1) == 0)
  {
    v38 = v42;
    v39 = v41;
    dispatch thunk of ARView.scene.getter();
    active = dispatch thunk of Scene.internalActiveCamera.getter();

    MEMORY[0x23EEAD680](active);
    dispatch thunk of RealityCoordinateSpace._resolve(in:)();
    (*(v33 + 8))(v10, v34);
    v26 = __ResolvedRealityCoordinateSpace.entity.getter();
    result = (*(v31 + 8))(v14, v32);
    if (v26)
    {
      type metadata accessor for Entity();
      HasTransform.convert(direction:from:)();
      v38 = v27;
      HasTransform.convert(position:from:)();
      v39 = v28;

      v23 = v38;
      v22 = v39;
      v24 = 0;
    }

    else
    {
      v24 = 0;
      v23 = v38;
      v22 = v39;
    }
  }

  v29 = v40;
  *v40 = v22;
  v29[1] = v23;
  *(v29 + 32) = v24;
  return result;
}

uint64_t RealityViewCameraContent.entity<A>(at:in:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(double, double))
{
  v8 = type metadata accessor for CoordinateSpace();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v5;
  dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
  v14 = specialized RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v13, v12, a1);
  v16 = v15;
  (*(v9 + 8))(v12, v8);
  return a5(v14, v16);
}

uint64_t RealityViewCameraContent.hitTest<A>(point:in:query:mask:)(double a1)
{
  v3 = type metadata accessor for CoordinateSpace();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
  specialized RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v8, v7, a1);
  (*(v4 + 8))(v7, v3);
  return ARView.hitTest(_:query:mask:)();
}

double protocol witness for RealityCoordinateSpaceProjecting.ray<A, B>(through:in:to:) in conformance RealityViewCameraContent@<D0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>, double a5@<D0>)
{
  RealityViewCameraContent.ray<A, B>(through:in:to:)(a1, a2, a3, v8, a5);
  result = *v8;
  v7 = v8[1];
  *a4 = v8[0];
  *(a4 + 16) = v7;
  *(a4 + 32) = v9;
  return result;
}

uint64_t EntityTargetValue.project<A>(point:to:)(__n128 a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v5 = type metadata accessor for CoordinateSpace();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 32);
  v11 = *(v3 + v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *(v3 + v10);
  result = ARView.project(_:)();
  if ((v14 & 1) == 0)
  {
    v15 = *&result;
    dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
    v16 = RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v11, v9, v15);
    (*(v6 + 8))(v9, v5);
    return *&v16;
  }

  return result;
}

uint64_t EntityTargetValue.unproject<A, B>(_:from:to:ontoPlane:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, __n128 a10, __n128 a11, __n128 a12, __n128 a13)
{
  v48 = a5;
  *&v49 = a7;
  v42 = a4;
  v43 = a6;
  v40[2] = a12;
  v40[3] = a13;
  v40[1] = a11;
  v40[0] = a10;
  v46 = a2;
  v41 = a1;
  v47 = type metadata accessor for __RealityCoordinateSpaceContext();
  v44 = *(v47 - 8);
  v16 = *(v44 + 64);
  MEMORY[0x28223BE20](v47);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for __ResolvedRealityCoordinateSpace();
  v19 = *(v45 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v45);
  v22 = v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CoordinateSpace();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v13 + *(a3 + 32));
  dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
  RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v28, v27, a8);
  (*(v24 + 8))(v27, v23);
  if (v28)
  {
    dispatch thunk of ARView.scene.getter();
    active = dispatch thunk of Scene.internalActiveCamera.getter();
  }

  else
  {
    active = 0;
  }

  MEMORY[0x23EEAD680](v30);
  dispatch thunk of RealityCoordinateSpace._resolve(in:)();
  (*(v44 + 8))(v18, v47);
  v31 = __ResolvedRealityCoordinateSpace.entity.getter();
  (*(v19 + 8))(v22, v45);
  if (!v31)
  {
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v51 = v31;
  if (!active)
  {
    if (v28)
    {
      goto LABEL_9;
    }

LABEL_14:

    return 0;
  }

  v50 = active;
  type metadata accessor for Entity();
  lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8]);

  dispatch thunk of static Equatable.== infix(_:_:)();

  if (!v28)
  {
    goto LABEL_14;
  }

LABEL_9:
  v32 = ARView.unproject(_:ontoPlane:relativeToCamera:)();
  if (v34)
  {
    v35 = v32;

    return v35;
  }

  else if (v31)
  {
    *&v37 = v32;
    *(&v37 + 1) = v33;
    v49 = v37;
    type metadata accessor for Entity();
    HasTransform.convert(position:from:)();
    v49 = v38;

    return v49;
  }

  else
  {
    v39 = v32;

    return v39;
  }
}

uint64_t EntityTargetValue.ray<A, B>(through:in:to:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, _OWORD *a6@<X8>, double a7@<D0>)
{
  v40 = a5;
  *&v41 = a4;
  v38 = a1;
  v39 = a3;
  v42 = a6;
  v10 = type metadata accessor for __RealityCoordinateSpaceContext();
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for __ResolvedRealityCoordinateSpace();
  v34 = *(v14 - 8);
  v35 = v14;
  v15 = *(v34 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CoordinateSpace();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v7 + *(a2 + 32));
  dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
  RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v23, v22, a7);
  result = (*(v19 + 8))(v22, v18);
  if (v23)
  {
    result = ARView.ray(through:)();
    v25 = v43;
    v26 = v44;
    v27 = v45;
    if ((v45 & 1) == 0)
    {
      v33 = v44;
      v41 = v43;
      dispatch thunk of ARView.scene.getter();
      active = dispatch thunk of Scene.internalActiveCamera.getter();

      MEMORY[0x23EEAD680](active);
      dispatch thunk of RealityCoordinateSpace._resolve(in:)();
      (*(v36 + 8))(v13, v37);
      v29 = __ResolvedRealityCoordinateSpace.entity.getter();
      result = (*(v34 + 8))(v17, v35);
      if (v29)
      {
        type metadata accessor for Entity();
        HasTransform.convert(direction:from:)();
        v33 = v30;
        HasTransform.convert(position:from:)();
        v41 = v31;

        v26 = v33;
        v25 = v41;
        v27 = 0;
      }

      else
      {
        v27 = 0;
        v25 = v41;
        v26 = v33;
      }
    }
  }

  else
  {
    v25 = 0uLL;
    v27 = 1;
    v26 = 0uLL;
  }

  v32 = v42;
  *v42 = v25;
  v32[1] = v26;
  *(v32 + 32) = v27;
  return result;
}

uint64_t EntityTargetValue.entity<A>(at:in:)(double a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CoordinateSpace();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + *(a3 + 32));
  dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
  RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v11, v10, a1);
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    return ARView.entity(at:)();
  }

  else
  {
    return 0;
  }
}

uint64_t EntityTargetValue.entities<A>(at:in:)(double a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CoordinateSpace();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + *(a3 + 32));
  dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
  RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v11, v10, a1);
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    return ARView.entities(at:)();
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t EntityTargetValue.hitTest<A>(point:in:query:mask:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[1] = a4;
  v8 = type metadata accessor for CoordinateSpace();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + *(a5 + 32));
  dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
  RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v13, v12, a1);
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    return ARView.hitTest(_:query:mask:)();
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

double protocol witness for RealityCoordinateSpaceProjecting.ray<A, B>(through:in:to:) in conformance EntityTargetValue<A>@<D0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>, double a7@<D0>)
{
  EntityTargetValue.ray<A, B>(through:in:to:)(a1, a5, a2, a3, a4, v10, a7);
  result = *v10;
  v9 = v10[1];
  *a6 = v10[0];
  *(a6 + 16) = v9;
  *(a6 + 32) = v11;
  return result;
}

uint64_t EntityTargetValue.unproject<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for LocalCoordinateSpace();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAtKeyPath();
  v14 = v17;
  static CoordinateSpaceProtocol<>.local.getter();
  v15 = EntityTargetValue.unproject<A, B>(_:from:to:)(v14, v13, a2, a3, v9, a4, MEMORY[0x277CE0380], a5);
  (*(v10 + 8))(v13, v9);
  return v15;
}

uint64_t EntityTargetValue.unproject<A, B>(_:from:to:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a6;
  *&v46 = a8;
  v44 = a3;
  v11 = type metadata accessor for __RealityCoordinateSpaceContext();
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = *(v42 + 64);
  MEMORY[0x28223BE20](v11);
  v39 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for __ResolvedRealityCoordinateSpace();
  v40 = *(v14 - 8);
  v41 = v14;
  v15 = *(v40 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CoordinateSpace();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v8 + *(a4 + 32));
  dispatch thunk of CoordinateSpaceProtocol.coordinateSpace.getter();
  RealityCoordinateSpaceProjecting.ensureYAxis(for:on:in:)(v23, v22, a1);
  (*(v19 + 8))(v22, v18);
  if (!v23)
  {
    return 0;
  }

  v24 = v8 + *(a4 + 36);
  if (*(v24 + 64))
  {
    return 0;
  }

  v38[3] = *v24;
  v38[2] = *(v24 + 16);
  v38[1] = *(v24 + 32);
  v38[0] = *(v24 + 48);
  v25 = v23;
  dispatch thunk of ARView.scene.getter();
  active = dispatch thunk of Scene.internalActiveCamera.getter();

  if (!active)
  {

    return 0;
  }

  v27 = swift_retain_n();
  v28 = v39;
  MEMORY[0x23EEAD680](v27);
  dispatch thunk of RealityCoordinateSpace._resolve(in:)();
  (*(v42 + 8))(v28, v43);
  v29 = __ResolvedRealityCoordinateSpace.entity.getter();
  (*(v40 + 8))(v17, v41);
  if (v29)
  {
    v47 = active;
    v48 = v29;
    type metadata accessor for Entity();
    lazy protocol witness table accessor for type Entity and conformance Entity(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x277CDB1C8]);

    dispatch thunk of static Equatable.== infix(_:_:)();

    v30 = ARView.unproject(_:ontoPlane:relativeToCamera:)();
    if (v31)
    {
      v32 = v30;
LABEL_11:

      return v32;
    }

    HasTransform.convert(position:from:)();
    v46 = v36;

    return v46;
  }

  else
  {

    v34 = ARView.unproject(_:ontoPlane:relativeToCamera:)();
    if (v35)
    {
      v32 = v34;
      goto LABEL_11;
    }

    v37 = v34;

    return v37;
  }
}

uint64_t lazy protocol witness table accessor for type Entity and conformance Entity(unint64_t *a1, void (*a2)(uint64_t))
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

double ObjectCapturePointCloudView.init(session:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  v5 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_pointCloudsBySegment;
  swift_beginAccess();
  ObjectCapturePointCloudView.init(session:segment:)(a1, *(*(v4 + v5) + 16) - 1, &v8);
  v6 = v9;
  *a2 = v8;
  *(a2 + 8) = v6;
  result = *&v10;
  *(a2 + 16) = v10;
  return result;
}

void ObjectCapturePointCloudView.init(session:segment:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  State.init(wrappedValue:)();
  v6 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  v7 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_pointCloudsBySegment;
  swift_beginAccess();
  v8 = *(*(v6 + v7) + 16) - 1;
  if (v8 >= a2)
  {
    v8 = a2;
  }

  v9 = v8 & ~(v8 >> 63);
  if (v9 != a2)
  {
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
      *v13 = 134349312;
      *(v13 + 4) = a2;
      *(v13 + 12) = 2050;
      *(v13 + 14) = v9;
      _os_log_impl(&dword_23B824000, v11, v12, "Invalid segment ID %{public}ld provided.  Replacing with: %{public}ld...", v13, 0x16u);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }
  }

  *a3 = a1;
  *(a3 + 8) = v14;
  *(a3 + 16) = v15;
  *(a3 + 24) = v9;
}

uint64_t ObjectCapturePointCloudView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = static Alignment.center.getter();
  a1[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA19_ConditionalContentVyAIyAA08ModifiedI0VyAKyAA6IDViewVy012_RealityKit_aB0022CoveragePointCloudFullD0VSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA024_SafeAreaRegionsIgnoringG0VGAN08FreeformqD0VGAA05EmptyD0VGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA19_ConditionalContentVyAIyAA08ModifiedI0VyAKyAA6IDViewVy012_RealityKit_aB0022CoveragePointCloudFullD0VSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA024_SafeAreaRegionsIgnoringG0VGAN08FreeformqD0VGAA05EmptyD0VGGMR);
  closure #1 in ObjectCapturePointCloudView.body.getter(v3, v4, v6, v5, a1 + *(v8 + 44));
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyAGyACyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0VGAA05EmptyN0VGGAA017_AppearanceActionQ0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyAGyACyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0VGAA05EmptyN0VGGAA017_AppearanceActionQ0VGMR) + 36));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = partial apply for closure #2 in ObjectCapturePointCloudView.body.getter;
  v10[3] = v9;
}

uint64_t closure #1 in ObjectCapturePointCloudView.body.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a3;
  v55 = a4;
  v59 = type metadata accessor for FreeformFullView();
  v8 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v10 = &v50[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAGyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0VGAA05EmptyN0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyAA08ModifiedD0VyAGyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0VGAA05EmptyN0V_GMR);
  v11 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v13 = &v50[-v12];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0V_GMR);
  v14 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v16 = &v50[-v15];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMR);
  v17 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v58 = &v50[-v18];
  v19 = type metadata accessor for Color.RGBColorSpace();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v50[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v50[-v27];
  v29 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel);
  v30 = *(v29 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode);
  if (*(v29 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode))
  {
    v56 = v26;
    if (v30 == 1)
    {
      v65 = a2 & 1;
      v66 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
      State.projectedValue.getter();
      v52 = v63;
      v53 = v62;
      v51 = v64;
      v31 = type metadata accessor for CoveragePointCloudFullView();
      v32 = v31[5];
      *(v28 + v32) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for DataModel(0);
      lazy protocol witness table accessor for type FreeformFullView and conformance FreeformFullView(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel);
      v54 = a5;

      *v28 = ObservedObject.init(wrappedValue:)();
      v28[1] = v33;
      v34 = v28 + v31[6];
      v35 = v52;
      *v34 = v53;
      *(v34 + 1) = v35;
      v34[16] = v51;
      *(v28 + v31[8]) = 0;
      v36 = v55;
      *(v28 + v31[9]) = v55;
      v37 = *(v29 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_fullscreenCoveragePointsRenderer);
      *(v28 + v31[7]) = v37;
      *(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGMd, &_s7SwiftUI6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGMR) + 52)) = v36;
      (*(v20 + 104))(v23, *MEMORY[0x277CE0EE0], v19);
      v38 = v37;
      v39 = Color.init(_:white:opacity:)();
      v40 = static Edge.Set.all.getter();
      v41 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGMR) + 36);
      *v41 = v39;
      v41[8] = v40;
      v42 = static SafeAreaRegions.all.getter();
      v43 = static Edge.Set.all.getter();
      v44 = v28 + *(v56 + 36);
      *v44 = v42;
      v44[8] = v43;
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v28, v16, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type FreeformFullView and conformance FreeformFullView(&lazy protocol witness table cache variable for type FreeformFullView and conformance FreeformFullView, type metadata accessor for FreeformFullView);
      v45 = v58;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v45, v13, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of PerspectiveCameraComponent?(v45, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMR);
      return outlined destroy of PerspectiveCameraComponent?(v28, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
    }

    else
    {
      type metadata accessor for DataModel(0);
      lazy protocol witness table accessor for type FreeformFullView and conformance FreeformFullView(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel);

      *v10 = ObservedObject.init(wrappedValue:)();
      v10[1] = v47;
      v48 = *(v59 + 20);
      *(v10 + v48) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
      swift_storeEnumTagMultiPayload();
      outlined init with copy of FreeformFullView(v10, v16);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type FreeformFullView and conformance FreeformFullView(&lazy protocol witness table cache variable for type FreeformFullView and conformance FreeformFullView, type metadata accessor for FreeformFullView);
      v49 = v58;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v49, v13, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of PerspectiveCameraComponent?(v49, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMR);
      return outlined destroy of FreeformFullView(v10);
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView> and conformance <> _ConditionalContent<A, B>();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t closure #2 in ObjectCapturePointCloudView.body.getter(uint64_t a1)
{
  v1 = *(*(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel) + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraFrustumRendererForShots);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;

  CameraFrustumRendererForShots.showShotLocations.didset(v2);
}

uint64_t partial apply for closure #2 in ObjectCapturePointCloudView.body.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return closure #2 in ObjectCapturePointCloudView.body.getter(*(v0 + 16));
}

uint64_t protocol witness for View.body.getter in conformance ObjectCapturePointCloudView@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = static Alignment.center.getter();
  a1[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA19_ConditionalContentVyAIyAA08ModifiedI0VyAKyAA6IDViewVy012_RealityKit_aB0022CoveragePointCloudFullD0VSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA024_SafeAreaRegionsIgnoringG0VGAN08FreeformqD0VGAA05EmptyD0VGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA19_ConditionalContentVyAIyAA08ModifiedI0VyAKyAA6IDViewVy012_RealityKit_aB0022CoveragePointCloudFullD0VSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA024_SafeAreaRegionsIgnoringG0VGAN08FreeformqD0VGAA05EmptyD0VGGMR);
  closure #1 in ObjectCapturePointCloudView.body.getter(v3, v4, v6, v5, a1 + *(v8 + 44));
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyAGyACyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0VGAA05EmptyN0VGGAA017_AppearanceActionQ0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyAGyACyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0VGAA05EmptyN0VGGAA017_AppearanceActionQ0VGMR) + 36));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = closure #2 in ObjectCapturePointCloudView.body.getterpartial apply;
  v10[3] = v9;
}

uint64_t ObjectCapturePointCloudView.showShotLocations(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(*(*v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI20ObjectCaptureSession_unsafeModel) + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraFrustumRendererForShots);
  v9 = *(v8 + 24);
  *(v8 + 24) = a1;

  CameraFrustumRendererForShots.showShotLocations.didset(v9);

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
}

uint64_t getEnumTagSinglePayload for ObjectCapturePointCloudView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for ObjectCapturePointCloudView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView>, EmptyView>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView>, EmptyView>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView>, EmptyView>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyAGyACyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0VGAA05EmptyN0VGGAA017_AppearanceActionQ0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyAGyACyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0VGAA05EmptyN0VGGAA017_AppearanceActionQ0VGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type ZStack<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView>, EmptyView>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0VGAA05EmptyN0VGGMd, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAEyAA08ModifiedE0VyAGyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAJ08FreeformmN0VGAA05EmptyN0VGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<_ConditionalContent<_ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView>, EmptyView>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGAH08FreeformlM0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type FreeformFullView and conformance FreeformFullView(&lazy protocol witness table cache variable for type FreeformFullView and conformance FreeformFullView, type metadata accessor for FreeformFullView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout>, FreeformFullView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type IDView<CoveragePointCloudFullView, Int> and conformance IDView<A, B>, &_s7SwiftUI6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGMd, &_s7SwiftUI6IDViewVy012_RealityKit_aB026CoveragePointCloudFullViewVSiGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IDView<CoveragePointCloudFullView, Int>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type FreeformFullView and conformance FreeformFullView(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t key path setter for EnvironmentValues.colorScheme : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t outlined init with copy of FreeformFullView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FreeformFullView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of FreeformFullView(uint64_t a1)
{
  v2 = type metadata accessor for FreeformFullView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FreeformMeshManager.init(config:)()
{
  v1 = v0;
  *(v0 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v0 + 72) = v2;
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
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_23B824000, v4, v5, "Initialized MeshManager with configuration: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x23EEB0B70](v7, -1, -1);
    MEMORY[0x23EEB0B70](v6, -1, -1);
  }

  return v1;
}

Swift::Void __swiftcall FreeformMeshManager.add(meshAnchors:)(Swift::OpaquePointer meshAnchors)
{
  v3 = type metadata accessor for FreeformMeshManager.MeshAnchor();
  v85 = *(v3 - 8);
  v4 = *(v85 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v89 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v76 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v84 = &v69 - v10;
  isUniquelyReferenced_nonNull_native = type metadata accessor for UUID();
  v74 = *(isUniquelyReferenced_nonNull_native - 8);
  v12 = *(v74 + 64);
  v13 = MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v90 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v69 - v16;
  MEMORY[0x28223BE20](v15);
  v86 = &v69 - v18;
  v94 = v1;
  v70 = *(v1 + 72);
  os_unfair_lock_lock(v70 + 4);
  if (one-time initialization token for logger != -1)
  {
LABEL_28:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, logger);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v72 = v17;
  if (v22)
  {
    v23 = isUniquelyReferenced_nonNull_native;
    v24 = swift_slowAlloc();
    *v24 = 134349056;
    *(v24 + 4) = *(meshAnchors._rawValue + 2);

    _os_log_impl(&dword_23B824000, v20, v21, "Received mesh update with %{public}ld anchors", v24, 0xCu);
    v25 = v24;
    isUniquelyReferenced_nonNull_native = v23;
    MEMORY[0x23EEB0B70](v25, -1, -1);
  }

  else
  {
  }

  v26 = *(meshAnchors._rawValue + 2);
  v27 = v86;
  if (!v26)
  {
LABEL_25:
    os_unfair_lock_unlock(v70 + 4);
    return;
  }

  v28 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor();
  v29 = *(v28 - 8);
  meshAnchors._rawValue = meshAnchors._rawValue + ((*(v29 + 80) + 32) & ~*(v29 + 80));
  v30 = swift_beginAccess();
  v31 = *(v29 + 16);
  v29 += 16;
  v91 = v31;
  v32 = (v74 + 8);
  v83 = (v85 + 56);
  v71 = v85 + 48;
  v80 = (v29 - 8);
  v77 = (v29 + 40);
  v73 = v74 + 16;
  v33 = *(v29 + 48);
  v79 = *(v29 + 56);
  v92 = v29;
  v82 = v33;
  v78 = v3;
  v81 = v28;
  v75 = (v74 + 8);
  while (1)
  {
    MEMORY[0x28223BE20](v30);
    v36 = &v69 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    v91(v36, meshAnchors._rawValue, v28);
    ObjectCaptureSession.Mesh.Anchor.identifier.getter();
    v37 = *(v94 + 16);
    v38 = *(v37 + 16);
    v93 = &v69;
    if (v38)
    {

      v39 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
      if (v40)
      {
        v41 = v85;
        v42 = isUniquelyReferenced_nonNull_native;
        v43 = v84;
        outlined init with copy of FreeformMeshManager.MeshAnchor(*(v37 + 56) + *(v85 + 72) * v39, v84);
        rawValue = *v32;
        rawValue(v27, v42);

        (*(v41 + 56))(v43, 0, 1, v3);
        outlined destroy of PerspectiveCameraComponent?(v43, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
        v44 = v72;
        ObjectCaptureSession.Mesh.Anchor.identifier.getter();
        v87 = FreeformMeshManager.meshAnchors.modify();
        v45 = specialized Dictionary.subscript.modify(v95);
        v47 = v46;
        if ((*(v41 + 48))(v46, 1, v3))
        {
          (v45)(v95, 0);
          rawValue(v44, v42);
          (v87)(v96, 0);
          isUniquelyReferenced_nonNull_native = v42;
          v27 = v86;
          v28 = v81;
        }

        else
        {
          v67 = *(v78 + 24);
          outlined destroy of PerspectiveCameraComponent?(v47 + v67, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
          v28 = v81;
          v91((v47 + v67), v36, v81);
          v68 = v47 + v67;
          v3 = v78;
          (*v77)(v68, 0, 1, v28);
          (v45)(v95, 0);
          rawValue(v44, v42);
          (v87)(v96, 0);
          isUniquelyReferenced_nonNull_native = v42;
          v27 = v86;
        }

        goto LABEL_9;
      }
    }

    rawValue = meshAnchors._rawValue;
    meshAnchors._rawValue = v26;
    v17 = isUniquelyReferenced_nonNull_native;
    v87 = *v32;
    (v87)(v27, isUniquelyReferenced_nonNull_native);
    v48 = v84;
    (*v83)(v84, 1, 1, v3);
    outlined destroy of PerspectiveCameraComponent?(v48, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
    v49 = v90;
    ObjectCaptureSession.Mesh.Anchor.identifier.getter();
    v50 = *v77;
    v51 = v3;
    v52 = v28;
    v53 = v76;
    (*v77)(v76, 1, 1, v52);
    v50(v53 + v51[5], 1, 1, v52);
    v54 = v51[6];
    v91((v53 + v54), v36, v52);
    v50(v53 + v54, 0, 1, v52);
    *(v53 + v51[7]) = 0;
    v3 = v94;
    swift_beginAccess();
    outlined init with take of FreeformMeshManager.MeshAnchor(v53, v89);
    v55 = *(v3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95[0] = *(v3 + 16);
    v56 = v95[0];
    *(v3 + 16) = 0x8000000000000000;
    v58 = specialized __RawDictionaryStorage.find<A>(_:)(v49);
    v59 = v56[2];
    v60 = (v57 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v3 = v57;
    if (v56[3] >= v61)
    {
      v27 = v86;
      v26 = meshAnchors._rawValue;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        v56 = v95[0];
      }

      goto LABEL_21;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v61, isUniquelyReferenced_nonNull_native);
    v56 = v95[0];
    v62 = specialized __RawDictionaryStorage.find<A>(_:)(v90);
    v27 = v86;
    if ((v3 & 1) != (v63 & 1))
    {
      break;
    }

    v58 = v62;
    v26 = meshAnchors._rawValue;
LABEL_21:
    isUniquelyReferenced_nonNull_native = v17;
    meshAnchors._rawValue = rawValue;
    v32 = v75;
    if (v3)
    {
      outlined assign with take of FreeformMeshManager.MeshAnchor(v89, v56[7] + *(v85 + 72) * v58);
      (v87)(v90, v17);
    }

    else
    {
      v56[(v58 >> 6) + 8] |= 1 << v58;
      v17 = v90;
      (*(v74 + 16))(v56[6] + *(v74 + 72) * v58, v90, isUniquelyReferenced_nonNull_native);
      outlined init with take of FreeformMeshManager.MeshAnchor(v89, v56[7] + *(v85 + 72) * v58);
      (v87)(v17, isUniquelyReferenced_nonNull_native);
      v64 = v56[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_27;
      }

      v56[2] = v66;
    }

    v34 = *(v94 + 16);
    *(v94 + 16) = v56;

    swift_endAccess();
    v3 = v78;
    v28 = v81;
LABEL_9:
    v30 = (*v80)(v36, v28);
    meshAnchors._rawValue = meshAnchors._rawValue + v79;
    if (!--v26)
    {
      goto LABEL_25;
    }
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void (*specialized Dictionary.subscript.modify(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = type metadata accessor for UUID();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = specialized Dictionary._Variant.subscript.modify(v4, v9);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void FreeformMeshManager.advanceWithRemoval()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v323 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v323 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v351[0] = &v323 - v11;
  MEMORY[0x28223BE20](v10);
  v357 = &v323 - v12;
  v379 = type metadata accessor for FreeformMeshManager.MeshAnchor();
  v372 = *(v379 - 1);
  v13 = *(v372 + 64);
  v14 = MEMORY[0x28223BE20](v379);
  v16 = (&v323 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v358 = &v323 - v17;
  v18 = type metadata accessor for UUID();
  v364 = *(v18 - 8);
  v19 = *(v364 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v346 = &v323 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v342 = &v323 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v323 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v335 = &v323 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = (&v323 - v30);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = (&v323 - v33);
  v35 = MEMORY[0x28223BE20](v32);
  v328 = &v323 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v327 = &v323 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v323 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v331 = &v323 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v330 = &v323 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v329 = &v323 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v380 = &v323 - v49;
  MEMORY[0x28223BE20](v48);
  v362 = &v323 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetSgMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetSgMR);
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v51 - 8);
  v55 = &v323 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v53);
  v347 = &v323 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v355 = (&v323 - v59);
  MEMORY[0x28223BE20](v58);
  v354.i64[0] = &v323 - v60;
  if (one-time initialization token for logger == -1)
  {
    goto LABEL_2;
  }

  while (2)
  {
    swift_once();
LABEL_2:
    v332 = v41;
    v333 = v34;
    v334 = v31;
    v341 = v26;
    v343 = v9;
    v348 = v55;
    v349 = v6;
    v61 = type metadata accessor for Logger();
    v351[1] = __swift_project_value_buffer(v61, logger);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_23B824000, v62, v63, "Advance is updating mesh anchors...", v64, 2u);
      MEMORY[0x23EEB0B70](v64, -1, -1);
    }

    swift_beginAccess();
    v65 = *(v1 + 16);
    v55 = (v65 + 64);
    v66 = 1 << *(v65 + 32);
    v67 = -1;
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    v68 = v67 & *(v65 + 64);
    v9 = ((v66 + 63) >> 6);
    v360 = (v364 + 16);
    v375 = (v364 + 32);
    v373 = (v372 + 56);
    v366 = v372 + 48;
    v374 = (v364 + 8);
    v350 = v65;

    v340 = 0;
    v365 = 0;
    v363 = 0;
    v41 = 0;
    v26 = &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMd;
    v31 = &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMR;
    *&v69 = 136446210;
    v345 = v69;
    v361 = v1;
    v1 = v68;
    v376 = v18;
    v377.i64[0] = v16;
    v34 = v355;
    v353 = v55;
    v352 = v9;
    while (1)
    {
      if (!v1)
      {
        if (v9 <= (v41 + 1))
        {
          v72 = (v41 + 1);
        }

        else
        {
          v72 = v9;
        }

        v6 = (v72 - 1);
        while (1)
        {
          v71 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            break;
          }

          if (v71 >= v9)
          {
            v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMR);
            (*(*(v128 - 8) + 56))(v34, 1, 1, v128);
            v371 = 0;
            v41 = v6;
            goto LABEL_21;
          }

          v1 = *&v55[8 * v71];
          ++v41;
          if (v1)
          {
            v41 = v71;
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_127;
      }

      v71 = v41;
LABEL_20:
      v371 = ((v1 - 1) & v1);
      v73 = __clz(__rbit64(v1)) | (v71 << 6);
      v74 = v350;
      v75 = v364;
      v76 = v362;
      (*(v364 + 16))(v362, *(v350 + 48) + *(v364 + 72) * v73, v18);
      v9 = v358;
      outlined init with copy of FreeformMeshManager.MeshAnchor(*(v74 + 56) + *(v372 + 72) * v73, v358);
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMR);
      v78 = *(v77 + 48);
      (*(v75 + 32))(v34, v76, v18);
      outlined init with take of FreeformMeshManager.MeshAnchor(v9, v34 + v78);
      (*(*(v77 - 8) + 56))(v34, 0, 1, v77);
LABEL_21:
      v79 = v354.i64[0];
      outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v34, v354.i64[0]);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMd, &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMR);
      v80 = *(v26 - 1);
      v1 = v80 + 48;
      v31 = *(v80 + 48);
      if ((v31)(v79, 1, v26) == 1)
      {
        break;
      }

      v370 = v41;
      v81 = *(v26 + 12);
      (*v375)(v380, v79, v18);
      outlined init with take of FreeformMeshManager.MeshAnchor(v79 + v81, v377.i64[0]);
      v82 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor();
      v369.i64[0] = &v323;
      v381 = *(v82 - 8);
      v26 = *(v381 + 64);
      MEMORY[0x28223BE20](v82);
      v83 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
      v84 = v379[6];
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
      v86 = *(*(v85 - 8) + 64);
      v87 = (v86 + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v85 - 8);
      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v377.i64[0] + v84, &v323 - v87, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
      v88 = *(v381 + 48);
      v378 = v82;
      v89 = v82;
      v90 = v381 + 48;
      v368.i64[0] = v88;
      v91 = v88(&v323 - v87, 1, v89);
      v356.i64[0] = v86;
      *&v367 = v90;
      if (v91 == 1)
      {
        v92 = outlined destroy of PerspectiveCameraComponent?(&v323 - v87, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
        v369.i64[0] = &v323;
        v93 = MEMORY[0x28223BE20](v92);
        v94 = &v323 - v83;
        MEMORY[0x28223BE20](v93);
        v16 = (&v323 - v87);
        v18 = v361;
        v95 = v361[1].i64[0];
        if (*(v95 + 16))
        {
          v96 = v361[1].i64[0];

          v97 = specialized __RawDictionaryStorage.find<A>(_:)(v380);
          if (v98)
          {
            outlined init with copy of FreeformMeshManager.MeshAnchor(*(v95 + 56) + *(v372 + 72) * v97, v357);
            v99 = 0;
          }

          else
          {
            v99 = 1;
          }

          v41 = v370;
        }

        else
        {
          v99 = 1;
          v41 = v370;
        }

        v9 = *v373;
        v100 = v357;
        v101 = v99;
        v102 = v379;
        (*v373)(v357, v101, 1, v379);
        *&v359 = *v366;
        if ((v359)(v100, 1, v102))
        {
          outlined destroy of PerspectiveCameraComponent?(v100, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
          (*(v381 + 56))(v16, 1, 1, v378);
        }

        else
        {
          outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v100 + v102[5], v16, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
          outlined destroy of PerspectiveCameraComponent?(v100, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
          v6 = v378;
          if ((v368.i64[0])(v16, 1, v378) != 1)
          {
            (*(v381 + 32))(v94, v16, v6);
            v34 = v94;
            if (ObjectCaptureSession.Mesh.Anchor.didRemove.getter())
            {
              swift_beginAccess();
              v55 = *(v18 + 16);
              v103 = specialized __RawDictionaryStorage.find<A>(_:)(v380);
              v31 = v379;
              if (v104)
              {
                v6 = v103;
                v105 = *(v18 + 16);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v55 = *(v18 + 16);
                v382 = v55;
                v107 = v351[0];
                if (!isUniquelyReferenced_nonNull_native)
                {
                  specialized _NativeDictionary.copy()();
                  v55 = v382;
                }

                (*(v364 + 8))(*(v55 + 6) + *(v364 + 72) * v6, v376);
                outlined init with take of FreeformMeshManager.MeshAnchor(*(v55 + 7) + *(v372 + 72) * v6, v107);
                specialized _NativeDictionary._delete(at:)(v6, v55);
                v108 = 0;
                *(v18 + 16) = v55;
              }

              else
              {
                v108 = 1;
                v107 = v351[0];
              }

              (v9)(v107, v108, 1, v31);
              outlined destroy of PerspectiveCameraComponent?(v107, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
              v109 = swift_endAccess();
              v365 = v363 + 1;
              v1 = v378;
              if (__OFADD__(v363, 1))
              {
                goto LABEL_128;
              }

              v370 = &v323;
              MEMORY[0x28223BE20](v109);
              v110 = &v323 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
              v111 = v381;
              (*(v381 + 16))(v110, v34, v1);
              v16 = Logger.logObject.getter();
              v112 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v16, v112))
              {
                v113 = swift_slowAlloc();
                v368.i64[0] = v34;
                v114 = v113;
                v363 = v113;
                v115 = swift_slowAlloc();
                v383 = v115;
                *v114 = v345;
                v116 = v362;
                ObjectCaptureSession.Mesh.Anchor.identifier.getter();
                lazy protocol witness table accessor for type UUID and conformance UUID();
                v117 = v376;
                *&v359 = dispatch thunk of CustomStringConvertible.description.getter();
                v118 = v1;
                v120 = v119;
                *&v367 = *v374;
                (v367)(v116, v117);
                v121 = *(v111 + 8);
                v122 = v110;
                v123 = v118;
                v121(v122, v118);
                v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v359, v120, &v383);

                v125 = v363;
                *(v363 + 4) = v124;
                v126 = v112;
                v127 = v125;
                _os_log_impl(&dword_23B824000, v16, v126, "Removed mesh anchor %{public}s", v125, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v115);
                MEMORY[0x23EEB0B70](v115, -1, -1);
                MEMORY[0x23EEB0B70](v127, -1, -1);

                v121(v368.i64[0], v123);
                v18 = v117;
                outlined destroy of FreeformMeshManager.MeshAnchor(v377.i64[0]);
                (v367)(v380, v117);
              }

              else
              {

                v70 = *(v111 + 8);
                v70(v110, v1);
                v70(v34, v1);
                outlined destroy of FreeformMeshManager.MeshAnchor(v377.i64[0]);
                v18 = v376;
                (*v374)(v380, v376);
              }

              v34 = v355;
              v55 = v353;
              v1 = v371;
              v363 = v365;
              goto LABEL_9;
            }

            (*(v381 + 8))(v94, v378);
            goto LABEL_53;
          }
        }

        outlined destroy of PerspectiveCameraComponent?(v16, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
LABEL_53:
        v166 = v379;
        v167 = *v360;
        v168 = v341;
        v169 = v376;
        (*v360)(v341, v380);
        v170 = FreeformMeshManager.meshAnchors.modify();
        v171 = specialized Dictionary.subscript.modify(&v382);
        v173 = v172;
        if (!(v359)(v172, 1, v166))
        {
          v174 = v166[5];
          outlined destroy of PerspectiveCameraComponent?(v173 + v174, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
          v175 = v173 + v174;
          v18 = v361;
          (*(v381 + 56))(v175, 1, 1, v378);
        }

        (v171)(&v382, 0);
        v344 = *v374;
        v344(v168, v169);
        (v170)(&v383, 0);
        v176 = v342;
        v167(v342, v380, v169);
        v177 = v176;
        v178 = FreeformMeshManager.meshAnchors.modify();
        v179 = specialized Dictionary.subscript.modify(&v382);
        v181 = v180;
        v182 = (v359)(v180, 1, v166);
        v34 = v355;
        if (!v182)
        {
          *(v181 + v166[7]) = 0;
        }

        (v179)(&v382, 0);
        v344(v177, v169);
        v183 = (v178)(&v383, 0);
        v140 = v26;
        goto LABEL_76;
      }

      v339 = v26;
      v129 = v378;
      (*(v381 + 32))(&v323 - v83, &v323 - v87, v378);
      v130 = ObjectCaptureSession.Mesh.Anchor.didRemove.getter();
      v338 = &v323 - v83;
      if ((v130 & 1) == 0)
      {
        *&v359 = &v323;
        v184 = v356.i64[0];
        MEMORY[0x28223BE20](v130);
        v185 = (v184 + 15) & 0xFFFFFFFFFFFFFFF0;
        v186 = v377.i64[0];
        outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v377.i64[0], &v323 - v185, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
        v187 = v368.i64[0];
        v188 = (v368.i64[0])(&v323 - v185, 1, v129);
        v189 = outlined destroy of PerspectiveCameraComponent?(&v323 - v185, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
        v41 = v370;
        v140 = v339;
        if (v188 == 1)
        {
          *&v359 = &v323;
          v190 = v379[5];
          MEMORY[0x28223BE20](v189);
          outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v186 + v191, &v323 - v185, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
          v192 = v187(&v323 - v185, 1, v129);
          outlined destroy of PerspectiveCameraComponent?(&v323 - v185, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
          v193 = v360;
          v194 = *v360;
          if (v192 == 1)
          {
            v337 = (v360 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
            v195 = v327;
            v196 = v376;
            (v194)(v327, v380);
            v18 = v361;
            v197 = FreeformMeshManager.meshAnchors.modify();
            v198 = specialized Dictionary.subscript.modify(&v382);
            v200 = v199;
            v201 = *v366;
            v336 = v366 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
            *&v359 = v201;
            if (!v201(v199, 1, v379))
            {
              *(v200 + v379[7]) = 1;
            }

LABEL_65:
            (v198)(&v382, 0);
            v344 = *v374;
            v344(v195, v196);
            (v197)(&v383, 0);
            v205 = v333;
            v194(v333, v380, v196);
            v206 = FreeformMeshManager.meshAnchors.modify();
            v207 = specialized Dictionary.subscript.modify(&v382);
            v209 = v208;
            if (!(v359)(v208, 1, v379))
            {
              outlined assign with copy of ObjectCaptureSession.Mesh.Anchor?(v377.i64[0], v209 + v379[5]);
            }

            (v207)(&v382, 0);
            v344(v205, v196);
            (v206)(&v383, 0);
            v210 = v334;
            v194(v334, v380, v196);
            v211 = FreeformMeshManager.meshAnchors.modify();
            v212 = specialized Dictionary.subscript.modify(&v382);
            v214 = v213;
            if (!(v359)(v213, 1, v379))
            {
              outlined destroy of PerspectiveCameraComponent?(v214, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
              v215 = v381;
              v216 = v194;
              v217 = v378;
              (*(v381 + 16))(v214, v338, v378);
              v218 = v215;
              v140 = v339;
              v219 = v217;
              v194 = v216;
              (*(v218 + 56))(v214, 0, 1, v219);
            }

            (v212)(&v382, 0);
            v344(v210, v196);
            (v211)(&v383, 0);
            v220 = v335;
            v194(v335, v380, v196);
            v221 = FreeformMeshManager.meshAnchors.modify();
            v222 = specialized Dictionary.subscript.modify(&v382);
            v224 = v223;
            v225 = v379;
            if ((v359)(v223, 1, v379))
            {
              (v222)(&v382, 0);
              v344(v220, v196);
              (v221)(&v383, 0);
              v226 = v378;
              v227 = v381;
            }

            else
            {
              v232 = v225[6];
              outlined destroy of PerspectiveCameraComponent?(v224 + v232, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
              v227 = v381;
              v233 = v224 + v232;
              v18 = v361;
              v234 = v378;
              (*(v381 + 56))(v233, 1, 1, v378);
              (v222)(&v382, 0);
              v344(v220, v196);
              (v221)(&v383, 0);
              v226 = v234;
            }

            v183 = (*(v227 + 8))(v338, v226);
            v34 = v355;
            if (__OFADD__(v340, 1))
            {
              __break(1u);
              return;
            }

            ++v340;
            goto LABEL_76;
          }
        }

        else
        {
          v193 = v360;
          v194 = *v360;
        }

        v18 = v361;
        v195 = v328;
        v337 = (v193 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
        v196 = v376;
        v194(v328, v380, v376);
        v197 = FreeformMeshManager.meshAnchors.modify();
        v198 = specialized Dictionary.subscript.modify(&v382);
        v203 = v202;
        v204 = *v366;
        v336 = v366 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        *&v359 = v204;
        if (!v204(v202, 1, v379))
        {
          *(v203 + v379[7]) = 0;
        }

        goto LABEL_65;
      }

      v131 = *v360;
      v132 = v329;
      v133 = v376;
      (*v360)(v329, v380, v376);
      v18 = v361;
      v134 = FreeformMeshManager.meshAnchors.modify();
      v135 = specialized Dictionary.subscript.modify(&v382);
      v137 = v136;
      v138 = v379;
      *&v359 = *v366;
      v139 = (v359)(v136, 1, v379);
      v41 = v370;
      v140 = v339;
      if (!v139)
      {
        *(v137 + v138[7]) = 0;
      }

      (v135)(&v382, 0);
      v344 = *v374;
      v344(v132, v133);
      (v134)(&v383, 0);
      v141 = v331;
      v142 = v330;
      v131(v330, v380, v133);
      v337 = FreeformMeshManager.meshAnchors.modify();
      v143 = specialized Dictionary.subscript.modify(&v382);
      v145 = v144;
      if (!(v359)(v144, 1, v138))
      {
        v146 = v138[5];
        outlined destroy of PerspectiveCameraComponent?(v145 + v146, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
        v147 = v381;
        v148 = v131;
        v149 = v133;
        v150 = v378;
        (*(v381 + 16))(v145 + v146, v338, v378);
        v151 = v147;
        v140 = v339;
        v152 = v145 + v146;
        v18 = v361;
        v153 = v150;
        v133 = v149;
        v131 = v148;
        v138 = v379;
        (*(v151 + 56))(v152, 0, 1, v153);
      }

      (v143)(&v382, 0);
      v344(v142, v133);
      v337(&v383, 0);
      v131(v141, v380, v133);
      v154 = FreeformMeshManager.meshAnchors.modify();
      v155 = specialized Dictionary.subscript.modify(&v382);
      v157 = v156;
      if (!(v359)(v156, 1, v138))
      {
        outlined destroy of PerspectiveCameraComponent?(v157, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
        (*(v381 + 56))(v157, 1, 1, v378);
      }

      (v155)(&v382, 0);
      v344(v141, v133);
      (v154)(&v383, 0);
      v158 = v332;
      v131(v332, v380, v133);
      v159 = FreeformMeshManager.meshAnchors.modify();
      v160 = specialized Dictionary.subscript.modify(&v382);
      v162 = v161;
      v163 = v379;
      if ((v359)(v161, 1, v379))
      {
        (v160)(&v382, 0);
        v344(v158, v133);
        (v159)(&v383, 0);
        v164 = v378;
        v165 = v381;
      }

      else
      {
        v228 = v163[6];
        outlined destroy of PerspectiveCameraComponent?(v162 + v228, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
        v229 = v133;
        v165 = v381;
        v230 = v162 + v228;
        v18 = v361;
        v231 = v378;
        (*(v381 + 56))(v230, 1, 1, v378);
        (v160)(&v382, 0);
        v344(v158, v229);
        (v159)(&v383, 0);
        v164 = v231;
      }

      v183 = (*(v165 + 8))(v338, v164);
      v34 = v355;
LABEL_76:
      v235 = MEMORY[0x28223BE20](v183);
      v236 = &v323 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = &v323;
      MEMORY[0x28223BE20](v235);
      v238 = &v323 - ((v237 + 15) & 0xFFFFFFFFFFFFFFF0);
      v239 = *(v18 + 16);
      if (*(v239 + 16))
      {
        v240 = *(v18 + 16);

        v241 = specialized __RawDictionaryStorage.find<A>(_:)(v380);
        if (v242)
        {
          outlined init with copy of FreeformMeshManager.MeshAnchor(*(v239 + 56) + *(v372 + 72) * v241, v343);
          v243 = 0;
        }

        else
        {
          v243 = 1;
        }
      }

      else
      {
        v243 = 1;
      }

      v244 = v343;
      v245 = v243;
      v246 = v379;
      (*v373)(v343, v245, 1, v379);
      if ((v359)(v244, 1, v246))
      {
        outlined destroy of FreeformMeshManager.MeshAnchor(v377.i64[0]);
        v18 = v376;
        v344(v380, v376);
        outlined destroy of PerspectiveCameraComponent?(v244, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
        (*(v381 + 56))(v238, 1, 1, v378);
LABEL_86:
        v55 = v353;
        v1 = v371;
        outlined destroy of PerspectiveCameraComponent?(v238, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
        goto LABEL_9;
      }

      outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v244, v238, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
      outlined destroy of PerspectiveCameraComponent?(v244, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
      v247 = v378;
      if ((v368.i64[0])(v238, 1, v378) == 1)
      {
        outlined destroy of FreeformMeshManager.MeshAnchor(v377.i64[0]);
        v18 = v376;
        v344(v380, v376);
        goto LABEL_86;
      }

      v370 = &v323;
      v248 = v381;
      (*(v381 + 32))(v236, v238, v247);
      specialized FreeformMeshManager.computeBoundingBoxWorld(for:)();
      v55 = v353;
      v1 = v371;
      v249.i32[3] = 0;
      v250.i32[3] = 0;
      if (*(v18 + 64))
      {
        v251 = vminnmq_f32(v249, v250);
        v251.i32[3] = v325.i32[3];
        v369 = v251;
        v252 = vmaxnmq_f32(v249, v250);
        v252.i32[3] = v326;
        v368 = v252;
        BoundingBox.init(min:max:)();
        v367 = v253;
        v359 = v254;
        (*(v248 + 8))(v236, v247);
        outlined destroy of FreeformMeshManager.MeshAnchor(v377.i64[0]);
        v255 = v376;
        v344(v380, v376);
        v256 = v359;
        *(v18 + 32) = v367;
        *(v18 + 48) = v256;
        *(v18 + 64) = 0;
        v18 = v255;
        v325 = v369;
        v257 = v368;
        v258 = &v354;
      }

      else
      {
        v259 = vminnmq_f32(v249, v250);
        v259.i32[3] = 0;
        v260 = *(v18 + 32);
        v260.i32[3] = 0;
        v261 = vminnmq_f32(v259, v260);
        v261.i32[3] = v323.i32[3];
        v369 = v261;
        v262 = vmaxnmq_f32(v249, v250);
        v262.i32[3] = 0;
        v263 = *(v18 + 48);
        v263.i32[3] = 0;
        v264 = vmaxnmq_f32(v262, v263);
        v264.i32[3] = v324;
        v368 = v264;
        BoundingBox.init(min:max:)();
        v367 = v265;
        v359 = v266;
        (*(v248 + 8))(v236, v247);
        outlined destroy of FreeformMeshManager.MeshAnchor(v377.i64[0]);
        v267 = v376;
        v344(v380, v376);
        v268 = v359;
        *(v18 + 32) = v367;
        *(v18 + 48) = v268;
        *(v18 + 64) = 0;
        v18 = v267;
        v323 = v369;
        v257 = v368;
        v258 = v351;
      }

      v258[-16] = v257;
LABEL_9:
      v9 = v352;
      v26 = &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMd;
      v31 = &_s10Foundation4UUIDV3key_19_RealityKit_SwiftUI19FreeformMeshManagerC0I6AnchorV5valuetMR;
    }

    if (v365 < 1)
    {
      goto LABEL_123;
    }

    v269 = v361[1].i64[0];
    v18 = v269 + 64;
    v270 = 1 << *(v269 + 32);
    v271 = -1;
    if (v270 < 64)
    {
      v271 = ~(-1 << v270);
    }

    v41 = v271 & *(v269 + 64);
    v55 = ((v270 + 63) >> 6);
    v371 = (v80 + 56);
    v363 = v269;

    v6 = 0;
    v34 = &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd;
    v16 = &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR;
    v370 = v18;
    v369.i64[0] = v55;
    v368.i64[0] = v31;
    if (!v41)
    {
LABEL_99:
      if (v55 <= v6 + 1)
      {
        v273 = (v6 + 1);
      }

      else
      {
        v273 = v55;
      }

      v274 = (v273 - 1);
      while (1)
      {
        v272 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v272 >= v55)
        {
          v41 = 0;
          v286 = 1;
          v6 = v274;
          v285 = v348;
          goto LABEL_108;
        }

        v41 = *(v18 + 8 * v272);
        ++v6;
        if (v41)
        {
          v6 = v272;
          goto LABEL_107;
        }
      }

LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
      continue;
    }

    break;
  }

  while (1)
  {
    v272 = v6;
LABEL_107:
    v275 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v276 = v275 | (v272 << 6);
    v277 = v363;
    v278 = v364;
    v279 = v362;
    v280 = v376;
    (*(v364 + 16))(v362, *(v363 + 48) + *(v364 + 72) * v276, v376);
    v281 = *(v277 + 56) + *(v372 + 72) * v276;
    v282 = v358;
    outlined init with copy of FreeformMeshManager.MeshAnchor(v281, v358);
    v283 = *(v26 + 12);
    v284 = *(v278 + 32);
    v285 = v348;
    v284(v348, v279, v280);
    outlined init with take of FreeformMeshManager.MeshAnchor(v282, v285 + v283);
    v286 = 0;
LABEL_108:
    (*v371)(v285, v286, 1, v26);
    v287 = v347;
    outlined init with take of (key: UUID, value: FreeformMeshManager.MeshAnchor)?(v285, v347);
    if ((v31)(v287, 1, v26) == 1)
    {
      break;
    }

    outlined destroy of FreeformMeshManager.MeshAnchor(v287 + *(v26 + 12));
    v288 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor();
    v378 = &v323;
    v380 = *(v288 - 8);
    v381 = v288;
    v289 = *(v380 + 64);
    MEMORY[0x28223BE20](v288);
    *&v367 = &v323 - ((v290 + 15) & 0xFFFFFFFFFFFFFFF0);
    v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
    v292 = (*(*(v291 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v291 - 8);
    v9 = &v323 - v293;
    v294 = v376;
    v295 = v346;
    (*v375)(v346, v287, v376);
    v296 = v361[1].i64[0];
    v297 = *(v296 + 16);
    v377.i64[0] = &v323;
    if (v297)
    {

      v298 = specialized __RawDictionaryStorage.find<A>(_:)(v295);
      v18 = v370;
      if (v299)
      {
        outlined init with copy of FreeformMeshManager.MeshAnchor(*(v296 + 56) + *(v372 + 72) * v298, v349);
        (*v374)(v295, v376);

        v300 = 0;
      }

      else
      {

        (*v374)(v295, v376);
        v300 = 1;
      }
    }

    else
    {
      (*v374)(v295, v294);
      v300 = 1;
      v18 = v370;
    }

    v301 = v349;
    v302 = v379;
    (*v373)(v349, v300, 1, v379);
    v303 = (*v366)(v301, 1, v302);
    v304 = v380;
    if (v303)
    {
      outlined destroy of PerspectiveCameraComponent?(v301, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
      (*(v304 + 56))(v9, 1, 1, v381);
      v34 = &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd;
      v16 = &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR;
LABEL_97:
      outlined destroy of PerspectiveCameraComponent?(v9, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
      v55 = v369.i64[0];
      v31 = v368.i64[0];
      if (!v41)
      {
        goto LABEL_99;
      }

      continue;
    }

    v34 = &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd;
    v16 = &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR;
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v301, v9, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMd, &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR);
    outlined destroy of PerspectiveCameraComponent?(v301, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMd, &_s19_RealityKit_SwiftUI19FreeformMeshManagerC0F6AnchorVSgMR);
    v305 = v381;
    if ((*(v304 + 48))(v9, 1, v381) == 1)
    {
      goto LABEL_97;
    }

    (*(v304 + 32))(v367, v9, v305);
    specialized FreeformMeshManager.computeBoundingBoxWorld(for:)();
    v306 = v361;
    v307.i32[3] = 0;
    v308.i32[3] = 0;
    if (v361[4].i8[0])
    {
      v309 = vminnmq_f32(v307, v308);
      v309.i32[3] = v356.i32[3];
      v356 = v309;
      v310 = vmaxnmq_f32(v307, v308);
      v311 = &v380;
    }

    else
    {
      v312 = vminnmq_f32(v307, v308);
      v312.i32[3] = 0;
      v313 = v361[2];
      v313.i32[3] = 0;
      v314 = vminnmq_f32(v312, v313);
      v314.i32[3] = v354.i32[3];
      v354 = v314;
      v315 = vmaxnmq_f32(v307, v308);
      v315.i32[3] = 0;
      v316 = v361[3];
      v316.i32[3] = 0;
      v310 = vmaxnmq_f32(v315, v316);
      v311 = &v377;
    }

    v310.i32[3] = HIDWORD(*(v311 - 16));
    *(v311 - 16) = v310;
    BoundingBox.init(min:max:)();
    v377 = v317;
    v359 = v318;
    v16 = &_s6CoreOC20ObjectCaptureSessionC4MeshV6AnchorVSgMR;
    v31 = v368.i64[0];
    (*(v380 + 8))(v367, v381);
    v319 = v359;
    v306[2] = v377;
    v306[3] = v319;
    v306[4].i8[0] = 0;
    v55 = v369.i64[0];
    if (!v41)
    {
      goto LABEL_99;
    }
  }

LABEL_123:
  v320 = Logger.logObject.getter();
  v321 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v320, v321))
  {
    v322 = swift_slowAlloc();
    *v322 = 134349312;
    *(v322 + 4) = v340;
    *(v322 + 12) = 2050;
    *(v322 + 14) = v365;
    _os_log_impl(&dword_23B824000, v320, v321, "... done updating %{public}ld and removing %{public}ld mesh anchors.", v322, 0x16u);
    MEMORY[0x23EEB0B70](v322, -1, -1);
  }
}