id closure #1 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    return [a2 setStatus_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = xmmword_227FB4260;
  *(v4 + 16) = xmmword_227FB4190;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

void closure #2 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    outlined bridged method (mbnn) of @objc SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus.useCaseID.setter(v4, v5, a2, &selRef_setUseCaseID_);
  }

  else
  {
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v3 = xmmword_227FB41B0;
    *(v3 + 16) = xmmword_227FB41C0;
    *(v3 + 32) = 0xD00000000000001FLL;
    *(v3 + 40) = 0x8000000227FB6460;
    *(v3 + 48) = 2;
    swift_willThrow();
  }
}

uint64_t SELFEventProcessor.mapDownloadState(_:)(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 67109120;
      *(v4 + 4) = a1;
      _os_log_impl(&dword_227F43000, v2, v3, "Invalid download state value: %u", v4, 8u);
      MEMORY[0x22AAAF0A0](v4, -1, -1);
    }

    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v5 = a1;
    *(v5 + 8) = 0xD00000000000001FLL;
    *(v5 + 16) = 0x8000000227FB6460;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 48) = 1;
    swift_willThrow();
  }

  return a1;
}

void closure #3 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    outlined bridged method (mbnn) of @objc SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus.useCaseID.setter(v4, v5, a2, &selRef_setLastMobileAssetDownloadAttemptErrorDomain_);
  }

  else
  {
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v3 = 0xD000000000000020;
    *(v3 + 8) = 0x8000000227FB5520;
    *(v3 + 16) = xmmword_227FB41C0;
    *(v3 + 32) = 0xD00000000000001FLL;
    *(v3 + 40) = 0x8000000227FB6460;
    *(v3 + 48) = 2;
    swift_willThrow();
  }
}

void closure #4 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    outlined bridged method (mbnn) of @objc SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus.useCaseID.setter(v4, v5, a2, &selRef_setFailingSubsystemOperations_);
  }

  else
  {
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v3 = 0xD00000000000001ALL;
    *(v3 + 8) = 0x8000000227FB55B0;
    *(v3 + 16) = xmmword_227FB41C0;
    *(v3 + 32) = 0xD00000000000001FLL;
    *(v3 + 40) = 0x8000000227FB6460;
    *(v3 + 48) = 2;
    swift_willThrow();
  }
}

void closure #5 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    outlined bridged method (mbnn) of @objc SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus.useCaseID.setter(v4, v5, a2, &selRef_setSampledSubsystemOperation_);
  }

  else
  {
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v3 = 0xD000000000000019;
    *(v3 + 8) = 0x8000000227FB55D0;
    *(v3 + 16) = xmmword_227FB41C0;
    *(v3 + 32) = 0xD00000000000001FLL;
    *(v3 + 40) = 0x8000000227FB6460;
    *(v3 + 48) = 2;
    swift_willThrow();
  }
}

void closure #6 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    outlined bridged method (mbnn) of @objc SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus.useCaseID.setter(v4, v5, a2, &selRef_setSampledErrorDomain_);
  }

  else
  {
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v3 = 0xD000000000000012;
    *(v3 + 8) = 0x8000000227FB5610;
    *(v3 + 16) = xmmword_227FB41C0;
    *(v3 + 32) = 0xD00000000000001FLL;
    *(v3 + 40) = 0x8000000227FB6460;
    *(v3 + 48) = 2;
    swift_willThrow();
  }
}

void closure #7 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    outlined bridged method (mbnn) of @objc SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus.useCaseID.setter(v4, v5, a2, &selRef_setSampledErrorUnderlyingDomain_);
  }

  else
  {
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v3 = 0xD00000000000001CLL;
    *(v3 + 8) = 0x8000000227FB5670;
    *(v3 + 16) = xmmword_227FB41C0;
    *(v3 + 32) = 0xD00000000000001FLL;
    *(v3 + 40) = 0x8000000227FB6460;
    *(v3 + 48) = 2;
    swift_willThrow();
  }
}

void closure #8 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    outlined bridged method (mbnn) of @objc SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus.useCaseID.setter(v4, v5, a2, &selRef_setLastMobileAssetDownloadAttemptErrorAsset_);
  }

  else
  {
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v3 = 0xD00000000000001FLL;
    *(v3 + 8) = 0x8000000227FB54E0;
    *(v3 + 16) = xmmword_227FB41C0;
    *(v3 + 32) = 0xD00000000000001FLL;
    *(v3 + 40) = 0x8000000227FB6460;
    *(v3 + 48) = 2;
    swift_willThrow();
  }
}

id closure #9 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setSampledErrorCode_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000010;
  *(v4 + 8) = 0x8000000227FB55F0;
  *(v4 + 16) = xmmword_227FB41F0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #10 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setSampledErrorHash_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000010;
  *(v4 + 8) = 0x8000000227FB5630;
  *(v4 + 16) = xmmword_227FB41F0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #11 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setSampledErrorUnderlyingCode_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD00000000000001ALL;
  *(v4 + 8) = 0x8000000227FB5650;
  *(v4 + 16) = xmmword_227FB41F0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #12 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setCountRequiredAssets_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000013;
  *(v4 + 8) = 0x8000000227FB56F0;
  *(v4 + 16) = xmmword_227FB41F0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #13 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setLastMobileAssetDownloadAttemptErrorCode_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD00000000000001ELL;
  *(v4 + 8) = 0x8000000227FB5500;
  *(v4 + 16) = xmmword_227FB41F0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #14 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setCurrentSubscriptionHash_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000017;
  *(v4 + 8) = 0x8000000227FB54C0;
  *(v4 + 16) = xmmword_227FB41F0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #15 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    return [a2 setErrorCount_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = xmmword_227FB4270;
  *(v4 + 16) = xmmword_227FB41F0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #16 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastBootInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000011;
  *(v4 + 8) = 0x8000000227FB5000;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #17 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastAppleIntelligenceToggleInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000015;
  *(v4 + 8) = 0x8000000227FB4FC0;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #18 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastMobileAssetDownloadAttemptInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD00000000000001ELL;
  *(v4 + 8) = 0x8000000227FB5690;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #19 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastSubscriptionHashChangeInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD00000000000001FLL;
  *(v4 + 8) = 0x8000000227FB56B0;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #20 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastMobileAssetDownloadErrorInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD00000000000001CLL;
  *(v4 + 8) = 0x8000000227FB56D0;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #21 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    result = SELFEventProcessor.mapModeValue(_:)(v6[11]);
    if (!v2)
    {
      return [a2 setCurrentMode_];
    }
  }

  else
  {
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v5 = xmmword_227FB4280;
    *(v5 + 16) = xmmword_227FB41F0;
    *(v5 + 32) = 0xD00000000000001FLL;
    *(v5 + 40) = 0x8000000227FB6460;
    *(v5 + 48) = 2;
    return swift_willThrow();
  }

  return result;
}

