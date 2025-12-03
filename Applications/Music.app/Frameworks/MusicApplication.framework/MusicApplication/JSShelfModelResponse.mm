@interface JSShelfModelResponse
- (BOOL)hasVideoArtwork;
- (_TtC16MusicApplication20JSShelfModelResponse)initWithRequest:(id)request;
- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)index responseHandler:(id)handler;
- (void)getChangeDetailsFromPreviousResponse:(id)response completion:(id)completion;
@end

@implementation JSShelfModelResponse

- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)index responseHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *&self->MPModelResponse_opaque[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_personalizationResponse];
  v13[4] = sub_AACD4;
  v13[5] = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_151E0;
  v13[3] = &block_descriptor_27_4;
  v9 = _Block_copy(v13);
  selfCopy = self;

  v11 = [v8 newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:index responseHandler:v9];
  _Block_release(v9);

  return v11;
}

- (void)getChangeDetailsFromPreviousResponse:(id)response completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_29BBE4;
  }

  else
  {
    v7 = 0;
  }

  responseCopy = response;
  selfCopy = self;
  sub_29AA6C(response, v6, v7);
  sub_17654(v6);
}

- (_TtC16MusicApplication20JSShelfModelResponse)initWithRequest:(id)request
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)hasVideoArtwork
{
  selfCopy = self;
  v3 = sub_38DD84();

  return v3 & 1;
}

@end