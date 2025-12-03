@interface PersonalizedAutocompleteRankerResponse
- (NSArray)sections;
- (_TtC4Maps38PersonalizedAutocompleteRankerResponse)init;
- (id)init:(id)init experimentMetadata:(id)metadata modelMetadata:(id)modelMetadata responseStatus:(int64_t)status;
@end

@implementation PersonalizedAutocompleteRankerResponse

- (NSArray)sections
{
  sub_100014C84(0, &qword_1019167F0);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (id)init:(id)init experimentMetadata:(id)metadata modelMetadata:(id)modelMetadata responseStatus:(int64_t)status
{
  sub_100014C84(0, &qword_1019167F0);
  *(self + OBJC_IVAR____TtC4Maps38PersonalizedAutocompleteRankerResponse_sections) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR____TtC4Maps38PersonalizedAutocompleteRankerResponse_experimentMetadata) = metadata;
  *(self + OBJC_IVAR____TtC4Maps38PersonalizedAutocompleteRankerResponse_modelMetadata) = modelMetadata;
  *(self + OBJC_IVAR____TtC4Maps38PersonalizedAutocompleteRankerResponse_responseStatus) = status;
  v13.receiver = self;
  v13.super_class = type metadata accessor for PersonalizedAutocompleteRankerResponse();
  metadataCopy = metadata;
  modelMetadataCopy = modelMetadata;
  return [(PersonalizedAutocompleteRankerResponse *)&v13 init];
}

- (_TtC4Maps38PersonalizedAutocompleteRankerResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end