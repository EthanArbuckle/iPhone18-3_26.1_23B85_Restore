@interface WFContentItemListThumbnailOption:
- (uint64_t)Any;
@end

@implementation WFContentItemListThumbnailOption:

- (uint64_t)Any
{
  v5 = *__swift_project_boxed_opaque_existential_1((self + 32), *(self + 56));
  if (a3)
  {
    type metadata accessor for WFContentItemListThumbnailOption(0);
    lazy protocol witness table accessor for type WFChooseFromListFlow and conformance WFChooseFromListFlow(&lazy protocol witness table cache variable for type WFContentItemListThumbnailOption and conformance WFContentItemListThumbnailOption, 255, type metadata accessor for WFContentItemListThumbnailOption);
    a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a2;
  return specialized _resumeUnsafeContinuation<A>(_:_:)(v5, a2, a3);
}

@end