id closure #22 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setInvocationsCountWhileNotAvailable_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD00000000000001CLL;
  *(v4 + 8) = 0x8000000227FB5710;
  *(v4 + 16) = xmmword_227FB41F0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #23 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceSubscriptionDownloadStatusCompleteInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD00000000000002BLL;
  *(v4 + 8) = 0x8000000227FB5750;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000227FB6460;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #24 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    result = SELFEventProcessor.mapSubscriptionDownloadStatusValue(_:)(v6[11]);
    if (!v2)
    {
      return [a2 setSubscriptionDownloadStatus_];
    }
  }

  else
  {
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v5 = 0xD00000000000001ALL;
    *(v5 + 8) = 0x8000000227FB5730;
    *(v5 + 16) = xmmword_227FB41F0;
    *(v5 + 32) = 0xD00000000000001FLL;
    *(v5 + 40) = 0x8000000227FB6460;
    *(v5 + 48) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t SELFEventProcessor.mapSubscriptionDownloadStatusValue(_:)(uint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 67109120;
      *(v4 + 4) = a1;
      _os_log_impl(&dword_227F43000, v2, v3, "UAFSchemaUAFSubscriptionDownloadStatus has an invalid raw value: %u", v4, 8u);
      MEMORY[0x22AAAF0A0](v4, -1, -1);
    }

    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v5 = a1;
    *(v5 + 8) = 0xD00000000000001FLL;
    *(v5 + 16) = 0x8000000227FB6460;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 48) = 9;
    swift_willThrow();
  }

  return a1;
}

