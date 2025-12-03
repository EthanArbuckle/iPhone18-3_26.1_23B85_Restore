@interface JSContainerDetailModelResponse
- (_TtC16MusicApplication30JSContainerDetailModelResponse)initWithRequest:(id)request;
- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)index responseHandler:(id)handler;
- (id)request;
- (id)storeItemMetadataForItemAt:(id)at;
@end

@implementation JSContainerDetailModelResponse

- (id)request
{
  if (self->MPModelResponse_opaque[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_useUnderlyingResponseForPlayback] == 1)
  {
    request = [*&self->MPModelResponse_opaque[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_underlyingResponse] request];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = swift_getObjectType();
    request = [(JSContainerDetailModelResponse *)&v5 request];
  }

  v3 = request;

  return v3;
}

- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)index responseHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *&self->MPModelResponse_opaque[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_underlyingResponse];
  v13[4] = sub_AACD4;
  v13[5] = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_151E0;
  v13[3] = &block_descriptor_60;
  v9 = _Block_copy(v13);
  selfCopy = self;

  v11 = [v8 newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:index responseHandler:v9];
  _Block_release(v9);

  return v11;
}

- (_TtC16MusicApplication30JSContainerDetailModelResponse)initWithRequest:(id)request
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)storeItemMetadataForItemAt:(id)at
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v9 = *&self->MPModelResponse_opaque[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_storeItemMetadataResults];
  atCopy = at;
  selfCopy = self;
  isa = sub_AB3770().super.isa;
  v13 = [v9 itemAtIndexPath:isa];
  (*(v6 + 8))(v8, v5);

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();

  if (!v14)
  {
    swift_unknownObjectRelease();
  }

  return v14;
}

@end