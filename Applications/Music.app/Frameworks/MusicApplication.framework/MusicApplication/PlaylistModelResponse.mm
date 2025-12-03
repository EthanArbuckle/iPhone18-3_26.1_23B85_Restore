@interface PlaylistModelResponse
- (_TtC16MusicApplication21PlaylistModelResponse)initWithRequest:(id)request;
- (id)navigationHandlerForItemAt:(id)at sourceViewController:(id)controller;
- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)index responseHandler:(id)handler;
- (id)results;
- (void)getChangeDetailsFromPreviousResponse:(id)response completion:(id)completion;
@end

@implementation PlaylistModelResponse

- (id)results
{
  results = [*&self->MPModelResponse_opaque[OBJC_IVAR____TtC16MusicApplication21PlaylistModelResponse_underlyingModelResponse] results];

  return results;
}

- (void)getChangeDetailsFromPreviousResponse:(id)response completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_B5A4C;
  }

  else
  {
    v7 = 0;
  }

  responseCopy = response;
  selfCopy = self;
  sub_B5160(response, v6, v7);
  sub_17654(v6);
}

- (id)newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:(int64_t)index responseHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  v9 = sub_B5614(index, sub_AACD4, v7);

  return v9;
}

- (_TtC16MusicApplication21PlaylistModelResponse)initWithRequest:(id)request
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)navigationHandlerForItemAt:(id)at sourceViewController:(id)controller
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  aBlock[6] = &OBJC_PROTOCOL____TtP16MusicApplication40ContainerDetailAlbumNavigationHandleable_;
  v11 = swift_dynamicCastObjCProtocolConditional();
  if (v11)
  {
    v12 = v11;
    atCopy = at;
    controllerCopy = controller;
    selfCopy = self;
    isa = sub_AB3770().super.isa;
    v17 = [v12 navigationHandlerForItemAt:isa sourceViewController:controllerCopy];
    (*(v8 + 8))(v10, v7);

    if (v17)
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v17;

      aBlock[4] = sub_2125B4;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_72;
      v19 = _Block_copy(aBlock);

      v20 = v19;
      goto LABEL_7;
    }
  }

  else
  {
    (*(v8 + 8))(v10, v7);
  }

  v20 = 0;
LABEL_7:

  return v20;
}

@end