unint64_t implicit closure #19 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(void *a1)
{
  v5[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus, 0x277D5A5F8);
  v5[0] = a1;
  v2 = a1;
  v3 = printDebugDescription(_:)(v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  return v3;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t _sypSg5value_SS9fieldNameSS12expectedTypexq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyypytIsegnrzo_6settertWOc(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSg5value_SS9fieldNameSS12expectedTypeyyc6settertMd, &_sypSg5value_SS9fieldNameSS12expectedTypeyyc6settertMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of SELFEventProcessor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SELFEventProcessor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SELFEventProcessor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SELFEventProcessor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_109_0();

  return MEMORY[0x2821FE8D8](v4, v5, v6);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@out (), @error @owned Error)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t outlined bridged method (pb) of @objc SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus.useCaseID.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t objectdestroy_103Tm()
{
  v1 = type metadata accessor for SELFEventProcessor();
  OUTLINED_FUNCTION_44(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);

  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_4(v7);
  (*(v8 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v6, v3 | 7);
}

void *partial apply for implicit closure #16 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)()
{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(*(v0 + 16));
}

void partial apply for closure #1 in OSLogArguments.append(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  closure #1 in OSLogArguments.append(_:)();
}

uint64_t type metadata completion function for SELFEventProcessor()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void outlined bridged method (mbnn) of @objc SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus.useCaseID.setter(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = MEMORY[0x22AAADFF0]();

  [a3 *a4];
}

void OUTLINED_FUNCTION_2_13()
{

  JUMPOUT(0x22AAAE070);
}

void OUTLINED_FUNCTION_4_8()
{

  JUMPOUT(0x22AAAE070);
}

__n128 OUTLINED_FUNCTION_8_12(uint64_t a1)
{
  *(a1 + 16) = *(v1 - 104);
  result = *(v1 - 168);
  v3 = *(v1 - 152);
  return result;
}

double OUTLINED_FUNCTION_10_7@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_7()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

void OUTLINED_FUNCTION_12_9()
{

  JUMPOUT(0x22AAAE070);
}

uint64_t OUTLINED_FUNCTION_21_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_26_3(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

__n128 OUTLINED_FUNCTION_27_4@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  *v1 = result.n128_u32[0];
  return result;
}

__n128 OUTLINED_FUNCTION_33_3@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  *v1 = result.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_34_2()
{
  result = *(v0 - 320);
  v2 = *(v0 - 704);
  v3 = *(v0 - 712);
  v4 = *(v0 - 720);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_1()
{
  v2 = *(v0 - 776);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_39_2(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return v2;
  }

  return result;
}

void OUTLINED_FUNCTION_40_1()
{

  JUMPOUT(0x22AAAE070);
}

void OUTLINED_FUNCTION_41_0()
{

  JUMPOUT(0x22AAAE070);
}

uint64_t OUTLINED_FUNCTION_45_2(uint64_t a1, uint64_t a2)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 10;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_49_2()
{

  JUMPOUT(0x22AAAE070);
}

uint64_t OUTLINED_FUNCTION_50_2(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_51_1()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_52_1()
{

  return Double.write<A>(to:)();
}

void OUTLINED_FUNCTION_53_2(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_59_2()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_60_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

BOOL OUTLINED_FUNCTION_62_2()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_63_3()
{

  JUMPOUT(0x22AAAE070);
}

uint64_t SELFProcessingError.errorCode.getter()
{
  result = 471002;
  switch(v0[3].i8[0])
  {
    case 1:
      result = 471003;
      break;
    case 2:
      result = 471010;
      break;
    case 3:
      result = 471004;
      break;
    case 4:
      result = 471005;
      break;
    case 5:
      result = 471006;
      break;
    case 6:
      result = 471007;
      break;
    case 7:
      result = 471008;
      break;
    case 8:
      result = 471011;
      break;
    case 9:
      result = 471012;
      break;
    case 0xA:
      v2 = vorrq_s8(v0[1], v0[2]);
      if (*&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | v0->i64[1] | v0->i64[0])
      {
        result = 471009;
      }

      else
      {
        result = 471001;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t SELFProcessingError.errorUserInfo.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D837D0];
  v3 = Dictionary.init(dictionaryLiteral:)();
  v4 = SELFProcessingError.errorDescription.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = *MEMORY[0x277CCA450];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&v139 = v6;
    *(&v139 + 1) = v7;
    OUTLINED_FUNCTION_12_10(v9, v10, v11, v12, v13, v14, v15, v16, v130, v139, v140, v2, v142, v143, v144, v145, *(&v145 + 1), v146, v147, v148);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_12(isUniquelyReferenced_nonNull_native, v18, v19, v20, v21, v22, v23, v24, v131, v139, *(&v139 + 1), v140, v141, v142, v143, v144, v145, *(&v145 + 1), v146, v147, v148);

    v3 = v145;
  }

  v25 = SELFProcessingError.failureReason.getter();
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    v29 = *MEMORY[0x277CCA470];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&v139 = v27;
    *(&v139 + 1) = v28;
    OUTLINED_FUNCTION_12_10(v30, v31, v32, v33, v34, v35, v36, v37, v130, v139, v140, v2, v142, v143, v144, v145, *(&v145 + 1), v146, v147, v148);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_12(v38, v39, v40, v41, v42, v43, v44, v45, v132, v139, *(&v139 + 1), v140, v141, v142, v143, v144, v145, *(&v145 + 1), v146, v147, v148);

    v3 = v145;
  }

  v46 = SELFProcessingError.recoverySuggestion.getter();
  if (v47)
  {
    v54 = v46;
    v55 = v47;
    v56 = *MEMORY[0x277CCA498];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&v139 = v54;
    *(&v139 + 1) = v55;
    OUTLINED_FUNCTION_12_10(v57, v58, v59, v60, v61, v62, v63, v64, v130, v139, v140, v2, v142, v143, v144, v145, *(&v145 + 1), v146, v147, v148);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_12(v65, v66, v67, v68, v69, v70, v71, v72, v133, v139, *(&v139 + 1), v140, v141, v142, v143, v144, v145, *(&v145 + 1), v146, v147, v148);

    v3 = v145;
  }

  v73 = *v1;
  v74 = *(v1 + 8);
  v76 = *(v1 + 16);
  v75 = *(v1 + 24);
  switch(*(v1 + 48))
  {
    case 0:
      *&v139 = *v1;
      *(&v139 + 1) = v74;
      OUTLINED_FUNCTION_12_10(v46, v47, v48, v49, v50, v51, v52, v53, v130, v139, v140, v2, v142, v143, v144, v145, *(&v145 + 1), v146, v147, v148);

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_5_12();
      v94 = OUTLINED_FUNCTION_9_6(v86, v87, v88, v89, v90, v91, v92, v93, v134, v139, *(&v139 + 1), v140, v141, v142, v143, v144, v3, *(&v145 + 1), v146, v147, v148);
      v77 = OUTLINED_FUNCTION_17_7(v94);
      v85 = v145;
      v141 = v2;
      *&v139 = v76;
      *(&v139 + 1) = v75;
      goto LABEL_12;
    case 1:
    case 8:
    case 9:
      v149 = MEMORY[0x277D84CC0];
      LODWORD(v148) = v73;
      outlined init with take of Any(&v148, &v145);
      outlined init with copy of SELFProcessingError(v1, &v139);
      swift_isUniquelyReferenced_nonNull_native();
      *&v139 = v3;
      v77 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v145);
      v85 = v139;
      v141 = v2;
      *&v139 = v74;
      *(&v139 + 1) = v76;
      goto LABEL_12;
    case 2:
      v97 = v1 + 32;
      v95 = *(v1 + 32);
      v96 = *(v97 + 8);
      *&v139 = v73;
      *(&v139 + 1) = v74;
      OUTLINED_FUNCTION_12_10(v46, v47, v48, v49, v50, v51, v52, v53, v130, v139, v140, v2, v142, v143, v144, v145, *(&v145 + 1), v146, v147, v148);

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_5_12();
      v106 = OUTLINED_FUNCTION_9_6(v98, v99, v100, v101, v102, v103, v104, v105, v135, v139, *(&v139 + 1), v140, v141, v142, v143, v144, v3, *(&v145 + 1), v146, v147, v148);
      v107 = OUTLINED_FUNCTION_17_7(v106);
      v108 = v145;
      *&v139 = v76;
      *(&v139 + 1) = v75;
      OUTLINED_FUNCTION_12_10(v107, v109, v110, v111, v112, v113, v114, v115, v136, v139, v140, v2, v142, v143, v144, v145, *(&v145 + 1), v146, v147, v148);
      v116 = swift_isUniquelyReferenced_nonNull_native();
      v121 = OUTLINED_FUNCTION_9_6(v116, 0x6465746365707865, 0xEC00000065707954, v116, v117, v118, v119, v120, v137, v139, *(&v139 + 1), v140, v141, v142, v143, v144, v108, *(&v145 + 1), v146, v147, v148);
      v77 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v121);
      v85 = v145;
      v141 = v2;
      *&v139 = v95;
      *(&v139 + 1) = v96;
LABEL_12:
      OUTLINED_FUNCTION_12_10(v77, v78, v79, v80, v81, v82, v83, v84, v130, v139, v140, v141, v142, v143, v144, v145, *(&v145 + 1), v146, v147, v148);
      v122 = swift_isUniquelyReferenced_nonNull_native();
      v128 = OUTLINED_FUNCTION_9_6(v122, 0x707954746E657665, v123, v122, v124, v125, v126, v127, v138, v139, *(&v139 + 1), v140, v141, v142, v143, v144, v85, *(&v145 + 1), v146, v147, v148);
      OUTLINED_FUNCTION_17_7(v128);
      v3 = v145;
      break;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
      v149 = v2;
      *&v148 = v73;
      *(&v148 + 1) = v74;
      outlined init with take of Any(&v148, &v145);
      outlined init with copy of SELFProcessingError(v1, &v139);
      swift_isUniquelyReferenced_nonNull_native();
      *&v139 = v3;
      OUTLINED_FUNCTION_5_12();
      OUTLINED_FUNCTION_17_7(&v145);
      v3 = v139;
      break;
    default:
      return v3;
  }

  return v3;
}

unint64_t SELFProcessingError.errorDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  switch(*(v0 + 48))
  {
    case 1:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(61);
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_2_14();
      MEMORY[0x22AAAE070]();
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AAAE070](v13);

      OUTLINED_FUNCTION_1_9();
      MEMORY[0x22AAAE070](v1, v2);
      goto LABEL_15;
    case 2:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(65);
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_2_14();
      MEMORY[0x22AAAE070](0xD000000000000019);
      v10 = OUTLINED_FUNCTION_11_8();
      MEMORY[0x22AAAE070](v10);
      MEMORY[0x22AAAE070](0x206F742027, 0xE500000000000000);
      v11 = OUTLINED_FUNCTION_14_6();
      MEMORY[0x22AAAE070](v11, v3);
      MEMORY[0x22AAAE070](544106784, 0xE400000000000000);
      MEMORY[0x22AAAE070](v4, v5);
      OUTLINED_FUNCTION_2_14();
      v12 = 0xD000000000000019;
      goto LABEL_16;
    case 3:
    case 5:
    case 7:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(33);

      OUTLINED_FUNCTION_6_11();
      goto LABEL_9;
    case 4:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(38);

      OUTLINED_FUNCTION_6_11();
      v9 = v8 + 5;
      goto LABEL_9;
    case 6:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(39);

      OUTLINED_FUNCTION_6_11();
      v9 = v14 + 6;
LABEL_9:
      v17 = v9;
      v12 = OUTLINED_FUNCTION_11_8();
      goto LABEL_16;
    case 8:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(68);
      OUTLINED_FUNCTION_4_9();
      goto LABEL_14;
    case 9:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(92);
      OUTLINED_FUNCTION_4_9();
LABEL_14:
      OUTLINED_FUNCTION_2_14();
      MEMORY[0x22AAAE070]();
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AAAE070](v16);

      goto LABEL_15;
    case 0xA:
      if (v2 | v1 | *v0 | v3 | v4 | v5)
      {
        return 0xD00000000000001CLL;
      }

      else
      {
        return 0xD000000000000026;
      }

    default:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(85);
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_2_14();
      MEMORY[0x22AAAE070]();
      v6 = OUTLINED_FUNCTION_11_8();
      MEMORY[0x22AAAE070](v6);
      OUTLINED_FUNCTION_1_9();
      v7 = OUTLINED_FUNCTION_14_6();
      MEMORY[0x22AAAE070](v7, v3);
LABEL_15:
      OUTLINED_FUNCTION_2_14();
LABEL_16:
      MEMORY[0x22AAAE070](v12);
      return v17;
  }
}

