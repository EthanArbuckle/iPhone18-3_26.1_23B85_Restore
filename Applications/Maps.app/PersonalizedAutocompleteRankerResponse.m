@interface PersonalizedAutocompleteRankerResponse
- (NSArray)sections;
- (_TtC4Maps38PersonalizedAutocompleteRankerResponse)init;
- (id)init:(id)a3 experimentMetadata:(id)a4 modelMetadata:(id)a5 responseStatus:(int64_t)a6;
@end

@implementation PersonalizedAutocompleteRankerResponse

- (NSArray)sections
{
  sub_100014C84(0, &qword_1019167F0);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (id)init:(id)a3 experimentMetadata:(id)a4 modelMetadata:(id)a5 responseStatus:(int64_t)a6
{
  sub_100014C84(0, &qword_1019167F0);
  *(self + OBJC_IVAR____TtC4Maps38PersonalizedAutocompleteRankerResponse_sections) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR____TtC4Maps38PersonalizedAutocompleteRankerResponse_experimentMetadata) = a4;
  *(self + OBJC_IVAR____TtC4Maps38PersonalizedAutocompleteRankerResponse_modelMetadata) = a5;
  *(self + OBJC_IVAR____TtC4Maps38PersonalizedAutocompleteRankerResponse_responseStatus) = a6;
  v13.receiver = self;
  v13.super_class = type metadata accessor for PersonalizedAutocompleteRankerResponse();
  v10 = a4;
  v11 = a5;
  return [(PersonalizedAutocompleteRankerResponse *)&v13 init];
}

- (_TtC4Maps38PersonalizedAutocompleteRankerResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end