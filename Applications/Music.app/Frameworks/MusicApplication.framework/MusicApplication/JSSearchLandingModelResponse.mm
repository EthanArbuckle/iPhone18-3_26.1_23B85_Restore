@interface JSSearchLandingModelResponse
- (_TtC16MusicApplication28JSSearchLandingModelResponse)initWithRequest:(id)request;
- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)index responseHandler:(id)handler;
@end

@implementation JSSearchLandingModelResponse

- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)index responseHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *&self->MPModelResponse_opaque[OBJC_IVAR____TtC16MusicApplication28JSSearchLandingModelResponse_personalizationResponse];
  v13[4] = sub_AACD4;
  v13[5] = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_151E0;
  v13[3] = &block_descriptor_68;
  v9 = _Block_copy(v13);
  selfCopy = self;

  v11 = [v8 newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:index responseHandler:v9];
  _Block_release(v9);

  return v11;
}

- (_TtC16MusicApplication28JSSearchLandingModelResponse)initWithRequest:(id)request
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end