uint64_t SELFProcessingError.failureReason.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  switch(*(v0 + 48))
  {
    case 1:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(69);
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_8_13();
      OUTLINED_FUNCTION_2_14();
      MEMORY[0x22AAAE070]();
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AAAE070](v15);

      OUTLINED_FUNCTION_1_9();
      OUTLINED_FUNCTION_13_8();
      goto LABEL_10;
    case 2:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(64);
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_10_8();
      v9 = OUTLINED_FUNCTION_14_6();
      MEMORY[0x22AAAE070](v9, v1);
      OUTLINED_FUNCTION_1_9();
      MEMORY[0x22AAAE070](v4, v5);
      OUTLINED_FUNCTION_8_13();
      OUTLINED_FUNCTION_2_14();
      MEMORY[0x22AAAE070]();
      MEMORY[0x22AAAE070](v2, v3);
      v10 = 46;
      v11 = 0xE100000000000000;
      goto LABEL_11;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
      goto LABEL_2;
    case 8:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(59);
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_8_13();
      OUTLINED_FUNCTION_2_14();
      MEMORY[0x22AAAE070]();
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AAAE070](v13);

      OUTLINED_FUNCTION_1_9();
      OUTLINED_FUNCTION_13_8();
      goto LABEL_10;
    case 9:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(83);
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_8_13();
      OUTLINED_FUNCTION_2_14();
      MEMORY[0x22AAAE070]();
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AAAE070](v8);

      OUTLINED_FUNCTION_1_9();
      OUTLINED_FUNCTION_13_8();
LABEL_10:
      OUTLINED_FUNCTION_2_14();
      v10 = 0xD000000000000022;
      goto LABEL_11;
    case 0xA:
      if (v2 | v1 | *v0 | v3 | v4 | v5)
      {
LABEL_2:
        OUTLINED_FUNCTION_16_7();
        return v6 + 22;
      }

      else
      {
        OUTLINED_FUNCTION_16_7();
        return v12 + 62;
      }

    default:
      OUTLINED_FUNCTION_0_12();
      _StringGuts.grow(_:)(79);
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_10_8();
      v14 = OUTLINED_FUNCTION_14_6();
      MEMORY[0x22AAAE070](v14, v1);
      OUTLINED_FUNCTION_2_14();
      MEMORY[0x22AAAE070]();
      MEMORY[0x22AAAE070](v2, v3);
      OUTLINED_FUNCTION_2_14();
