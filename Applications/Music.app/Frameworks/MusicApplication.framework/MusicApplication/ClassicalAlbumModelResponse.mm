@interface ClassicalAlbumModelResponse
- (_TtC16MusicApplication27ClassicalAlbumModelResponse)initWithRequest:(id)request;
- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)index responseHandler:(id)handler;
@end

@implementation ClassicalAlbumModelResponse

- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)index responseHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  v9 = sub_1FA60C(index, sub_AACD4, v7);

  return v9;
}

- (_TtC16MusicApplication27ClassicalAlbumModelResponse)initWithRequest:(id)request
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end