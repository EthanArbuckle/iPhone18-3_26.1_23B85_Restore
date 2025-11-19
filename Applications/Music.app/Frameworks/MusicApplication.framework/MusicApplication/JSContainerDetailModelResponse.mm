@interface JSContainerDetailModelResponse
- (_TtC16MusicApplication30JSContainerDetailModelResponse)initWithRequest:(id)a3;
- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)a3 responseHandler:(id)a4;
- (id)request;
- (id)storeItemMetadataForItemAt:(id)a3;
@end

@implementation JSContainerDetailModelResponse

- (id)request
{
  if (self->MPModelResponse_opaque[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_useUnderlyingResponseForPlayback] == 1)
  {
    v2 = [*&self->MPModelResponse_opaque[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_underlyingResponse] request];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = swift_getObjectType();
    v2 = [(JSContainerDetailModelResponse *)&v5 request];
  }

  v3 = v2;

  return v3;
}

- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)a3 responseHandler:(id)a4
{
  v6 = _Block_copy(a4);
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
  v10 = self;

  v11 = [v8 newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:a3 responseHandler:v9];
  _Block_release(v9);

  return v11;
}

- (_TtC16MusicApplication30JSContainerDetailModelResponse)initWithRequest:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)storeItemMetadataForItemAt:(id)a3
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v9 = *&self->MPModelResponse_opaque[OBJC_IVAR____TtC16MusicApplication30JSContainerDetailModelResponse_storeItemMetadataResults];
  v10 = a3;
  v11 = self;
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