LABEL_11:
      MEMORY[0x22AAAE070](v10, v11);
      return v16;
  }
}

uint64_t SELFProcessingError.recoverySuggestion.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 48);
  if (!*(v0 + 48))
  {
    _StringGuts.grow(_:)(74);
    OUTLINED_FUNCTION_15_5();
    MEMORY[0x22AAAE070](0xD000000000000011);
    MEMORY[0x22AAAE070](v1, v2);
    goto LABEL_10;
  }

  if (v3 == 1)
  {
    OUTLINED_FUNCTION_7_9();
    return v8 + 93;
  }

  v4 = v0[2];
  v5 = v0[3];
  if (v3 == 2)
  {
    _StringGuts.grow(_:)(81);
    OUTLINED_FUNCTION_15_5();
    MEMORY[0x22AAAE070](0xD000000000000011);
    MEMORY[0x22AAAE070](v1, v2);
    OUTLINED_FUNCTION_15_5();
    MEMORY[0x22AAAE070]();
    MEMORY[0x22AAAE070](v4, v5);
LABEL_10:
    OUTLINED_FUNCTION_15_5();
    MEMORY[0x22AAAE070]();
    return 0;
  }

  if (v3 == 10 && !(v0[5] | v0[4] | v1 | v2 | v4 | v5))
  {
    OUTLINED_FUNCTION_7_9();
    return v9 + 52;
  }

  else
  {
    OUTLINED_FUNCTION_7_9();
    return v6 + 47;
  }
}

uint64_t protocol witness for Error._domain.getter in conformance SELFProcessingError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance SELFProcessingError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance SELFProcessingError()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 48);
  return SELFProcessingError.errorUserInfo.getter();
}

uint64_t get_enum_tag_for_layout_string_36AppleIntelligenceReportingProcessing19SELFProcessingErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 0xFu) <= 9)
  {
    return *(a1 + 48) & 0xF;
  }

  else
  {
    return (*a1 + 10);
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SELFProcessingError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF6 && *(a1 + 49))
    {
      v2 = *a1 + 245;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 0xA)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SELFProcessingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SELFProcessingError(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 10;
  }

  *(result + 48) = a2;
  return result;
}

void OUTLINED_FUNCTION_1_9()
{

  JUMPOUT(0x22AAAE070);
}

_OWORD *OUTLINED_FUNCTION_3_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21)
{

  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&a21);
}

void OUTLINED_FUNCTION_10_8()
{

  JUMPOUT(0x22AAAE070);
}

_OWORD *OUTLINED_FUNCTION_12_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20)
{

  return outlined init with take of Any(&a10, &a20);
}

void OUTLINED_FUNCTION_13_8()
{

  JUMPOUT(0x22AAAE070);
}

_OWORD *OUTLINED_FUNCTION_17_7(_OWORD *a1)
{

  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1);
}

uint64_t type metadata accessor for SELFUploader()
{
  result = type metadata singleton initialization cache for SELFUploader;
  if (!type metadata singleton initialization cache for SELFUploader)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriAnalyticsStream.emitMessage(_:)(uint64_t a1)
{
  [objc_msgSend(objc_opt_self() sharedStream)];

  return swift_unknownObjectRelease();
}

uint64_t SELFUploader.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_7_10();
  Logger.init(subsystem:category:)();
  v3 = type metadata accessor for SELFUploader();
  v4 = a1 + v3[5];
  *(v4 + 24) = &type metadata for SiriAnalyticsStream;
  *(v4 + 32) = &protocol witness table for SiriAnalyticsStream;
  v5 = (a1 + v3[6]);
  v5[3] = type metadata accessor for SELFEventProcessor();
  v5[4] = &protocol witness table for SELFEventProcessor;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_2_15(v7);
  (*(v8 + 16))(boxed_opaque_existential_1, a1, v1);
  v9 = v3[7];
  OUTLINED_FUNCTION_9_7();
  v10 = type metadata accessor for SELFWrapperFactory();
  OUTLINED_FUNCTION_10_9(v10, &protocol witness table for SELFWrapperFactory);
  OUTLINED_FUNCTION_6_12();

  return v11();
}

uint64_t static SELFUploaderFactory.createWithStream(_:)@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for SELFUploader();
  v5 = OUTLINED_FUNCTION_16_8(v4);
  outlined init with copy of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(v5, v6);
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_7_10();
  Logger.init(subsystem:category:)();
  v7 = *(v1 + 24);
  OUTLINED_FUNCTION_9_7();
  v8 = type metadata accessor for SELFEventProcessor();
  v9 = OUTLINED_FUNCTION_10_9(v8, &protocol witness table for SELFEventProcessor);
  v10 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_2_15(v10);
  (*(v11 + 16))(v9, a1, v2);
  v12 = *(v1 + 28);
  OUTLINED_FUNCTION_9_7();
  v13 = type metadata accessor for SELFWrapperFactory();
  OUTLINED_FUNCTION_10_9(v13, &protocol witness table for SELFWrapperFactory);
  OUTLINED_FUNCTION_6_12();

  return v14();
}

uint64_t SELFUploader.init(siriAnalyticsStream:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_7_10();
  Logger.init(subsystem:category:)();
  v4 = type metadata accessor for SELFUploader();
  v5 = OUTLINED_FUNCTION_16_8(v4);
  outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(v5, v6);
  v7 = *(v1 + 24);
  OUTLINED_FUNCTION_9_7();
  v8 = type metadata accessor for SELFEventProcessor();
  v9 = OUTLINED_FUNCTION_10_9(v8, &protocol witness table for SELFEventProcessor);
  v10 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_2_15(v10);
  (*(v11 + 16))(v9, a1, v2);
  v12 = *(v1 + 28);
  OUTLINED_FUNCTION_9_7();
  v13 = type metadata accessor for SELFWrapperFactory();
  OUTLINED_FUNCTION_10_9(v13, &protocol witness table for SELFWrapperFactory);
  OUTLINED_FUNCTION_6_12();

  return v14();
}

