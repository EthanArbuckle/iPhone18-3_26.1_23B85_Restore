@interface JSSocialProfileCollectionModelResponse
- (_TtC16MusicApplication38JSSocialProfileCollectionModelResponse)initWithRequest:(id)request;
- (void)getChangeDetailsFromPreviousResponse:(id)response completion:(id)completion;
@end

@implementation JSSocialProfileCollectionModelResponse

- (void)getChangeDetailsFromPreviousResponse:(id)response completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_B5A4C;
  }

  responseCopy = response;
  selfCopy = self;
  sub_EF090(response, v6);
  sub_17654(v6);
}

- (_TtC16MusicApplication38JSSocialProfileCollectionModelResponse)initWithRequest:(id)request
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end