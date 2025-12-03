@interface IDSURI:
- (uint64_t)IDSOffGridDeliveryQueryResult;
@end

@implementation IDSURI:

- (uint64_t)IDSOffGridDeliveryQueryResult
{
  v4 = *__swift_project_boxed_opaque_existential_0((self + 32), *(self + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSURI, IDSURI_ptr);
    type metadata accessor for IMDHandle(0, &lazy cache variable for type metadata for IDSOffGridDeliveryQueryResult, IDSOffGridDeliveryQueryResult_ptr);
    lazy protocol witness table accessor for type IDSURI and conformance NSObject();
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

@end