uint64_t static SELFUploaderFactory.createCustom(siriAnalyticsStream:eventProcessor:wrapperFactory:)()
{
  OUTLINED_FUNCTION_12_11();
  v4 = type metadata accessor for SELFUploader();
  v5 = OUTLINED_FUNCTION_11_9(v4);
  outlined init with copy of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(v5, v6);
  outlined init with copy of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(v1, v2 + *(v3 + 24));
  outlined init with copy of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(v0, v2 + *(v3 + 28));
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_7_10();

  return Logger.init(subsystem:category:)();
}

uint64_t SELFUploader.init(siriAnalyticsStream:eventProcessor:wrapperFactory:)()
{
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_7_10();
  Logger.init(subsystem:category:)();
  v4 = type metadata accessor for SELFUploader();
  v5 = OUTLINED_FUNCTION_11_9(v4);
  outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(v5, v6);
  outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(v1, v2 + *(v3 + 24));
  v7 = v2 + *(v3 + 28);

  return outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(v0, v7);
}

uint64_t SELFUploader.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SELFUploader.uploadEvent(data:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_10();
}

uint64_t SELFUploader.uploadEvent(data:)()
{
  v22 = v0;
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    swift_getObjectType();
    v8 = _typeName(_:qualified:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v21);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_227F43000, v3, v4, "Uploading SELF event of type: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AAAF0A0](v7, -1, -1);
    MEMORY[0x22AAAF0A0](v6, -1, -1);
  }

  v12 = *(v0 + 16);
  v11 = *(v0 + 24);
  v13 = (v11 + *(type metadata accessor for SELFUploader() + 20));
  v14 = v13[3];
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v15 + 8))(v12, v14, v15);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_227F43000, v16, v17, "SELF event uploaded successfully", v18, 2u);
    MEMORY[0x22AAAF0A0](v18, -1, -1);
  }

  OUTLINED_FUNCTION_35();

  return v19();
}

uint64_t protocol witness for SELFUploading.uploadEvent(data:) in conformance SELFUploader(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in DataCollector.runDataCollectionAndUpload();

  return SELFUploader.uploadEvent(data:)(a1);
}

uint64_t protocol witness for SELFUploading.send(data:) in conformance SELFUploader(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for SELFUploading.send(data:) in conformance SELFUploader;

  return SELFUploader.send(data:)(a1);
}

{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for SELFUploading.send(data:) in conformance SELFUploader;

  return SELFUploader.send(data:)(a1);
}

uint64_t SELFUploader.send(data:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_1_10();
}

{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_1_10();
}

uint64_t SELFUploader.send(data:)()
{
  v16 = v1;
  v5 = v1[3];
  v4 = v1[4];
  v6 = type metadata accessor for SELFUploader();
  OUTLINED_FUNCTION_17_8(v6);
  memcpy(v15, v5, sizeof(v15));
  v7 = *(v2 + 8);
  OUTLINED_FUNCTION_14_7();
  v9 = v8();
  v1[5] = v9;
  if (v0)
  {
    OUTLINED_FUNCTION_35();

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_4_10(v9);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus, 0x277D5A5F0);
    v10 = OUTLINED_FUNCTION_13_9();
    v1[6] = v3(v10);
    v13 = swift_task_alloc();
    v1[7] = v13;
    *v13 = v1;
    v14 = OUTLINED_FUNCTION_15_6(v13);

    return SELFUploader.uploadEvent(data:)(v14);
  }
}

{
  OUTLINED_FUNCTION_0_2();
  v2 = *(*v1 + 56);
  v3 = *v1;
  OUTLINED_FUNCTION_18_0();
  *v4 = v3;
  *(v5 + 64) = v0;

  if (v0)
  {
    v6 = SELFUploader.send(data:);
  }

  else
  {
    v6 = SELFUploader.send(data:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  OUTLINED_FUNCTION_0_2();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_35();

  return v2();
}

{
  OUTLINED_FUNCTION_0_2();
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);
  OUTLINED_FUNCTION_35();

  return v3();
}

{
  v16 = v1;
  v5 = v1[3];
  v4 = v1[4];
  v6 = type metadata accessor for SELFUploader();
  OUTLINED_FUNCTION_17_8(v6);
  memcpy(__dst, v5, sizeof(__dst));
  v7 = *(v2 + 16);
  OUTLINED_FUNCTION_14_7();
  v9 = v8();
  v1[5] = v9;
  if (v0)
  {
    OUTLINED_FUNCTION_35();

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_4_10(v9);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus, 0x277D5A5F8);
    v10 = OUTLINED_FUNCTION_13_9();
    v1[6] = v3(v10);
    v13 = swift_task_alloc();
    v1[7] = v13;
    *v13 = v1;
    v14 = OUTLINED_FUNCTION_15_6(v13);

    return SELFUploader.uploadEvent(data:)(v14);
  }
}

