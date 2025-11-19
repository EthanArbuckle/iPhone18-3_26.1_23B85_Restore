@interface JSGridModelResponse
- (BOOL)hasVideoArtwork;
- (_TtC16MusicApplication19JSGridModelResponse)initWithRequest:(id)a3;
- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)a3 responseHandler:(id)a4;
@end

@implementation JSGridModelResponse

- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)a3 responseHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *&self->MPModelResponse_opaque[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_personalizationResponse];
  v13[4] = sub_AACD4;
  v13[5] = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_151E0;
  v13[3] = &block_descriptor_48;
  v9 = _Block_copy(v13);
  v10 = self;

  v11 = [v8 newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:a3 responseHandler:v9];
  _Block_release(v9);

  return v11;
}

- (_TtC16MusicApplication19JSGridModelResponse)initWithRequest:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)hasVideoArtwork
{
  v2 = self;
  v3 = sub_38DBC4();

  return v3 & 1;
}

@end