{
  OUTLINED_FUNCTION_0_2();
  v2 = *(*v1 + 56);
  v3 = *v1;
  OUTLINED_FUNCTION_18_0();
  *v4 = v3;
  *(v5 + 64) = v0;

  if (v0)
  {
    v6 = SELFUploader.send(data:);
  }

  else
  {
    v6 = SELFUploader.send(data:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t type metadata completion function for SELFUploader()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SiriAnalyticsStreaming(319, &lazy cache variable for type metadata for SiriAnalyticsStreaming);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for SiriAnalyticsStreaming(319, &lazy cache variable for type metadata for SELFEventProcessing);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for SiriAnalyticsStreaming(319, &lazy cache variable for type metadata for SELFWrapperCreating);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for SiriAnalyticsStreaming(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *OUTLINED_FUNCTION_4_10(uint64_t a1)
{
  v4 = (*(v1 + 32) + *(v2 + 28));
  v5 = v4[4];
  result = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  *(v1 + 16) = a1;
  v7 = *(v5 + 8);
  return result;
}

uint64_t *OUTLINED_FUNCTION_10_9@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1(v2);
}

uint64_t OUTLINED_FUNCTION_15_6(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v2 + 32);
  return v3;
}

void *OUTLINED_FUNCTION_17_8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = v2[4];
  return __swift_project_boxed_opaque_existential_1(v2, v2[3]);
}

uint64_t dispatch thunk of SELFUploading.uploadEvent(data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(OUTLINED_FUNCTION_1_11(a1, a2, a3) + 8);
  OUTLINED_FUNCTION_2_16();
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v9 = OUTLINED_FUNCTION_0_14(v8);

  return v10(v9);
}

uint64_t dispatch thunk of SELFUploading.uploadEvent(data:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of SELFUploading.send(data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(OUTLINED_FUNCTION_1_11(a1, a2, a3) + 16);
  OUTLINED_FUNCTION_2_16();
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v9 = OUTLINED_FUNCTION_0_14(v8);

  return v10(v9);
}

{
  v4 = *(OUTLINED_FUNCTION_1_11(a1, a2, a3) + 24);
  OUTLINED_FUNCTION_2_16();
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v9 = OUTLINED_FUNCTION_0_14(v8);

  return v10(v9);
}

uint64_t SELFWrapperFactory.init(logger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

id SELFWrapperFactory.createWrapper<A>(with:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x277D5A5E0]) init];
  v12 = v11;
  if (v11)
  {
    v42 = v11;
    v13 = *(v4 + 16);
    v13(v10, a1, a2);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus, 0x277D5A5F0);
    if (OUTLINED_FUNCTION_1_12())
    {
      v14 = v43;
      v12 = v42;
      [v42 setIntelligenceFeatureAvailabilityChangeStatus_];
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_4_11(v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        v18 = "Created wrapper for AvailabilityChangeStatus";
LABEL_11:
        _os_log_impl(&dword_227F43000, v15, v16, v18, v17, 2u);
        OUTLINED_FUNCTION_11();
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus, 0x277D5A5F8);
    if (OUTLINED_FUNCTION_1_12())
    {
      v14 = v43;
      v12 = v42;
      [v42 setIntelligenceFeatureAvailabilityDetailedStatus_];
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_4_11(v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        v18 = "Created wrapper for AvailabilityDetailedStatus";
        goto LABEL_11;
      }

LABEL_12:

      (*(v4 + 8))(v10, a2);
      return v12;
    }

    v13(v8, a1, a2);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_4_11(v25))
    {
      v26 = swift_slowAlloc();
      v40 = v26;
      v41 = swift_slowAlloc();
      v43 = v41;
      *v26 = 136315138;
      swift_getDynamicType();
      v39 = _typeName(_:qualified:)();
      v28 = v27;
      v29 = *(v4 + 8);
      v30 = OUTLINED_FUNCTION_2_17();
      v29(v30);
      v31 = v29;
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v28, &v43);

      v33 = v40;
      *(v40 + 1) = v32;
      _os_log_impl(&dword_227F43000, v24, v25, "Unsupported container type: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();

      v34 = v31;
    }

    else
    {

      v34 = *(v4 + 8);
      v35 = OUTLINED_FUNCTION_2_17();
      v34(v35);
    }

    v12 = v42;
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    v36 = swift_allocError();
    OUTLINED_FUNCTION_0_15(v36, v37);

    (v34)(v10, a2);
  }

  else
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_4_11(v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_227F43000, v19, v20, "Failed to create SADSchemaSADClientEvent wrapper", v21, 2u);
      OUTLINED_FUNCTION_11();
    }

    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    v22 = swift_allocError();
    OUTLINED_FUNCTION_0_15(v22, v23);
  }

  return v12;
}

uint64_t type metadata accessor for SELFWrapperFactory()
{
  result = type metadata singleton initialization cache for SELFWrapperFactory;
  if (!type metadata singleton initialization cache for SELFWrapperFactory)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_15(uint64_t a1, uint64_t a2)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 10;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_1_12()
{

  return swift_dynamicCast();
}

BOOL OUTLINED_FUNCTION_4_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id UnifiedAssetFrameworkReporter.init()@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() sharedManager];
  *a1 = result;
  return result;
}

Swift::UInt32_optional __swiftcall UnifiedAssetFrameworkReporter.downloadStatusFor(subscriber:subscriptionName:)(Swift::String subscriber, Swift::String subscriptionName)
{
  object = subscriptionName._object;
  countAndFlagsBits = subscriptionName._countAndFlagsBits;
  v5 = subscriber._object;
  v6 = subscriber._countAndFlagsBits;
  v7 = *v2;
  v8 = MEMORY[0x22AAADFF0]();
  v9 = MEMORY[0x22AAADFF0](countAndFlagsBits, object);
  v10 = [v7 downloadStatusForSubscriber:v8 subscriptionName:v9];

  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logging.general);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315650;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v17);
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v17);
    *(v14 + 22) = 2048;
    *(v14 + 24) = v10;
    _os_log_impl(&dword_227F43000, v12, v13, "UAF download status for %s and %s: %lu", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAAF0A0](v15, -1, -1);
    MEMORY[0x22AAAF0A0](v14, -1, -1);
  }

  if (HIDWORD(v10))
  {
    __break(1u);
  }

  else
  {
    v18 = 0;
    return v10;
  }

  return v16;
}

uint64_t getEnumTagSinglePayload for UnifiedAssetFrameworkReporter(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UnifiedAssetFrameworkReporter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t MockUserDefaultsProvider.currentTimestamp.setter(double a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

double MockUserDefaultsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 1744259200.0;
  *(v0 + 16) = xmmword_227FB4740;
  return result;
}

double MockUserDefaultsProvider.init()()
{
  result = 1744259200.0;
  *(v0 + 16) = xmmword_227FB4740;
  return result;
}

uint64_t MockUserDefaultsProvider.uploadTaskBookmark.setter(double a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

void (*MockUserDefaultsProvider.uploadTaskBookmark.modify(void *a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = *(v1 + 16);
  return MockUserDefaultsProvider.uploadTaskBookmark.modify;
}

void MockUserDefaultsProvider.uploadTaskBookmark.modify(void **a1)
{
  v1 = *a1;
  *(v1[4] + 16) = v1[3];
  free(v1);
}

uint64_t (*protocol witness for UserDefaultsProviding.uploadTaskBookmark.modify in conformance MockUserDefaultsProvider(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = v4;
  swift_beginAccess();
  v3[3] = *(v4 + 16);
  return protocol witness for UserDefaultsProviding.uploadTaskBookmark.modify in conformance MockUserDefaultsProvider;
}

uint64_t UserDefaultsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  UserDefaultsProvider.init()();
  return v0;
}

uint64_t UserDefaultsProvider.suiteSubsystem.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void *UserDefaultsProvider.userDefaults.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *UserDefaultsProvider.init()()
{
  v1 = v0;
  v0[2] = 0xD000000000000024;
  v0[3] = 0x8000000227FB4BF0;
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = OUTLINED_FUNCTION_0_16();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [objc_opt_self() standardUserDefaults];
    v6 = v0[2];
    v7 = v1[3];

    v4 = MEMORY[0x22AAADFF0](v6, v7);

    [v5 addSuiteNamed_];
  }

  v8 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v9 = OUTLINED_FUNCTION_0_16();
  if (v9)
  {
    v1[4] = v9;
  }

  else
  {
    v1[4] = 0;
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logging.general);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      v15 = v1[2];
      v16 = v1[3];

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_227F43000, v11, v12, "Could not generate user defaults for suite %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x22AAAF0A0](v14, -1, -1);
      MEMORY[0x22AAAF0A0](v13, -1, -1);
    }
  }

  return v1;
}

void UserDefaultsProvider.uploadTaskBookmark.getter()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = MEMORY[0x22AAADFF0](0xD000000000000012, 0x8000000227FB6F10);
    [v1 doubleForKey_];
  }
}

void UserDefaultsProvider.uploadTaskBookmark.setter(double a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v4 = v2;
    v5 = MEMORY[0x22AAADFF0](0xD000000000000012, 0x8000000227FB6F10);
    [v4 setDouble:v5 forKey:a1];
  }
}

void (*UserDefaultsProvider.uploadTaskBookmark.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  UserDefaultsProvider.uploadTaskBookmark.getter();
  *a1 = v3;
  return UserDefaultsProvider.uploadTaskBookmark.modify;
}

double UserDefaultsProvider.getCurrentTimestamp.getter()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v6 = v5;
  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t UserDefaultsProvider.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t UserDefaultsProvider.__deallocating_deinit()
{
  UserDefaultsProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void (*protocol witness for UserDefaultsProviding.uploadTaskBookmark.modify in conformance UserDefaultsProvider(void *a1))(uint64_t a1)
{
  a1[1] = *v1;
  UserDefaultsProvider.uploadTaskBookmark.getter();
  *a1 = v3;
  return UserDefaultsProvider.uploadTaskBookmark.modify;
}

id @nonobjc NSUserDefaults.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x22AAADFF0]();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

id OUTLINED_FUNCTION_0_16()
{

  return @nonobjc NSUserDefaults.init(suiteName:)(0xD000000000000024, v0);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleIntelligenceReportingMobileAssetLog.json()()
{
  v0 = MEMORY[0x28217A060]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleIntelligenceReportingAvailabilityLog.json()()
{
  v0 = MEMORY[0x28217A0B8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleIntelligenceReportingModelCatalogLog.json()()
{
  v0 = MEMORY[0x28217A100]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppleIntelligenceReportingUnifiedAssetFrameworkLog.json()()
{
  v0 = MEMORY[0x28217A1A0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD990]();
}

{
  return MEMORY[0x2821FD998]();
}

{
  return MEMORY[0x2821FD9E8]();
}

{
  return MEMORY[0x2821FD9F0]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAC8]();
}

{
  return MEMORY[0x2821FDAD0]();
}

{
  return MEMORY[0x2821FDB20]();
}

{
  return MEMORY[0x2821FDB28]();
}

uint64_t UnkeyedEncodingContainer.encode<A>(contentsOf:)()
{
  return MEMORY[0x2821FDD88]();
}

{
  return MEMORY[0x2821FDD90]();
}

{
  return MEMORY[0x2821FDD98]();
}

{
  return MEMORY[0x2821FDDA0]();
}

{
  return MEMORY[0x2821FDDA8]();
}

{
  return MEMORY[0x2821FDDB0]();
}

{
  return MEMORY[0x2821FDDB8]();
}

{
  return MEMORY[0x2821FDDC0]();
}

{
  return MEMORY[0x2821FDDC8]();
}

{
  return MEMORY[0x2821FDDD0]();
}

{
  return MEMORY[0x2821FDDD8]();
}

{
  return MEMORY[0x2821FDDE0]();
}

{
  return MEMORY[0x2821FDDE8]();
}

{
  return MEMORY[0x2821FDDF0]();
}

{
  return MEMORY[0x2821FDDF8]();
}

{
  return MEMORY[0x2821FDE00]();
}

{
  return MEMORY[0x2821FDE08]();
}

uint64_t SingleValueEncodingContainer<>.encode(_:)()
{
  return MEMORY[0x2821FE000]();
}

{
  return MEMORY[0x2821FE008]();
}

uint64_t KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FE120]();
}

{
  return MEMORY[0x2821FE128]();
}